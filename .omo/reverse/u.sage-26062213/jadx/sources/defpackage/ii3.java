package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ii3 implements gi3, c10 {
    public final String a;
    public final dm0 b;
    public final int c;
    public final HashSet d;
    public final String[] e;
    public final gi3[] f;
    public final List[] g;
    public final boolean[] h;
    public final Map i;
    public final gi3[] j;
    public final nv3 k;

    public ii3(String str, dm0 dm0Var, int i, List list, j50 j50Var) {
        this.a = str;
        this.b = dm0Var;
        this.c = i;
        ArrayList arrayList = j50Var.b;
        arrayList.getClass();
        HashSet hashSet = new HashSet(oa2.a0(p70.a0(arrayList, 12)));
        o70.A0(arrayList, hashSet);
        this.d = hashSet;
        int i2 = 0;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.e = strArr;
        this.f = ht4.j(j50Var.d);
        this.g = (List[]) j50Var.e.toArray(new List[0]);
        ArrayList arrayList2 = j50Var.f;
        arrayList2.getClass();
        boolean[] zArr = new boolean[arrayList2.size()];
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            zArr[i2] = ((Boolean) it.next()).booleanValue();
            i2++;
        }
        this.h = zArr;
        strArr.getClass();
        ii iiVar = new ii(1, new cc(2, strArr));
        ArrayList arrayList3 = new ArrayList(p70.a0(iiVar, 10));
        Iterator it2 = iiVar.iterator();
        while (true) {
            zx0 zx0Var = (zx0) it2;
            if (!zx0Var.o.hasNext()) {
                this.i = oa2.d0(arrayList3);
                this.j = ht4.j(list);
                this.k = new nv3(new vc3(4, this));
                return;
            }
            vp1 vp1Var = (vp1) zx0Var.next();
            arrayList3.add(new js2(vp1Var.b, Integer.valueOf(vp1Var.a)));
        }
    }

    @Override // defpackage.gi3
    public final int a(String str) {
        str.getClass();
        Integer num = (Integer) this.i.get(str);
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
    public final dm0 c() {
        return this.b;
    }

    @Override // defpackage.gi3
    public final int d() {
        return this.c;
    }

    @Override // defpackage.gi3
    public final String e(int i) {
        return this.e[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ii3) {
            gi3 gi3Var = (gi3) obj;
            if (this.a.equals(gi3Var.b()) && Arrays.equals(this.j, ((ii3) obj).j)) {
                int iD = gi3Var.d();
                int i = this.c;
                if (i == iD) {
                    for (int i2 = 0; i2 < i; i2++) {
                        gi3[] gi3VarArr = this.f;
                        if (nt1.g(gi3VarArr[i2].b(), gi3Var.j(i2).b()) && nt1.g(gi3VarArr[i2].c(), gi3Var.j(i2).c())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.gi3
    public final boolean f() {
        return false;
    }

    @Override // defpackage.c10
    public final Set g() {
        return this.d;
    }

    @Override // defpackage.gi3
    public final List getAnnotations() {
        return g01.n;
    }

    @Override // defpackage.gi3
    public final boolean h() {
        return false;
    }

    public final int hashCode() {
        return ((Number) this.k.getValue()).intValue();
    }

    @Override // defpackage.gi3
    public final List i(int i) {
        return this.g[i];
    }

    @Override // defpackage.gi3
    public final gi3 j(int i) {
        return this.f[i];
    }

    @Override // defpackage.gi3
    public final boolean k(int i) {
        return this.h[i];
    }

    public final String toString() {
        return o70.n0(ix.a0(0, this.c), ", ", this.a.concat("("), ")", new di3(1, this), 24);
    }
}
