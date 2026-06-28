package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lw extends gs2 {
    public final gb s;
    public final long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f192u = 1;
    public final long v;
    public float w;
    public ow x;

    public lw(gb gbVar, long j) {
        int i;
        this.s = gbVar;
        this.t = j;
        int i2 = (int) (j >> 32);
        if (i2 < 0 || (i = (int) (4294967295L & j)) < 0 || i2 > gbVar.a.getWidth() || i > gbVar.a.getHeight()) {
            k21.f("Failed requirement.");
            throw null;
        }
        this.v = j;
        this.w = 1.0f;
    }

    @Override // defpackage.gs2
    public final boolean b(float f) {
        this.w = f;
        return true;
    }

    @Override // defpackage.gs2
    public final boolean d(ow owVar) {
        this.x = owVar;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lw)) {
            return false;
        }
        lw lwVar = (lw) obj;
        return nt1.g(this.s, lwVar.s) && js1.a(0L, 0L) && rs1.a(this.t, lwVar.t) && this.f192u == lwVar.f192u;
    }

    @Override // defpackage.gs2
    public final long h() {
        return se0.H(this.v);
    }

    public final int hashCode() {
        return Integer.hashCode(this.f192u) + xw1.l(xw1.l(this.s.hashCode() * 31, 31, 0L), 31, this.t);
    }

    @Override // defpackage.gs2
    public final void i(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        kx0.P(zy1Var, this.s, this.t, (((long) Math.round(Float.intBitsToFloat((int) (x20Var.d() >> 32)))) << 32) | (((long) Math.round(Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)))) & 4294967295L), this.w, this.x, this.f192u, 328);
    }

    public final String toString() {
        String strD = js1.d(0L);
        String strB = rs1.b(this.t);
        int i = this.f192u;
        String str = i == 0 ? "None" : i == 1 ? "Low" : i == 2 ? "Medium" : i == 3 ? "High" : "Unknown";
        StringBuilder sb = new StringBuilder("BitmapPainter(image=");
        sb.append(this.s);
        sb.append(", srcOffset=");
        sb.append(strD);
        sb.append(", srcSize=");
        return xw1.t(sb, strB, ", filterQuality=", str, ")");
    }
}
