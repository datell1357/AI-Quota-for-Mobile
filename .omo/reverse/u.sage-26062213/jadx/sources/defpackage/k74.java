package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k74 extends m74 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k74(Unsafe unsafe, int i) {
        super(unsafe);
        this.b = i;
    }

    @Override // defpackage.m74
    public final boolean c(long j, Object obj) {
        switch (this.b) {
            case 0:
                if (!n74.g) {
                }
                break;
            default:
                if (!n74.g) {
                }
                break;
        }
        return n74.c(j, obj);
    }

    @Override // defpackage.m74
    public final double d(long j, Object obj) {
        switch (this.b) {
        }
        return Double.longBitsToDouble(g(j, obj));
    }

    @Override // defpackage.m74
    public final float e(long j, Object obj) {
        switch (this.b) {
        }
        return Float.intBitsToFloat(f(j, obj));
    }

    @Override // defpackage.m74
    public final void j(Object obj, long j, boolean z) {
        switch (this.b) {
            case 0:
                if (!n74.g) {
                    n74.l(obj, j, z ? (byte) 1 : (byte) 0);
                } else {
                    n74.k(obj, j, z ? (byte) 1 : (byte) 0);
                }
                break;
            default:
                if (!n74.g) {
                    n74.l(obj, j, z ? (byte) 1 : (byte) 0);
                } else {
                    n74.k(obj, j, z ? (byte) 1 : (byte) 0);
                }
                break;
        }
    }

    @Override // defpackage.m74
    public final void k(Object obj, long j, byte b) {
        switch (this.b) {
            case 0:
                if (!n74.g) {
                    n74.l(obj, j, b);
                } else {
                    n74.k(obj, j, b);
                }
                break;
            default:
                if (!n74.g) {
                    n74.l(obj, j, b);
                } else {
                    n74.k(obj, j, b);
                }
                break;
        }
    }

    @Override // defpackage.m74
    public final void l(Object obj, long j, double d) {
        switch (this.b) {
            case 0:
                o(obj, j, Double.doubleToLongBits(d));
                break;
            default:
                o(obj, j, Double.doubleToLongBits(d));
                break;
        }
    }

    @Override // defpackage.m74
    public final void m(Object obj, long j, float f) {
        switch (this.b) {
            case 0:
                n(obj, j, Float.floatToIntBits(f));
                break;
            default:
                n(obj, j, Float.floatToIntBits(f));
                break;
        }
    }

    @Override // defpackage.m74
    public final boolean r() {
        switch (this.b) {
        }
        return false;
    }
}
