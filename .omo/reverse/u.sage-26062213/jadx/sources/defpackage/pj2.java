package defpackage;

import android.os.Bundle;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class pj2 extends qj2 {
    public final Class k;

    public pj2(Class cls) {
        super(true);
        if (!Serializable.class.isAssignableFrom(cls)) {
            p61.g(cls, " does not implement Serializable.");
            throw null;
        }
        if (cls.isEnum()) {
            p61.g(cls, " is an Enum. You should use EnumType instead.");
            throw null;
        }
        this.k = cls;
    }

    @Override // defpackage.qj2
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        return (Serializable) bundle.get(str);
    }

    @Override // defpackage.qj2
    public String b() {
        return this.k.getName();
    }

    @Override // defpackage.qj2
    public final void e(Bundle bundle, String str, Object obj) {
        Serializable serializable = (Serializable) obj;
        str.getClass();
        serializable.getClass();
        this.k.cast(serializable);
        bundle.putSerializable(str, serializable);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pj2)) {
            return false;
        }
        return nt1.g(this.k, ((pj2) obj).k);
    }

    @Override // defpackage.qj2
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public Serializable d(String str) {
        throw new UnsupportedOperationException("Serializables don't support default values.");
    }

    public final int hashCode() {
        return this.k.hashCode();
    }

    public pj2(Class cls, int i) {
        super(false);
        if (Serializable.class.isAssignableFrom(cls)) {
            this.k = cls;
        } else {
            p61.g(cls, " does not implement Serializable.");
            throw null;
        }
    }
}
