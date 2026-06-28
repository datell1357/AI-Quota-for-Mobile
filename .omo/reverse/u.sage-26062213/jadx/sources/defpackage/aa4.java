package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aa4 extends u94 {
    public final li1 b;
    public String c;
    public boolean d;
    public final gx0 e;
    public ne1 f;
    public final ws2 g;
    public ow h;
    public final ws2 i;
    public long j;
    public float k;
    public float l;
    public final z94 m;

    public aa4(li1 li1Var) {
        this.b = li1Var;
        li1Var.i = new z94(this, 0);
        this.c = "";
        this.d = true;
        this.e = new gx0();
        this.f = ic0.D;
        this.g = ca.A(null);
        this.i = ca.A(new mn3(0L));
        this.j = 9205357640488583168L;
        this.k = 1.0f;
        this.l = 1.0f;
        this.m = new z94(this, 1);
    }

    @Override // defpackage.u94
    public final void a(kx0 kx0Var) {
        e(kx0Var, 1.0f, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(defpackage.kx0 r31, float r32, defpackage.ow r33) {
        /*
            Method dump skipped, instruction units count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aa4.e(kx0, float, ow):void");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Params: \tname: ");
        sb.append(this.c);
        sb.append("\n\tviewportWidth: ");
        ws2 ws2Var = this.i;
        sb.append(Float.intBitsToFloat((int) (((mn3) ws2Var.getValue()).a >> 32)));
        sb.append("\n\tviewportHeight: ");
        sb.append(Float.intBitsToFloat((int) (((mn3) ws2Var.getValue()).a & 4294967295L)));
        sb.append("\n");
        return sb.toString();
    }
}
