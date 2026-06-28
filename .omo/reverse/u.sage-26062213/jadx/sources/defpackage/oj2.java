package defpackage;

import android.os.Bundle;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oj2 extends qj2 {
    public final Class k;

    public oj2(Class cls) {
        super(true);
        if (!Serializable.class.isAssignableFrom(cls)) {
            p61.g(cls, " does not implement Serializable.");
            throw null;
        }
        try {
            this.k = Class.forName("[L" + cls.getName() + ';');
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // defpackage.qj2
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        return (Serializable[]) bundle.get(str);
    }

    @Override // defpackage.qj2
    public final String b() {
        return this.k.getName();
    }

    @Override // defpackage.qj2
    public final Object d(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.Serializable, java.io.Serializable[], java.lang.Object] */
    @Override // defpackage.qj2
    public final void e(Bundle bundle, String str, Object obj) {
        ?? r3 = (Serializable[]) obj;
        str.getClass();
        this.k.cast(r3);
        bundle.putSerializable(str, r3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !oj2.class.equals(obj.getClass())) {
            return false;
        }
        return nt1.g(this.k, ((oj2) obj).k);
    }

    @Override // defpackage.qj2
    public final boolean f(Object obj, Object obj2) {
        return ji.L((Serializable[]) obj, (Serializable[]) obj2);
    }

    public final int hashCode() {
        return this.k.hashCode();
    }
}
