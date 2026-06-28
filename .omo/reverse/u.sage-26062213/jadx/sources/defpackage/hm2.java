package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hm2 {
    public md2 a;
    public int b;
    public ug2 c;
    public ug2 d;
    public boolean e;
    public final /* synthetic */ bo f;

    public hm2(bo boVar, md2 md2Var, int i, ug2 ug2Var, ug2 ug2Var2, boolean z) {
        this.f = boVar;
        this.a = md2Var;
        this.b = i;
        this.c = ug2Var;
        this.d = ug2Var2;
        this.e = z;
    }

    public final boolean a(int i, int i2) {
        ug2 ug2Var = this.c;
        int i3 = this.b;
        ld2 ld2Var = (ld2) ug2Var.n[i + i3];
        ld2 ld2Var2 = (ld2) this.d.n[i3 + i2];
        return nt1.g(ld2Var, ld2Var2) || ld2Var.getClass() == ld2Var2.getClass();
    }
}
