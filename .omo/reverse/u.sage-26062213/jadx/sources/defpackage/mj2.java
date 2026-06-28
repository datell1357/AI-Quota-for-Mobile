package defpackage;

import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mj2 extends qj2 {
    public final Class k;

    public mj2(Class cls) {
        super(true);
        if (!Parcelable.class.isAssignableFrom(cls)) {
            p61.g(cls, " does not implement Parcelable.");
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
        return (Parcelable[]) bundle.get(str);
    }

    @Override // defpackage.qj2
    public final String b() {
        return this.k.getName();
    }

    @Override // defpackage.qj2
    public final Object d(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    @Override // defpackage.qj2
    public final void e(Bundle bundle, String str, Object obj) {
        Parcelable[] parcelableArr = (Parcelable[]) obj;
        str.getClass();
        this.k.cast(parcelableArr);
        bundle.putParcelableArray(str, parcelableArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !mj2.class.equals(obj.getClass())) {
            return false;
        }
        return nt1.g(this.k, ((mj2) obj).k);
    }

    @Override // defpackage.qj2
    public final boolean f(Object obj, Object obj2) {
        return ji.L((Parcelable[]) obj, (Parcelable[]) obj2);
    }

    public final int hashCode() {
        return this.k.hashCode();
    }
}
