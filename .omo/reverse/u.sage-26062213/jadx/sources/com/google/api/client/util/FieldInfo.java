package com.google.api.client.util;

import defpackage.qn0;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class FieldInfo {
    private static final Map<Field, FieldInfo> CACHE = new WeakHashMap();
    private final Field field;
    private final boolean isPrimitive;
    private final String name;
    private final Method[] setters;

    public FieldInfo(Field field, String str) {
        this.field = field;
        this.name = str == null ? null : str.intern();
        this.isPrimitive = Data.isPrimitive(getType());
        this.setters = settersMethodForField(field);
    }

    public static Object getFieldValue(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static FieldInfo of(Field field) {
        String strValue = null;
        if (field == null) {
            return null;
        }
        Map<Field, FieldInfo> map = CACHE;
        synchronized (map) {
            try {
                FieldInfo fieldInfo = map.get(field);
                boolean zIsEnumConstant = field.isEnumConstant();
                if (fieldInfo == null && (zIsEnumConstant || !Modifier.isStatic(field.getModifiers()))) {
                    if (zIsEnumConstant) {
                        Value value = (Value) field.getAnnotation(Value.class);
                        if (value != null) {
                            strValue = value.value();
                        } else if (((NullValue) field.getAnnotation(NullValue.class)) == null) {
                            return null;
                        }
                    } else {
                        Key key = (Key) field.getAnnotation(Key.class);
                        if (key == null) {
                            return null;
                        }
                        strValue = key.value();
                        field.setAccessible(true);
                    }
                    if ("##default".equals(strValue)) {
                        strValue = field.getName();
                    }
                    fieldInfo = new FieldInfo(field, strValue);
                    map.put(field, fieldInfo);
                }
                return fieldInfo;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setFieldValue(Field field, Object obj, Object obj2) {
        if (!Modifier.isFinal(field.getModifiers())) {
            try {
                field.set(obj, obj2);
                return;
            } catch (IllegalAccessException e) {
                throw new IllegalArgumentException(e);
            } catch (SecurityException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        Object fieldValue = getFieldValue(field, obj);
        if (obj2 == null) {
            if (fieldValue == null) {
                return;
            }
        } else if (obj2.equals(fieldValue)) {
            return;
        }
        StringBuilder sb = new StringBuilder("expected final value <");
        sb.append(fieldValue);
        sb.append("> but was <");
        sb.append(obj2);
        String name = field.getName();
        String name2 = obj.getClass().getName();
        sb.append("> on ");
        sb.append(name);
        sb.append(" field in ");
        sb.append(name2);
        throw new IllegalArgumentException(sb.toString());
    }

    private Method[] settersMethodForField(Field field) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder("set");
        String strSubstring = field.getName().substring(0, 1);
        int length = strSubstring.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char cCharAt = strSubstring.charAt(i);
            if (cCharAt < 'a' || cCharAt > 'z') {
                i++;
            } else {
                char[] charArray = strSubstring.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (c >= 'a' && c <= 'z') {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                strSubstring = String.valueOf(charArray);
            }
        }
        sb.append(strSubstring);
        String string = sb.toString();
        if (field.getName().length() > 1) {
            string = string.concat(field.getName().substring(1));
        }
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (method.getParameterTypes().length == 1) {
                if (method.getName().equals(string)) {
                    arrayList.add(0, method);
                } else if (qn0.J(method.getName()).equals(qn0.J(string))) {
                    arrayList.add(method);
                }
            }
        }
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    public <T extends Enum<T>> T enumValue() {
        return (T) Enum.valueOf(this.field.getDeclaringClass(), this.field.getName());
    }

    public ClassInfo getClassInfo() {
        return ClassInfo.of(this.field.getDeclaringClass());
    }

    public Field getField() {
        return this.field;
    }

    public Type getGenericType() {
        return this.field.getGenericType();
    }

    public String getName() {
        return this.name;
    }

    public Class<?> getType() {
        return this.field.getType();
    }

    public Object getValue(Object obj) {
        return getFieldValue(this.field, obj);
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.field.getModifiers());
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public void setValue(Object obj, Object obj2) {
        for (Method method : this.setters) {
            if (obj2 == null || method.getParameterTypes()[0].isAssignableFrom(obj2.getClass())) {
                try {
                    method.invoke(obj, obj2);
                    return;
                } catch (IllegalAccessException | InvocationTargetException unused) {
                    continue;
                }
            }
        }
        setFieldValue(this.field, obj, obj2);
    }

    public static FieldInfo of(Enum<?> r3) {
        try {
            FieldInfo fieldInfoOf = of(r3.getClass().getField(r3.name()));
            Preconditions.checkArgument(fieldInfoOf != null, "enum constant missing @Value or @NullValue annotation: %s", r3);
            return fieldInfoOf;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }
}
