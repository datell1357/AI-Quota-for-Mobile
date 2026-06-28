package defpackage;

import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mh4 implements yb0, n22 {
    public final q9 n;
    public final ec0 o;
    public boolean p;
    public h22 q;
    public df1 r = qa0.a;

    public mh4(q9 q9Var, ec0 ec0Var) {
        this.n = q9Var;
        this.o = ec0Var;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        if (f22Var == f22.ON_DESTROY) {
            a();
        } else {
            if (f22Var != f22.ON_CREATE || this.p) {
                return;
            }
            b(this.r);
        }
    }

    public final void a() {
        if (!this.p) {
            this.p = true;
            this.n.getView().setTag(R.id.wrapped_composition_tag, null);
            h22 h22Var = this.q;
            if (h22Var != null) {
                h22Var.b(this);
            }
            this.q = null;
        }
        this.o.m();
    }

    public final void b(df1 df1Var) {
        this.n.setOnReadyForComposition(new oc(8, this, df1Var));
    }
}
