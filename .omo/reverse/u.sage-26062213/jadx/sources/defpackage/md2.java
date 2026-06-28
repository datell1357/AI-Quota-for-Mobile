package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class md2 implements jr0 {
    public boolean A;
    public bh0 o;
    public int p;
    public md2 r;
    public md2 s;
    public eo2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public mm2 f206u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public j9 z;
    public md2 n = this;
    public int q = -1;

    public void B0() {
        if (!this.A) {
            ar1.b("reset() called on an unattached node");
        }
        A0();
    }

    public void C0() {
        if (!this.A) {
            ar1.b("Must run markAsAttached() prior to runAttachLifecycle");
        }
        if (!this.x) {
            ar1.b("Must run runAttachLifecycle() only once after markAsAttached()");
        }
        this.x = false;
        y0();
        this.y = true;
    }

    public void D0() {
        if (!this.A) {
            ar1.b("node detached multiple times");
        }
        if (this.f206u == null) {
            ar1.b("detach invoked on a node without a coordinator");
        }
        if (!this.y) {
            ar1.b("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
        }
        this.y = false;
        j9 j9Var = this.z;
        if (j9Var != null) {
            j9Var.a();
        }
        z0();
    }

    public void E0(md2 md2Var) {
        this.n = md2Var;
    }

    public void F0(mm2 mm2Var) {
        this.f206u = mm2Var;
    }

    public final qi0 u0() {
        bh0 bh0Var = this.o;
        if (bh0Var != null) {
            return bh0Var;
        }
        bh0 bh0VarC = dm0.c(((q9) w80.S(this)).getCoroutineContext().F(new vu1((tu1) ((q9) w80.S(this)).getCoroutineContext().K(mj1.W))));
        this.o = bh0VarC;
        return bh0VarC;
    }

    public boolean v0() {
        return !(this instanceof hq);
    }

    public void w0() {
        if (this.A) {
            ar1.b("node attached multiple times");
        }
        if (this.f206u == null) {
            ar1.b("attach invoked on a node without a coordinator");
        }
        this.A = true;
        this.x = true;
    }

    public void x0() {
        if (!this.A) {
            ar1.b("Cannot detach a node that is not attached");
        }
        if (this.x) {
            ar1.b("Must run runAttachLifecycle() before markAsDetached()");
        }
        if (this.y) {
            ar1.b("Must run runDetachLifecycle() before markAsDetached()");
        }
        this.A = false;
        bh0 bh0Var = this.o;
        if (bh0Var != null) {
            dm0.o(bh0Var, new qd2("The Modifier.Node was detached", 2));
            this.o = null;
        }
    }

    public void A0() {
    }

    public void y0() {
    }

    public void z0() {
    }
}
