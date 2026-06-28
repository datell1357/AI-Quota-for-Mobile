package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nj2 extends qj2 {
    public final Class k;

    public nj2(Class cls) {
        super(true);
        if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
            this.k = cls;
        } else {
            p61.g(cls, " does not implement Parcelable or Serializable.");
            throw null;
        }
    }

    @Override // defpackage.qj2
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        return bundle.get(str);
    }

    @Override // defpackage.qj2
    public final String b() {
        return this.k.getName();
    }

    @Override // defpackage.qj2
    public final Object d(String str) {
        throw new UnsupportedOperationException("Parcelables don't support default values.");
    }

    @Override // defpackage.qj2
    public final void e(Bundle bundle, String str, Object obj) {
        str.getClass();
        this.k.cast(obj);
        if (obj == null || (obj instanceof Parcelable)) {
            bundle.putParcelable(str, (Parcelable) obj);
        } else if (obj instanceof Serializable) {
            bundle.putSerializable(str, (Serializable) obj);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !nj2.class.equals(obj.getClass())) {
            return false;
        }
        return nt1.g(this.k, ((nj2) obj).k);
    }

    public final int hashCode() {
        return this.k.hashCode();
    }
}
