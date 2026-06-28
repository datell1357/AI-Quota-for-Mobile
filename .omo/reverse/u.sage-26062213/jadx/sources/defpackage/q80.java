package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q80 implements hi0, Serializable {
    public final hi0 n;
    public final fi0 o;

    public q80(fi0 fi0Var, hi0 hi0Var) {
        hi0Var.getClass();
        fi0Var.getClass();
        this.n = hi0Var;
        this.o = fi0Var;
    }

    @Override // defpackage.hi0
    public final hi0 F(hi0 hi0Var) {
        hi0Var.getClass();
        return hi0Var == d01.n ? this : (hi0) hi0Var.R(new ei0(0), this);
    }

    @Override // defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        gi0Var.getClass();
        while (true) {
            fi0 fi0VarK = this.o.K(gi0Var);
            if (fi0VarK != null) {
                return fi0VarK;
            }
            hi0 hi0Var = this.n;
            if (!(hi0Var instanceof q80)) {
                return hi0Var.K(gi0Var);
            }
            this = (q80) hi0Var;
        }
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(this.n.R(df1Var, obj), this.o);
    }

    @Override // defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        gi0Var.getClass();
        fi0 fi0Var = this.o;
        fi0 fi0VarK = fi0Var.K(gi0Var);
        hi0 hi0Var = this.n;
        if (fi0VarK != null) {
            return hi0Var;
        }
        hi0 hi0VarY = hi0Var.Y(gi0Var);
        return hi0VarY == hi0Var ? this : hi0VarY == d01.n ? fi0Var : new q80(fi0Var, hi0VarY);
    }

    public final boolean equals(Object obj) {
        boolean zG;
        if (this == obj) {
            return true;
        }
        if (obj instanceof q80) {
            q80 q80Var = (q80) obj;
            int i = 2;
            q80 q80Var2 = q80Var;
            int i2 = 2;
            while (true) {
                hi0 hi0Var = q80Var2.n;
                q80Var2 = hi0Var instanceof q80 ? (q80) hi0Var : null;
                if (q80Var2 == null) {
                    break;
                }
                i2++;
            }
            q80 q80Var3 = this;
            while (true) {
                hi0 hi0Var2 = q80Var3.n;
                q80Var3 = hi0Var2 instanceof q80 ? (q80) hi0Var2 : null;
                if (q80Var3 == null) {
                    break;
                }
                i++;
            }
            if (i2 == i) {
                while (true) {
                    fi0 fi0Var = this.o;
                    if (!nt1.g(q80Var.K(fi0Var.getKey()), fi0Var)) {
                        zG = false;
                        break;
                    }
                    hi0 hi0Var3 = this.n;
                    if (!(hi0Var3 instanceof q80)) {
                        hi0Var3.getClass();
                        fi0 fi0Var2 = (fi0) hi0Var3;
                        zG = nt1.g(q80Var.K(fi0Var2.getKey()), fi0Var2);
                        break;
                    }
                    this = (q80) hi0Var3;
                }
                if (zG) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.o.hashCode() + this.n.hashCode();
    }

    public final String toString() {
        return "[" + ((String) R(new sq(2), "")) + ']';
    }
}
