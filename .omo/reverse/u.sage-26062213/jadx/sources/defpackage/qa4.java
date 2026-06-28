package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qa4 extends md2 implements jx0 {
    public j14 B;
    public o11 C;
    public y31 D;
    public zl3 E;

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        zy1Var.a();
        j14 j14Var = this.B;
        pa4 pa4Var = new pa4(this, 0);
        zl3 zl3Var = this.E;
        i14 i14VarA = j14Var.a(pa4Var, zl3Var.a() ? new t70(zl3Var.e) : null, null, new pa4(this, 1));
        zl3 zl3Var2 = this.E;
        long j = ((t70) i14VarA.getValue()).a;
        dh dhVar = zl3Var2.c;
        if (zl3Var2.b() && ((Boolean) ((ws2) dhVar.g).getValue()).booleanValue()) {
            j = ((t70) ((ws2) dhVar.h).getValue()).a;
        }
        long j2 = j;
        if (zl3Var2.b()) {
            zl3Var2.e = j2;
        }
        if (t70.d(j2) == 0.0f) {
            return;
        }
        o14 o14Var = this.C.a;
        o14 o14Var2 = this.D.a;
        kx0.C(zy1Var, j2, 0L, 126);
    }
}
