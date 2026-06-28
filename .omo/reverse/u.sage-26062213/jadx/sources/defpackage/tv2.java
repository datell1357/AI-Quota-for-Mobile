package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class tv2 implements gi3, c10 {
    public final String a;
    public final tg1 b;
    public final int c;
    public int d = -1;
    public final String[] e;
    public final List[] f;
    public final boolean[] g;
    public Map h;
    public final qz1 i;
    public final qz1 j;
    public final qz1 k;

    public tv2(String str, tg1 tg1Var, int i) {
        this.a = str;
        this.b = tg1Var;
        this.c = i;
        String[] strArr = new String[i];
        final int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            strArr[i3] = "[UNINITIALIZED]";
        }
        this.e = strArr;
        int i4 = this.c;
        this.f = new List[i4];
        this.g = new boolean[i4];
        this.h = h01.n;
        ne1 ne1Var = new ne1(this) { // from class: sv2
            public final /* synthetic */ tv2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i5 = i2;
                tv2 tv2Var = this.o;
                switch (i5) {
                    case 0:
                        tg1 tg1Var2 = tv2Var.b;
                        return tg1Var2 != null ? tg1Var2.a() : kt4.v;
                    case 1:
                        return ht4.j(tv2Var.b != null ? new ArrayList(0) : null);
                    default:
                        return Integer.valueOf(ca.t(tv2Var, (gi3[]) tv2Var.j.getValue()));
                }
            }
        };
        v12 v12Var = v12.n;
        this.i = dm0.C(v12Var, ne1Var);
        final int i5 = 1;
        this.j = dm0.C(v12Var, new ne1(this) { // from class: sv2
            public final /* synthetic */ tv2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i52 = i5;
                tv2 tv2Var = this.o;
                switch (i52) {
                    case 0:
                        tg1 tg1Var2 = tv2Var.b;
                        return tg1Var2 != null ? tg1Var2.a() : kt4.v;
                    case 1:
                        return ht4.j(tv2Var.b != null ? new ArrayList(0) : null);
                    default:
                        return Integer.valueOf(ca.t(tv2Var, (gi3[]) tv2Var.j.getValue()));
                }
            }
        });
        final int i6 = 2;
        this.k = dm0.C(v12Var, new ne1(this) { // from class: sv2
            public final /* synthetic */ tv2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i52 = i6;
                tv2 tv2Var = this.o;
                switch (i52) {
                    case 0:
                        tg1 tg1Var2 = tv2Var.b;
                        return tg1Var2 != null ? tg1Var2.a() : kt4.v;
                    case 1:
                        return ht4.j(tv2Var.b != null ? new ArrayList(0) : null);
                    default:
                        return Integer.valueOf(ca.t(tv2Var, (gi3[]) tv2Var.j.getValue()));
                }
            }
        });
    }

    @Override // defpackage.gi3
    public final int a(String str) {
        str.getClass();
        Integer num = (Integer) this.h.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // defpackage.gi3
    public final String b() {
        return this.a;
    }

    @Override // defpackage.gi3
    public dm0 c() {
        return it3.P;
    }

    @Override // defpackage.gi3
    public final int d() {
        return this.c;
    }

    @Override // defpackage.gi3
    public final String e(int i) {
        return this.e[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof tv2) {
            gi3 gi3Var = (gi3) obj;
            if (this.a.equals(gi3Var.b()) && Arrays.equals((gi3[]) this.j.getValue(), (gi3[]) ((tv2) obj).j.getValue())) {
                int iD = gi3Var.d();
                int i = this.c;
                if (i == iD) {
                    for (int i2 = 0; i2 < i; i2++) {
                        if (nt1.g(j(i2).b(), gi3Var.j(i2).b()) && nt1.g(j(i2).c(), gi3Var.j(i2).c())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.gi3
    public boolean f() {
        return false;
    }

    @Override // defpackage.c10
    public final Set g() {
        return this.h.keySet();
    }

    @Override // defpackage.gi3
    public final List getAnnotations() {
        return g01.n;
    }

    @Override // defpackage.gi3
    public final boolean h() {
        return false;
    }

    public int hashCode() {
        return ((Number) this.k.getValue()).intValue();
    }

    @Override // defpackage.gi3
    public final List i(int i) {
        List list = this.f[i];
        return list == null ? g01.n : list;
    }

    @Override // defpackage.gi3
    public gi3 j(int i) {
        return ((lx1[]) this.i.getValue())[i].d();
    }

    @Override // defpackage.gi3
    public final boolean k(int i) {
        return this.g[i];
    }

    public final void l(String str, boolean z) {
        str.getClass();
        int i = this.d + 1;
        this.d = i;
        String[] strArr = this.e;
        strArr[i] = str;
        this.g[i] = z;
        this.f[i] = null;
        if (i == this.c - 1) {
            HashMap map = new HashMap();
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                map.put(strArr[i2], Integer.valueOf(i2));
            }
            this.h = map;
        }
    }

    public String toString() {
        return o70.n0(ix.a0(0, this.c), ", ", this.a.concat("("), ")", new v(22, this), 24);
    }
}
