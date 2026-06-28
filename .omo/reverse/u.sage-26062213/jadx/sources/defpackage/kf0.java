package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kf0 {
    public final Uri a;
    public final boolean b;

    public kf0(boolean z, Uri uri) {
        this.a = uri;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!kf0.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        kf0 kf0Var = (kf0) obj;
        return this.a.equals(kf0Var.a) && this.b == kf0Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }
}
