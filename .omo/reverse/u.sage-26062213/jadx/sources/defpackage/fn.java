package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fn extends yj0 {
    public final List a;
    public final uj0 b;
    public final mj0 c;
    public final in d;
    public final List e;

    public fn(List list, hn hnVar, mj0 mj0Var, in inVar, List list2) {
        this.a = list;
        this.b = hnVar;
        this.c = mj0Var;
        this.d = inVar;
        this.e = list2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof yj0)) {
            return false;
        }
        yj0 yj0Var = (yj0) obj;
        List list = this.a;
        if (list == null) {
            if (((fn) yj0Var).a != null) {
                return false;
            }
        } else if (!list.equals(((fn) yj0Var).a)) {
            return false;
        }
        uj0 uj0Var = this.b;
        if (uj0Var == null) {
            if (((fn) yj0Var).b != null) {
                return false;
            }
        } else if (!uj0Var.equals(((fn) yj0Var).b)) {
            return false;
        }
        mj0 mj0Var = this.c;
        if (mj0Var == null) {
            if (((fn) yj0Var).c != null) {
                return false;
            }
        } else if (!mj0Var.equals(((fn) yj0Var).c)) {
            return false;
        }
        fn fnVar = (fn) yj0Var;
        return this.d.equals(fnVar.d) && this.e.equals(fnVar.e);
    }

    public final int hashCode() {
        List list = this.a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        uj0 uj0Var = this.b;
        int iHashCode2 = (iHashCode ^ (uj0Var == null ? 0 : uj0Var.hashCode())) * 1000003;
        mj0 mj0Var = this.c;
        return this.e.hashCode() ^ (((((mj0Var != null ? mj0Var.hashCode() : 0) ^ iHashCode2) * 1000003) ^ this.d.hashCode()) * 1000003);
    }

    public final String toString() {
        return "Execution{threads=" + this.a + ", exception=" + this.b + ", appExitInfo=" + this.c + ", signal=" + this.d + ", binaries=" + this.e + "}";
    }
}
