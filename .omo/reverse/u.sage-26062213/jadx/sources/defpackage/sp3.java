package defpackage;

import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sp3 extends zf5 {
    public final long h;

    public sp3(long j) {
        this.h = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof sp3) {
            return t70.c(this.h, ((sp3) obj).h);
        }
        return false;
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.h);
    }

    @Override // defpackage.zf5
    public final void j(float f, long j, lb lbVar) {
        lbVar.d(1.0f);
        long jB = this.h;
        if (f != 1.0f) {
            jB = t70.b(t70.d(jB) * f, jB);
        }
        lbVar.f(jB);
        if (((Shader) lbVar.p) != null) {
            lbVar.h(null);
        }
    }

    public final String toString() {
        return di0.v("SolidColor(value=", t70.i(this.h), ")");
    }
}
