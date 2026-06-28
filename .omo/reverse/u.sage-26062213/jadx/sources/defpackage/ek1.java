package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ek1 {
    public final df1 a;
    public final /* synthetic */ int b;

    public ek1(int i, df1 df1Var) {
        this.b = i;
        this.a = df1Var;
    }

    public final float a(float f, gy1 gy1Var, gy1 gy1Var2) {
        switch (this.b) {
            case 0:
                return Float.intBitsToFloat((int) (gy1Var2.y(gy1Var, (((long) Float.floatToRawIntBits(f)) & 4294967295L) | (Float.floatToRawIntBits(((int) (gy1Var.I() >> 32)) / 2.0f) << 32)) & 4294967295L));
            default:
                return Float.intBitsToFloat((int) (gy1Var2.y(gy1Var, (((long) Float.floatToRawIntBits(((int) (gy1Var.I() & 4294967295L)) / 2.0f)) & 4294967295L) | (Float.floatToRawIntBits(f) << 32)) >> 32));
        }
    }
}
