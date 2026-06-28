package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ez1 implements eb2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Map c;
    public final /* synthetic */ pe1 d;
    public final /* synthetic */ fz1 e;
    public final /* synthetic */ lz1 f;
    public final /* synthetic */ pe1 g;

    public ez1(int i, int i2, Map map, pe1 pe1Var, fz1 fz1Var, lz1 lz1Var, pe1 pe1Var2) {
        this.a = i;
        this.b = i2;
        this.c = map;
        this.d = pe1Var;
        this.e = fz1Var;
        this.f = lz1Var;
        this.g = pe1Var2;
    }

    @Override // defpackage.eb2
    public final int a() {
        return this.b;
    }

    @Override // defpackage.eb2
    public final int b() {
        return this.a;
    }

    @Override // defpackage.eb2
    public final Map c() {
        return this.c;
    }

    @Override // defpackage.eb2
    public final void d() {
        fr1 fr1Var;
        xy1 xy1Var = this.f.n;
        boolean zQ = this.e.q();
        pe1 pe1Var = this.g;
        if (!zQ || (fr1Var = ((gr1) xy1Var.S.d).i0) == null) {
            pe1Var.k(((gr1) xy1Var.S.d).C);
        } else {
            pe1Var.k(fr1Var.C);
        }
    }

    @Override // defpackage.eb2
    public final pe1 f() {
        return this.d;
    }
}
