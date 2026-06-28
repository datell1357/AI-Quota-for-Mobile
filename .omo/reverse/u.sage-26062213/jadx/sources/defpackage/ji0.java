package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ji0 extends h0 implements fi0 {
    public static final ii0 o = new ii0(w13.s, new t3(18));

    public ji0() {
        super(w13.s);
    }

    @Override // defpackage.h0, defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        fi0 fi0Var;
        gi0Var.getClass();
        if (gi0Var instanceof ii0) {
            ii0 ii0Var = (ii0) gi0Var;
            gi0 gi0Var2 = this.n;
            if ((gi0Var2 == ii0Var || ii0Var.o == gi0Var2) && (fi0Var = (fi0) ii0Var.n.k(this)) != null) {
                return fi0Var;
            }
        } else if (w13.s == gi0Var) {
            return this;
        }
        return null;
    }

    @Override // defpackage.h0, defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        gi0Var.getClass();
        if (gi0Var instanceof ii0) {
            ii0 ii0Var = (ii0) gi0Var;
            gi0 gi0Var2 = this.n;
            if ((gi0Var2 != ii0Var && ii0Var.o != gi0Var2) || ((fi0) ii0Var.n.k(this)) == null) {
                return this;
            }
        } else if (w13.s != gi0Var) {
            return this;
        }
        return d01.n;
    }

    public abstract void n0(hi0 hi0Var, Runnable runnable);

    public void o0(hi0 hi0Var, Runnable runnable) throws ru0 {
        tu0.b(this, hi0Var, runnable);
    }

    public boolean p0(hi0 hi0Var) {
        return !(this instanceof m64);
    }

    public ji0 q0(int i) {
        c75.p(i);
        return new c32(this, i);
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + qn0.u(this);
    }
}
