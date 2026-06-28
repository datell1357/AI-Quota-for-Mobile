package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pf2 extends cl0 {
    public final void g(uv2 uv2Var, int i) {
        float[] fArr = this.a;
        int i2 = i + 1;
        long j = uv2Var.j(fArr[i], fArr[i2]);
        fArr[i] = Float.intBitsToFloat((int) (j >> 32));
        fArr[i2] = Float.intBitsToFloat((int) (4294967295L & j));
    }
}
