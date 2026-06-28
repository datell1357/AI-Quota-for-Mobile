package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ga4 extends gs2 {
    public final ws2 s = ca.A(new mn3(0));
    public final ws2 t = ca.A(Boolean.FALSE);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final aa4 f109u;
    public final ws2 v;
    public float w;
    public ow x;

    public ga4(li1 li1Var) {
        aa4 aa4Var = new aa4(li1Var);
        aa4Var.f = new je(14, this);
        this.f109u = aa4Var;
        this.v = new ws2(t64.a, w13.J);
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

    @Override // defpackage.gs2
    public final long h() {
        return ((mn3) this.s.getValue()).a;
    }

    @Override // defpackage.gs2
    public final void i(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        ow owVar = this.x;
        aa4 aa4Var = this.f109u;
        if (owVar == null) {
            owVar = (ow) aa4Var.g.getValue();
        }
        if (((Boolean) this.t.getValue()).booleanValue() && zy1Var.getLayoutDirection() == hy1.o) {
            long jU = x20Var.U();
            eh ehVar = x20Var.o;
            long jZ = ehVar.z();
            ehVar.u().j();
            try {
                ((dh1) ehVar.o).s(-1.0f, 1.0f, jU);
                aa4Var.e(zy1Var, this.w, owVar);
            } finally {
                ehVar.u().h();
                ehVar.K(jZ);
            }
        } else {
            aa4Var.e(zy1Var, this.w, owVar);
        }
        this.v.getValue();
    }
}
