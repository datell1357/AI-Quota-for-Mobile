package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vn4 implements Iterable, ls4, as4 {
    public final TreeMap n;
    public final TreeMap o;

    public vn4(List list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                n(i, (ls4) list.get(i));
            }
        }
    }

    @Override // defpackage.ls4
    public final Iterator a() {
        return new qm4(this, this.n.keySet().iterator(), this.o.keySet().iterator());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02dc, code lost:
    
        if (defpackage.qt4.c(r7, r2, (defpackage.is4) r0, java.lang.Boolean.FALSE, java.lang.Boolean.TRUE).l() == r7.l()) goto L168;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x079d  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0803  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x081b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01fe  */
    @Override // defpackage.ls4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ls4 c(java.lang.String r37, defpackage.qd1 r38, java.util.ArrayList r39) {
        /*
            Method dump skipped, instruction units count: 2164
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vn4.c(java.lang.String, qd1, java.util.ArrayList):ls4");
    }

    @Override // defpackage.as4
    public final ls4 d(String str) {
        ls4 ls4Var;
        return "length".equals(str) ? new eq4(Double.valueOf(l())) : (!e(str) || (ls4Var = (ls4) this.o.get(str)) == null) ? ls4.f : ls4Var;
    }

    @Override // defpackage.as4
    public final boolean e(String str) {
        return "length".equals(str) || this.o.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vn4)) {
            return false;
        }
        vn4 vn4Var = (vn4) obj;
        if (l() != vn4Var.l()) {
            return false;
        }
        TreeMap treeMap = this.n;
        if (treeMap.isEmpty()) {
            return vn4Var.n.isEmpty();
        }
        for (int iIntValue = ((Integer) treeMap.firstKey()).intValue(); iIntValue <= ((Integer) treeMap.lastKey()).intValue(); iIntValue++) {
            if (!m(iIntValue).equals(vn4Var.m(iIntValue))) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.as4
    public final void f(String str, ls4 ls4Var) {
        TreeMap treeMap = this.o;
        if (ls4Var == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, ls4Var);
        }
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        vn4 vn4Var = new vn4();
        for (Map.Entry entry : this.n.entrySet()) {
            boolean z = entry.getValue() instanceof as4;
            TreeMap treeMap = vn4Var.n;
            if (z) {
                treeMap.put((Integer) entry.getKey(), (ls4) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((ls4) entry.getValue()).h());
            }
        }
        return vn4Var;
    }

    public final int hashCode() {
        return this.n.hashCode() * 31;
    }

    public final List i() {
        ArrayList arrayList = new ArrayList(l());
        for (int i = 0; i < l(); i++) {
            arrayList.add(m(i));
        }
        return arrayList;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ps4(2, this);
    }

    public final Iterator k() {
        return this.n.keySet().iterator();
    }

    public final int l() {
        TreeMap treeMap = this.n;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    public final ls4 m(int i) {
        ls4 ls4Var;
        if (i < l()) {
            return (!o(i) || (ls4Var = (ls4) this.n.get(Integer.valueOf(i))) == null) ? ls4.f : ls4Var;
        }
        mk0.h("Attempting to get element outside of current array");
        return null;
    }

    public final void n(int i, ls4 ls4Var) {
        if (i > 32468) {
            k21.n("Array too large");
            return;
        }
        if (i < 0) {
            mk0.h(di0.r(i, "Out of bounds index: ", new StringBuilder(String.valueOf(i).length() + 21)));
            return;
        }
        TreeMap treeMap = this.n;
        if (ls4Var == null) {
            treeMap.remove(Integer.valueOf(i));
        } else {
            treeMap.put(Integer.valueOf(i), ls4Var);
        }
    }

    public final boolean o(int i) {
        if (i >= 0) {
            TreeMap treeMap = this.n;
            if (i <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i));
            }
        }
        mk0.h(di0.r(i, "Out of bounds index: ", new StringBuilder(String.valueOf(i).length() + 21)));
        return false;
    }

    public final void p(int i) {
        TreeMap treeMap = this.n;
        int iIntValue = ((Integer) treeMap.lastKey()).intValue();
        if (i > iIntValue || i < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i));
        if (i == iIntValue) {
            int i2 = i - 1;
            Integer numValueOf = Integer.valueOf(i2);
            if (treeMap.containsKey(numValueOf) || i2 < 0) {
                return;
            }
            treeMap.put(numValueOf, ls4.f);
            return;
        }
        while (true) {
            i++;
            if (i > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer numValueOf2 = Integer.valueOf(i);
            ls4 ls4Var = (ls4) treeMap.get(numValueOf2);
            if (ls4Var != null) {
                treeMap.put(Integer.valueOf(i - 1), ls4Var);
                treeMap.remove(numValueOf2);
            }
        }
    }

    public final String q(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (!this.n.isEmpty()) {
            int i = 0;
            while (true) {
                str2 = str == null ? "" : str;
                if (i >= l()) {
                    break;
                }
                ls4 ls4VarM = m(i);
                sb.append(str2);
                if (!(ls4VarM instanceof vs4) && !(ls4VarM instanceof fs4)) {
                    sb.append(ls4VarM.zzc());
                }
                i++;
            }
            sb.delete(0, str2.length());
        }
        return sb.toString();
    }

    public final String toString() {
        return q(",");
    }

    @Override // defpackage.ls4
    public final String zzc() {
        return q(",");
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        TreeMap treeMap = this.n;
        return treeMap.size() == 1 ? m(0).zzd() : treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        return Boolean.TRUE;
    }

    public vn4() {
        this.n = new TreeMap();
        this.o = new TreeMap();
    }
}
