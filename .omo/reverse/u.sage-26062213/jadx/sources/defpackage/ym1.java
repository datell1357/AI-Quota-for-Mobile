package defpackage;

import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ym1 implements ua3, Cloneable {
    public final em1 n;
    public final InetAddress o;
    public final ArrayList p;
    public final ta3 q;
    public final sa3 r;
    public final boolean s;

    public ym1(em1 em1Var, InetAddress inetAddress, List list, boolean z, ta3 ta3Var, sa3 sa3Var) {
        w80.L(em1Var, "Target host");
        if (em1Var.p < 0) {
            String str = em1Var.q;
            em1Var = new em1(em1Var.n, "http".equalsIgnoreCase(str) ? 80 : "https".equalsIgnoreCase(str) ? 443 : -1, str);
        }
        this.n = em1Var;
        this.o = inetAddress;
        if (list == null || list.isEmpty()) {
            this.p = null;
        } else {
            this.p = new ArrayList(list);
        }
        if (ta3Var == ta3.o) {
            w80.l("Proxy required if tunnelled", this.p != null);
        }
        this.s = z;
        this.q = ta3Var == null ? ta3.n : ta3Var;
        this.r = sa3Var == null ? sa3.n : sa3Var;
    }

    @Override // defpackage.ua3
    public final boolean a() {
        return this.s;
    }

    @Override // defpackage.ua3
    public final int b() {
        ArrayList arrayList = this.p;
        if (arrayList != null) {
            return arrayList.size() + 1;
        }
        return 1;
    }

    @Override // defpackage.ua3
    public final boolean c() {
        return this.q == ta3.o;
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.ua3
    public final em1 d() {
        return this.n;
    }

    @Override // defpackage.ua3
    public final em1 e() {
        ArrayList arrayList = this.p;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (em1) arrayList.get(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ym1)) {
            return false;
        }
        ym1 ym1Var = (ym1) obj;
        return this.s == ym1Var.s && this.q == ym1Var.q && this.r == ym1Var.r && c75.A(this.n, ym1Var.n) && c75.A(this.o, ym1Var.o) && c75.A(this.p, ym1Var.p);
    }

    public final em1 f(int i) {
        w80.J(i, "Hop index");
        int iB = b();
        w80.l("Hop index exceeds tracked route length", i < iB);
        return i < iB - 1 ? (em1) this.p.get(i) : this.n;
    }

    public final boolean g() {
        return this.r == sa3.o;
    }

    public final int hashCode() {
        int I = c75.I(c75.I(17, this.n), this.o);
        ArrayList arrayList = this.p;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                I = c75.I(I, (em1) obj);
            }
        }
        return c75.I(c75.I(c75.H(I, this.s ? 1 : 0), this.q), this.r);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((b() * 30) + 50);
        InetAddress inetAddress = this.o;
        if (inetAddress != null) {
            sb.append(inetAddress);
            sb.append("->");
        }
        sb.append('{');
        if (this.q == ta3.o) {
            sb.append('t');
        }
        if (this.r == sa3.o) {
            sb.append('l');
        }
        if (this.s) {
            sb.append('s');
        }
        sb.append("}->");
        ArrayList arrayList = this.p;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                sb.append((em1) obj);
                sb.append("->");
            }
        }
        sb.append(this.n);
        return sb.toString();
    }

    public ym1(em1 em1Var, InetAddress inetAddress, boolean z) {
        this(em1Var, inetAddress, Collections.EMPTY_LIST, z, ta3.n, sa3.n);
    }

    public ym1(em1 em1Var, InetAddress inetAddress, em1 em1Var2, boolean z) {
        this(em1Var, inetAddress, Collections.singletonList(em1Var2), z, z ? ta3.o : ta3.n, z ? sa3.o : sa3.n);
    }
}
