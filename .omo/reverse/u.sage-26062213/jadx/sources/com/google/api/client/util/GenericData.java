package com.google.api.client.util;

import com.google.api.client.util.DataMap;
import defpackage.p61;
import defpackage.xw1;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class GenericData extends AbstractMap<String, Object> implements Cloneable {
    final ClassInfo classInfo;
    Map<String, Object> unknownFields;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public final class EntryIterator implements Iterator<Map.Entry<String, Object>> {
        private final Iterator<Map.Entry<String, Object>> fieldIterator;
        private boolean startedUnknown;
        private final Iterator<Map.Entry<String, Object>> unknownIterator;

        public EntryIterator(DataMap.EntrySet entrySet) {
            this.fieldIterator = entrySet.iterator();
            this.unknownIterator = GenericData.this.unknownFields.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.fieldIterator.hasNext() || this.unknownIterator.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<String, Object> next() {
            if (!this.startedUnknown) {
                if (this.fieldIterator.hasNext()) {
                    return this.fieldIterator.next();
                }
                this.startedUnknown = true;
            }
            return this.unknownIterator.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.startedUnknown) {
                this.unknownIterator.remove();
            }
            this.fieldIterator.remove();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public final class EntrySet extends AbstractSet<Map.Entry<String, Object>> {
        private final DataMap.EntrySet dataEntrySet;

        public EntrySet() {
            this.dataEntrySet = new DataMap(GenericData.this, GenericData.this.classInfo.getIgnoreCase()).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            GenericData.this.unknownFields.clear();
            this.dataEntrySet.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<String, Object>> iterator() {
            return GenericData.this.new EntryIterator(this.dataEntrySet);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return GenericData.this.unknownFields.size() + this.dataEntrySet.size();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public enum Flags {
        IGNORE_CASE
    }

    public GenericData(EnumSet<Flags> enumSet) {
        this.unknownFields = ArrayMap.create();
        this.classInfo = ClassInfo.of(getClass(), enumSet.contains(Flags.IGNORE_CASE));
    }

    @Override // java.util.AbstractMap
    public GenericData clone() {
        try {
            GenericData genericData = (GenericData) super.clone();
            Data.deepCopy(this, genericData);
            genericData.unknownFields = (Map) Data.clone(this.unknownFields);
            return genericData;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new EntrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof GenericData)) {
            GenericData genericData = (GenericData) obj;
            if (super.equals(genericData) && this.classInfo == genericData.classInfo) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String lowerCase = (String) obj;
        FieldInfo fieldInfo = this.classInfo.getFieldInfo(lowerCase);
        if (fieldInfo != null) {
            return fieldInfo.getValue(this);
        }
        if (this.classInfo.getIgnoreCase()) {
            lowerCase = lowerCase.toLowerCase(Locale.US);
        }
        return this.unknownFields.get(lowerCase);
    }

    public final ClassInfo getClassInfo() {
        return this.classInfo;
    }

    public final Map<String, Object> getUnknownKeys() {
        return this.unknownFields;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return java.util.Objects.hash(Integer.valueOf(super.hashCode()), this.classInfo);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(String str, Object obj) {
        FieldInfo fieldInfo = this.classInfo.getFieldInfo(str);
        if (fieldInfo != null) {
            Object value = fieldInfo.getValue(this);
            fieldInfo.setValue(this, obj);
            return value;
        }
        if (this.classInfo.getIgnoreCase()) {
            str = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.put(str, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            set(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String lowerCase = (String) obj;
        if (this.classInfo.getFieldInfo(lowerCase) != null) {
            p61.b();
            return null;
        }
        if (this.classInfo.getIgnoreCase()) {
            lowerCase = lowerCase.toLowerCase(Locale.US);
        }
        return this.unknownFields.remove(lowerCase);
    }

    public GenericData set(String str, Object obj) {
        FieldInfo fieldInfo = this.classInfo.getFieldInfo(str);
        if (fieldInfo != null) {
            fieldInfo.setValue(this, obj);
            return this;
        }
        if (this.classInfo.getIgnoreCase()) {
            str = str.toLowerCase(Locale.US);
        }
        this.unknownFields.put(str, obj);
        return this;
    }

    public final void setUnknownKeys(Map<String, Object> map) {
        this.unknownFields = map;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        StringBuilder sb = new StringBuilder("GenericData{classInfo=");
        sb.append(this.classInfo.names);
        sb.append(", ");
        return xw1.s(sb, super.toString(), "}");
    }

    public GenericData() {
        this(EnumSet.noneOf(Flags.class));
    }
}
