package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ec3 implements m53 {
    public bd3 n;
    public ic3 o;
    public String p;
    public Object q;
    public Object[] r;
    public hc3 s;
    public final cc t = new cc(27, this);

    public ec3(bd3 bd3Var, ic3 ic3Var, String str, Object obj, Object[] objArr) {
        this.n = bd3Var;
        this.o = ic3Var;
        this.p = str;
        this.q = obj;
        this.r = objArr;
    }

    @Override // defpackage.m53
    public final void a() throws Exception {
        b();
    }

    public final void b() throws Exception {
        String strM0;
        ic3 ic3Var = this.o;
        hc3 hc3Var = this.s;
        if (hc3Var != null) {
            p61.h(hc3Var, ") is not null", "entry(");
            return;
        }
        if (ic3Var != null) {
            cc ccVar = this.t;
            Object objA = ccVar.a();
            if (objA == null || ic3Var.b(objA)) {
                this.s = ic3Var.a(this.p, ccVar);
                return;
            }
            if (objA instanceof ap3) {
                ap3 ap3Var = (ap3) objA;
                if (ap3Var.b() == w13.J || ap3Var.b() == w13.S || ap3Var.b() == w13.P) {
                    strM0 = "MutableState containing " + ap3Var.getValue() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
                } else {
                    strM0 = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
                }
            } else {
                strM0 = n44.m0(objA);
            }
            throw new IllegalArgumentException(strM0);
        }
    }

    @Override // defpackage.m53
    public final void c() {
        hc3 hc3Var = this.s;
        if (hc3Var != null) {
            ((eh) hc3Var).L();
        }
    }

    @Override // defpackage.m53
    public final void e() {
        hc3 hc3Var = this.s;
        if (hc3Var != null) {
            ((eh) hc3Var).L();
        }
    }
}
