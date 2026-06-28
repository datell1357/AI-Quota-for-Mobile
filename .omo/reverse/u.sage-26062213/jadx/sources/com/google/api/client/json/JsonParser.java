package com.google.api.client.json;

import com.google.android.gms.common.ConnectionResult;
import com.google.api.client.json.JsonPolymorphicTypeMap;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sets;
import com.google.api.client.util.Types;
import defpackage.k21;
import java.io.Closeable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class JsonParser implements Closeable {
    private static WeakHashMap<Class<?>, Field> cachedTypemapFields = new WeakHashMap<>();
    private static final Lock lock = new ReentrantLock();

    /* JADX INFO: renamed from: com.google.api.client.json.JsonParser$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$api$client$json$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$api$client$json$JsonToken = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.END_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.END_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private static Field getCachedTypemapFieldFor(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        Lock lock2 = lock;
        lock2.lock();
        try {
            if (cachedTypemapFields.containsKey(cls)) {
                Field field2 = cachedTypemapFields.get(cls);
                lock2.unlock();
                return field2;
            }
            Iterator<FieldInfo> it = ClassInfo.of(cls).getFieldInfos().iterator();
            while (it.hasNext()) {
                Field field3 = it.next().getField();
                JsonPolymorphicTypeMap jsonPolymorphicTypeMap = (JsonPolymorphicTypeMap) field3.getAnnotation(JsonPolymorphicTypeMap.class);
                if (jsonPolymorphicTypeMap != null) {
                    boolean z = true;
                    Preconditions.checkArgument(field == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    Preconditions.checkArgument(Data.isPrimitive(field3.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, field3.getType());
                    JsonPolymorphicTypeMap.TypeDef[] typeDefArrTypeDefinitions = jsonPolymorphicTypeMap.typeDefinitions();
                    HashSet hashSetNewHashSet = Sets.newHashSet();
                    if (typeDefArrTypeDefinitions.length <= 0) {
                        z = false;
                    }
                    Preconditions.checkArgument(z, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (JsonPolymorphicTypeMap.TypeDef typeDef : typeDefArrTypeDefinitions) {
                        Preconditions.checkArgument(hashSetNewHashSet.add(typeDef.key()), "Class contains two @TypeDef annotations with identical key: %s", typeDef.key());
                    }
                    field = field3;
                }
            }
            cachedTypemapFields.put(cls, field);
            return field;
        } finally {
            lock.unlock();
        }
    }

    private void parse(ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser) {
        if (obj instanceof GenericJson) {
            ((GenericJson) obj).setFactory(getFactory());
        }
        JsonToken jsonTokenStartParsingObjectOrArray = startParsingObjectOrArray();
        Class<?> cls = obj.getClass();
        ClassInfo classInfoOf = ClassInfo.of(cls);
        boolean zIsAssignableFrom = GenericData.class.isAssignableFrom(cls);
        if (!zIsAssignableFrom && Map.class.isAssignableFrom(cls)) {
            parseMap(null, (Map) obj, Types.getMapValueParameter(cls), arrayList, customizeJsonParser);
            return;
        }
        while (jsonTokenStartParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser != null && customizeJsonParser.stopAt(obj, text)) {
                return;
            }
            FieldInfo fieldInfo = classInfoOf.getFieldInfo(text);
            if (fieldInfo != null) {
                if (fieldInfo.isFinal() && !fieldInfo.isPrimitive()) {
                    k21.f("final array/object fields are not supported");
                    return;
                }
                Field field = fieldInfo.getField();
                int size = arrayList.size();
                arrayList.add(field.getGenericType());
                Object value = parseValue(field, fieldInfo.getGenericType(), arrayList, obj, customizeJsonParser, true);
                arrayList.remove(size);
                fieldInfo.setValue(obj, value);
            } else if (zIsAssignableFrom) {
                ((GenericData) obj).set(text, parseValue(null, null, arrayList, obj, customizeJsonParser, true));
            } else {
                if (customizeJsonParser != null) {
                    customizeJsonParser.handleUnrecognizedKey(obj, text);
                }
                skipChildren();
            }
            jsonTokenStartParsingObjectOrArray = nextToken();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void parseArray(Field field, Collection<T> collection, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) {
        JsonToken jsonTokenStartParsingObjectOrArray = startParsingObjectOrArray();
        while (jsonTokenStartParsingObjectOrArray != JsonToken.END_ARRAY) {
            JsonParser jsonParser = this;
            collection.add(jsonParser.parseValue(field, type, arrayList, collection, customizeJsonParser, true));
            jsonTokenStartParsingObjectOrArray = jsonParser.nextToken();
            this = jsonParser;
        }
    }

    private void parseMap(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) {
        JsonToken jsonTokenStartParsingObjectOrArray = startParsingObjectOrArray();
        while (jsonTokenStartParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = this.getText();
            this.nextToken();
            if (customizeJsonParser != null && customizeJsonParser.stopAt(map, text)) {
                return;
            }
            JsonParser jsonParser = this;
            map.put(text, jsonParser.parseValue(field, type, arrayList, map, customizeJsonParser, true));
            jsonTokenStartParsingObjectOrArray = jsonParser.nextToken();
            this = jsonParser;
        }
    }

    private final Object parseValue(Field field, Type type, ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser, boolean z) {
        JsonParser jsonParser;
        int i;
        Class<?> cls;
        Class<?> cls2;
        Class<?> clsRef;
        Field field2 = field;
        Type typeResolveWildcardTypeOrTypeVariable = Data.resolveWildcardTypeOrTypeVariable(arrayList, type);
        Class<?> rawClass = typeResolveWildcardTypeOrTypeVariable instanceof Class ? (Class) typeResolveWildcardTypeOrTypeVariable : null;
        if (typeResolveWildcardTypeOrTypeVariable instanceof ParameterizedType) {
            rawClass = Types.getRawClass((ParameterizedType) typeResolveWildcardTypeOrTypeVariable);
        }
        if (rawClass == Void.class) {
            skipChildren();
            return null;
        }
        JsonToken currentToken = getCurrentToken();
        try {
            i = AnonymousClass1.$SwitchMap$com$google$api$client$json$JsonToken[currentToken.ordinal()];
            cls = Double.TYPE;
            cls2 = Float.TYPE;
            try {
            } catch (IllegalArgumentException e) {
                e = e;
                jsonParser = this;
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            jsonParser = this;
        }
        switch (i) {
            case 1:
            case 4:
            case 5:
                Preconditions.checkArgument(!Types.isArray(typeResolveWildcardTypeOrTypeVariable), "expected object or map type but got %s", typeResolveWildcardTypeOrTypeVariable);
                Field cachedTypemapFieldFor = z ? getCachedTypemapFieldFor(rawClass) : null;
                Object objNewInstanceForObject = (rawClass == null || customizeJsonParser == null) ? null : customizeJsonParser.newInstanceForObject(obj, rawClass);
                boolean z2 = rawClass != null && Types.isAssignableToOrFrom(rawClass, Map.class);
                if (cachedTypemapFieldFor != null) {
                    objNewInstanceForObject = new GenericJson();
                } else if (objNewInstanceForObject == null) {
                    objNewInstanceForObject = (z2 || rawClass == null) ? Data.newMapInstance(rawClass) : Types.newInstance(rawClass);
                }
                int size = arrayList.size();
                if (typeResolveWildcardTypeOrTypeVariable != null) {
                    arrayList.add(typeResolveWildcardTypeOrTypeVariable);
                }
                if (z2 && !GenericData.class.isAssignableFrom(rawClass)) {
                    Type mapValueParameter = Map.class.isAssignableFrom(rawClass) ? Types.getMapValueParameter(typeResolveWildcardTypeOrTypeVariable) : null;
                    if (mapValueParameter != null) {
                        parseMap(field, (Map) objNewInstanceForObject, mapValueParameter, arrayList, customizeJsonParser);
                        return objNewInstanceForObject;
                    }
                }
                jsonParser = this;
                try {
                    jsonParser.parse(arrayList, objNewInstanceForObject, customizeJsonParser);
                    if (typeResolveWildcardTypeOrTypeVariable != null) {
                        arrayList.remove(size);
                    }
                    if (cachedTypemapFieldFor == null) {
                        return objNewInstanceForObject;
                    }
                    Object obj2 = ((GenericJson) objNewInstanceForObject).get(cachedTypemapFieldFor.getName());
                    Preconditions.checkArgument(obj2 != null, "No value specified for @JsonPolymorphicTypeMap field");
                    String string = obj2.toString();
                    JsonPolymorphicTypeMap.TypeDef[] typeDefArrTypeDefinitions = ((JsonPolymorphicTypeMap) cachedTypemapFieldFor.getAnnotation(JsonPolymorphicTypeMap.class)).typeDefinitions();
                    int length = typeDefArrTypeDefinitions.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            JsonPolymorphicTypeMap.TypeDef typeDef = typeDefArrTypeDefinitions[i2];
                            if (typeDef.key().equals(string)) {
                                clsRef = typeDef.ref();
                            } else {
                                i2++;
                            }
                        } else {
                            clsRef = null;
                        }
                    }
                    Preconditions.checkArgument(clsRef != null, "No TypeDef annotation found with key: " + string);
                    JsonFactory factory = jsonParser.getFactory();
                    JsonParser jsonParserCreateJsonParser = factory.createJsonParser(factory.toString(objNewInstanceForObject));
                    jsonParserCreateJsonParser.startParsing();
                    try {
                        return jsonParserCreateJsonParser.parseValue(field, clsRef, arrayList, null, null, false);
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        field2 = field;
                    }
                } catch (IllegalArgumentException e4) {
                    e = e4;
                    field2 = field;
                }
                StringBuilder sb = new StringBuilder();
                String currentName = jsonParser.getCurrentName();
                if (currentName != null) {
                    sb.append("key ");
                    sb.append(currentName);
                }
                if (field2 != null) {
                    if (currentName != null) {
                        sb.append(", ");
                    }
                    sb.append("field ");
                    sb.append(field2);
                }
                throw new IllegalArgumentException(sb.toString(), e);
            case 2:
            case 3:
                boolean zIsArray = Types.isArray(typeResolveWildcardTypeOrTypeVariable);
                Preconditions.checkArgument(typeResolveWildcardTypeOrTypeVariable == null || zIsArray || (rawClass != null && Types.isAssignableToOrFrom(rawClass, Collection.class)), "expected collection or array type but got %s", typeResolveWildcardTypeOrTypeVariable);
                Collection<Object> collectionNewInstanceForArray = (customizeJsonParser == null || field2 == null) ? null : customizeJsonParser.newInstanceForArray(obj, field2);
                if (collectionNewInstanceForArray == null) {
                    collectionNewInstanceForArray = Data.newCollectionInstance(typeResolveWildcardTypeOrTypeVariable);
                }
                Collection<Object> collection = collectionNewInstanceForArray;
                Type typeResolveWildcardTypeOrTypeVariable2 = Data.resolveWildcardTypeOrTypeVariable(arrayList, zIsArray ? Types.getArrayComponentType(typeResolveWildcardTypeOrTypeVariable) : (rawClass == null || !Iterable.class.isAssignableFrom(rawClass)) ? null : Types.getIterableParameter(typeResolveWildcardTypeOrTypeVariable));
                parseArray(field2, collection, typeResolveWildcardTypeOrTypeVariable2, arrayList, customizeJsonParser);
                return zIsArray ? Types.toArray(collection, Types.getRawArrayComponentType(arrayList, typeResolveWildcardTypeOrTypeVariable2)) : collection;
            case 6:
            case 7:
                Preconditions.checkArgument(typeResolveWildcardTypeOrTypeVariable == null || rawClass == Boolean.TYPE || (rawClass != null && rawClass.isAssignableFrom(Boolean.class)), "expected type Boolean or boolean but got %s", typeResolveWildcardTypeOrTypeVariable);
                return currentToken == JsonToken.VALUE_TRUE ? Boolean.TRUE : Boolean.FALSE;
            case 8:
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                Preconditions.checkArgument(field2 == null || field2.getAnnotation(JsonString.class) == null, "number type formatted as a JSON number cannot use @JsonString annotation");
                if (rawClass != null && !rawClass.isAssignableFrom(BigDecimal.class)) {
                    if (rawClass == BigInteger.class) {
                        return getBigIntegerValue();
                    }
                    if (rawClass != Double.class && rawClass != cls) {
                        if (rawClass != Long.class && rawClass != Long.TYPE) {
                            if (rawClass != Float.class && rawClass != cls2) {
                                if (rawClass != Integer.class && rawClass != Integer.TYPE) {
                                    if (rawClass != Short.class && rawClass != Short.TYPE) {
                                        if (rawClass != Byte.class && rawClass != Byte.TYPE) {
                                            throw new IllegalArgumentException("expected numeric type but got " + typeResolveWildcardTypeOrTypeVariable);
                                        }
                                        return Byte.valueOf(getByteValue());
                                    }
                                    return Short.valueOf(getShortValue());
                                }
                                return Integer.valueOf(getIntValue());
                            }
                            return Float.valueOf(getFloatValue());
                        }
                        return Long.valueOf(getLongValue());
                    }
                    return Double.valueOf(getDoubleValue());
                }
                return getDecimalValue();
            case 10:
                String lowerCase = getText().trim().toLowerCase(Locale.US);
                if ((rawClass != cls2 && rawClass != Float.class && rawClass != cls && rawClass != Double.class) || (!lowerCase.equals("nan") && !lowerCase.equals("infinity") && !lowerCase.equals("-infinity"))) {
                    Preconditions.checkArgument((rawClass != null && Number.class.isAssignableFrom(rawClass) && (field2 == null || field2.getAnnotation(JsonString.class) == null)) ? false : true, "number field formatted as a JSON string must use the @JsonString annotation");
                }
                return Data.parsePrimitiveValue(typeResolveWildcardTypeOrTypeVariable, getText());
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                Preconditions.checkArgument(rawClass == null || !rawClass.isPrimitive(), "primitive number field but found a JSON null");
                if (rawClass != null && (rawClass.getModifiers() & 1536) != 0) {
                    if (Types.isAssignableToOrFrom(rawClass, Collection.class)) {
                        return Data.nullOf(Data.newCollectionInstance(typeResolveWildcardTypeOrTypeVariable).getClass());
                    }
                    if (Types.isAssignableToOrFrom(rawClass, Map.class)) {
                        return Data.nullOf(Data.newMapInstance(rawClass).getClass());
                    }
                }
                return Data.nullOf(Types.getRawArrayComponentType(arrayList, typeResolveWildcardTypeOrTypeVariable));
            default:
                throw new IllegalArgumentException("unexpected JSON node type: " + currentToken);
        }
    }

    private JsonToken startParsing() {
        JsonToken currentToken = getCurrentToken();
        if (currentToken == null) {
            currentToken = nextToken();
        }
        Preconditions.checkArgument(currentToken != null, "no JSON input found");
        return currentToken;
    }

    private JsonToken startParsingObjectOrArray() {
        JsonToken jsonTokenStartParsing = startParsing();
        int i = AnonymousClass1.$SwitchMap$com$google$api$client$json$JsonToken[jsonTokenStartParsing.ordinal()];
        boolean z = true;
        if (i != 1) {
            return i != 2 ? jsonTokenStartParsing : nextToken();
        }
        JsonToken jsonTokenNextToken = nextToken();
        if (jsonTokenNextToken != JsonToken.FIELD_NAME && jsonTokenNextToken != JsonToken.END_OBJECT) {
            z = false;
        }
        Preconditions.checkArgument(z, jsonTokenNextToken);
        return jsonTokenNextToken;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract BigInteger getBigIntegerValue();

    public abstract byte getByteValue();

    public abstract String getCurrentName();

    public abstract JsonToken getCurrentToken();

    public abstract BigDecimal getDecimalValue();

    public abstract double getDoubleValue();

    public abstract JsonFactory getFactory();

    public abstract float getFloatValue();

    public abstract int getIntValue();

    public abstract long getLongValue();

    public abstract short getShortValue();

    public abstract String getText();

    public abstract JsonToken nextToken();

    public final <T> T parseAndClose(Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        try {
            return (T) parse((Class) cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) {
        try {
            return parseArray(cls, cls2, customizeJsonParser);
        } finally {
            close();
        }
    }

    public abstract JsonParser skipChildren();

    public final String skipToKey(Set<String> set) {
        JsonToken jsonTokenStartParsingObjectOrArray = startParsingObjectOrArray();
        while (jsonTokenStartParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (set.contains(text)) {
                return text;
            }
            skipChildren();
            jsonTokenStartParsingObjectOrArray = nextToken();
        }
        return null;
    }

    public final <T> T parseAndClose(Class<T> cls) {
        return (T) parseAndClose((Class) cls, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2) {
        return parseArrayAndClose(cls, cls2, (CustomizeJsonParser) null);
    }

    public final void parseAndClose(Object obj) {
        parseAndClose(obj, (CustomizeJsonParser) null);
    }

    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls) {
        parseArrayAndClose(collection, cls, (CustomizeJsonParser) null);
    }

    public final void parseAndClose(Object obj, CustomizeJsonParser customizeJsonParser) {
        try {
            parse(obj, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        try {
            parseArray(collection, cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) {
        Collection<T> collection = (Collection<T>) Data.newCollectionInstance(cls);
        parseArray(collection, cls2, customizeJsonParser);
        return collection;
    }

    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls) {
        parseArray(collection, cls, (CustomizeJsonParser) null);
    }

    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        parseArray(null, collection, cls, new ArrayList<>(), customizeJsonParser);
    }

    public final void skipToKey(String str) {
        skipToKey(Collections.singleton(str));
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2) {
        return parseArray(cls, cls2, (CustomizeJsonParser) null);
    }

    public final <T> T parse(Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        return (T) parse((Type) cls, false, customizeJsonParser);
    }

    public Object parse(Type type, boolean z) {
        return parse(type, z, (CustomizeJsonParser) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(java.lang.reflect.Type r9, boolean r10, com.google.api.client.json.CustomizeJsonParser r11) throws java.lang.Throwable {
        /*
            r8 = this;
            java.lang.Class<java.lang.Void> r0 = java.lang.Void.class
            boolean r0 = r0.equals(r9)     // Catch: java.lang.Throwable -> L28
            if (r0 != 0) goto L10
            r8.startParsing()     // Catch: java.lang.Throwable -> Lc
            goto L10
        Lc:
            r0 = move-exception
            r9 = r0
            r1 = r8
            goto L2b
        L10:
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L28
            r4.<init>()     // Catch: java.lang.Throwable -> L28
            r5 = 0
            r7 = 1
            r2 = 0
            r1 = r8
            r3 = r9
            r6 = r11
            java.lang.Object r8 = r1.parseValue(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L25
            if (r10 == 0) goto L24
            r1.close()
        L24:
            return r8
        L25:
            r0 = move-exception
        L26:
            r9 = r0
            goto L2b
        L28:
            r0 = move-exception
            r1 = r8
            goto L26
        L2b:
            if (r10 == 0) goto L30
            r1.close()
        L30:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.json.JsonParser.parse(java.lang.reflect.Type, boolean, com.google.api.client.json.CustomizeJsonParser):java.lang.Object");
    }

    public final void parse(Object obj) {
        parse(obj, (CustomizeJsonParser) null);
    }

    public final void parse(Object obj, CustomizeJsonParser customizeJsonParser) {
        ArrayList<Type> arrayList = new ArrayList<>();
        arrayList.add(obj.getClass());
        parse(arrayList, obj, customizeJsonParser);
    }

    public final <T> T parse(Class<T> cls) {
        return (T) parse((Class) cls, (CustomizeJsonParser) null);
    }
}
