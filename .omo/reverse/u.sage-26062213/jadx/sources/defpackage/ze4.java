package defpackage;

import android.graphics.Rect;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ze4 {
    public final kx a;
    public final float b;

    public ze4(Rect rect, float f) {
        this.a = new kx(rect);
        this.b = f;
    }

    public final Rect a() {
        kx kxVar = this.a;
        kxVar.getClass();
        return new Rect(kxVar.a, kxVar.b, kxVar.c, kxVar.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!ze4.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        ze4 ze4Var = (ze4) obj;
        return nt1.g(this.a, ze4Var.a) && this.b == ze4Var.b;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "WindowMetrics(_bounds=" + this.a + ", density=" + this.b + ')';
    }

    public ze4(kx kxVar, float f) {
        this.a = kxVar;
        this.b = f;
    }
}
