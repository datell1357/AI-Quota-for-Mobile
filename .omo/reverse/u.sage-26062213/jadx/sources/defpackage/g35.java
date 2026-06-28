package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g35 extends pp4 {
    @Override // defpackage.pp4
    public final double a(long j, Object obj) {
        return Double.longBitsToDouble(this.a.getLong(obj, j));
    }

    @Override // defpackage.pp4
    public final float c(long j, Object obj) {
        return Float.intBitsToFloat(this.a.getInt(obj, j));
    }

    @Override // defpackage.pp4
    public final void e(Object obj, long j, boolean z) {
        if (i35.f) {
            i35.f(obj, j, z);
        } else {
            i35.g(obj, j, z);
        }
    }

    @Override // defpackage.pp4
    public final void g(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.pp4
    public final void h(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.pp4
    public final boolean j(long j, Object obj) {
        return i35.f ? i35.k(j, obj) : i35.l(j, obj);
    }
}
