package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wu1 extends i72 implements jv0, rp1 {
    public bv1 t;

    @Override // defpackage.jv0
    public final void a() {
        q().g0(this);
    }

    @Override // defpackage.rp1
    public final boolean b() {
        return true;
    }

    @Override // defpackage.rp1
    public final om2 d() {
        return null;
    }

    public tu1 getParent() {
        return q();
    }

    public final bv1 q() {
        bv1 bv1Var = this.t;
        if (bv1Var != null) {
            return bv1Var;
        }
        nt1.X("job");
        throw null;
    }

    public abstract boolean r();

    public abstract void s(Throwable th);

    @Override // defpackage.i72
    public final String toString() {
        return getClass().getSimpleName() + '@' + qn0.u(this) + "[job@" + qn0.u(q()) + ']';
    }
}
