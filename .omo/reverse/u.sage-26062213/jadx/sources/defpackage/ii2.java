package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ii2 {
    public final wl3 A;
    public final xi2 a;
    public final f92 b;
    public si2 c;
    public Bundle d;
    public Bundle[] e;
    public final vh f = new vh();
    public final wr3 g;
    public final b23 h;
    public final wr3 i;
    public final b23 j;
    public final LinkedHashMap k;
    public final LinkedHashMap l;
    public final LinkedHashMap m;
    public final LinkedHashMap n;
    public p22 o;
    public ji2 p;
    public final ArrayList q;
    public g22 r;
    public final fi2 s;
    public final mk2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final LinkedHashMap f140u;
    public pe1 v;
    public gi2 w;
    public final LinkedHashMap x;
    public int y;
    public final ArrayList z;

    public ii2(xi2 xi2Var, f92 f92Var) {
        this.a = xi2Var;
        this.b = f92Var;
        g01 g01Var = g01.n;
        wr3 wr3VarA = xr3.a(g01Var);
        this.g = wr3VarA;
        this.h = new b23(wr3VarA);
        wr3 wr3VarA2 = xr3.a(g01Var);
        this.i = wr3VarA2;
        this.j = new b23(wr3VarA2);
        this.k = new LinkedHashMap();
        this.l = new LinkedHashMap();
        this.m = new LinkedHashMap();
        this.n = new LinkedHashMap();
        this.q = new ArrayList();
        this.r = g22.o;
        this.s = new fi2(0, this);
        this.t = new mk2();
        this.f140u = new LinkedHashMap();
        this.x = new LinkedHashMap();
        this.z = new ArrayList();
        this.A = xl3.a(1, 2);
    }

    public static qi2 e(int i, qi2 qi2Var, qi2 qi2Var2, boolean z) {
        if (qi2Var.o.a == i && (qi2Var2 == null || (qi2Var.equals(qi2Var2) && nt1.g(qi2Var.p, qi2Var2.p)))) {
            return qi2Var;
        }
        si2 si2Var = qi2Var instanceof si2 ? (si2) qi2Var : null;
        if (si2Var == null) {
            si2Var = qi2Var.p;
            si2Var.getClass();
        }
        return si2Var.s.p(i, si2Var, qi2Var2, z);
    }

    public static /* synthetic */ void r(ii2 ii2Var, yh2 yh2Var) {
        ii2Var.q(yh2Var, false, new vh());
    }

    public final void a(qi2 qi2Var, Bundle bundle, yh2 yh2Var, List list) {
        Object objPrevious;
        Object objPrevious2;
        di2 di2Var = this.a.c;
        qi2 qi2Var2 = yh2Var.o;
        boolean z = qi2Var2 instanceof tt0;
        vh vhVar = this.f;
        if (!z) {
            while (!vhVar.isEmpty() && (((yh2) vhVar.last()).o instanceof tt0) && o(((yh2) vhVar.last()).o.o.a, true, false)) {
            }
        }
        vh<yh2> vhVar2 = new vh();
        Object obj = null;
        if (qi2Var instanceof si2) {
            qi2 qi2Var3 = qi2Var2;
            do {
                qi2Var3.getClass();
                qi2Var3 = qi2Var3.p;
                if (qi2Var3 != null) {
                    ListIterator listIterator = list.listIterator(list.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            objPrevious2 = listIterator.previous();
                            if (nt1.g(((yh2) objPrevious2).o, qi2Var3)) {
                                break;
                            }
                        } else {
                            objPrevious2 = null;
                            break;
                        }
                    }
                    yh2 yh2VarV = (yh2) objPrevious2;
                    if (yh2VarV == null) {
                        yh2VarV = b21.v(di2Var, qi2Var3, bundle, j(), this.p);
                    }
                    vhVar2.addFirst(yh2VarV);
                    if (!vhVar.isEmpty() && ((yh2) vhVar.last()).o == qi2Var3) {
                        r(this, (yh2) vhVar.last());
                    }
                }
                if (qi2Var3 == null) {
                    break;
                }
            } while (qi2Var3 != qi2Var);
        }
        qi2 qi2Var4 = vhVar2.isEmpty() ? qi2Var2 : ((yh2) vhVar2.first()).o;
        while (qi2Var4 != null && d(qi2Var4.o.a, qi2Var4) != qi2Var4) {
            qi2Var4 = qi2Var4.p;
            if (qi2Var4 != null) {
                Bundle bundle2 = (bundle == null || !bundle.isEmpty()) ? bundle : null;
                ListIterator listIterator2 = list.listIterator(list.size());
                while (true) {
                    if (listIterator2.hasPrevious()) {
                        objPrevious = listIterator2.previous();
                        if (nt1.g(((yh2) objPrevious).o, qi2Var4)) {
                            break;
                        }
                    } else {
                        objPrevious = null;
                        break;
                    }
                }
                yh2 yh2VarV2 = (yh2) objPrevious;
                if (yh2VarV2 == null) {
                    yh2VarV2 = b21.v(di2Var, qi2Var4, qi2Var4.a(bundle2), j(), this.p);
                }
                vhVar2.addFirst(yh2VarV2);
            }
        }
        if (!vhVar2.isEmpty()) {
            qi2Var2 = ((yh2) vhVar2.first()).o;
        }
        while (!vhVar.isEmpty() && (((yh2) vhVar.last()).o instanceof si2)) {
            qi2 qi2Var5 = ((yh2) vhVar.last()).o;
            qi2Var5.getClass();
            if (((mq3) ((si2) qi2Var5).s.f).c(qi2Var2.o.a) != null) {
                break;
            } else {
                r(this, (yh2) vhVar.last());
            }
        }
        yh2 yh2Var2 = (yh2) vhVar.g();
        if (yh2Var2 == null) {
            yh2Var2 = (yh2) vhVar2.g();
        }
        if (!nt1.g(yh2Var2 != null ? yh2Var2.o : null, this.c)) {
            ListIterator listIterator3 = list.listIterator(list.size());
            while (true) {
                if (!listIterator3.hasPrevious()) {
                    break;
                }
                Object objPrevious3 = listIterator3.previous();
                qi2 qi2Var6 = ((yh2) objPrevious3).o;
                si2 si2Var = this.c;
                si2Var.getClass();
                if (nt1.g(qi2Var6, si2Var)) {
                    obj = objPrevious3;
                    break;
                }
            }
            yh2 yh2VarV3 = (yh2) obj;
            if (yh2VarV3 == null) {
                si2 si2Var2 = this.c;
                si2Var2.getClass();
                si2 si2Var3 = this.c;
                si2Var3.getClass();
                yh2VarV3 = b21.v(di2Var, si2Var2, si2Var3.a(bundle), j(), this.p);
            }
            vhVar2.addFirst(yh2VarV3);
        }
        for (yh2 yh2Var3 : vhVar2) {
            Object obj2 = this.f140u.get(this.t.b(yh2Var3.o.n));
            if (obj2 == null) {
                p61.e(xw1.s(new StringBuilder("NavigatorBackStack for "), qi2Var.n, " should already be created"));
                return;
            }
            ((ei2) obj2).a(yh2Var3);
        }
        vhVar.addAll(vhVar2);
        vhVar.addLast(yh2Var);
        ArrayList arrayListR0 = o70.r0(vhVar2, yh2Var);
        int size = arrayListR0.size();
        int i = 0;
        while (i < size) {
            Object obj3 = arrayListR0.get(i);
            i++;
            yh2 yh2Var4 = (yh2) obj3;
            si2 si2Var4 = yh2Var4.o.p;
            if (si2Var4 != null) {
                l(yh2Var4, f(si2Var4.o.a));
            }
        }
    }

    public final boolean b() {
        vh vhVar;
        while (true) {
            vhVar = this.f;
            if (vhVar.isEmpty() || !(((yh2) vhVar.last()).o instanceof si2)) {
                break;
            }
            r(this, (yh2) vhVar.last());
        }
        yh2 yh2Var = (yh2) vhVar.i();
        ArrayList arrayList = this.z;
        if (yh2Var != null) {
            arrayList.add(yh2Var);
        }
        this.y++;
        v();
        int i = this.y - 1;
        this.y = i;
        if (i == 0) {
            ArrayList arrayListD0 = o70.D0(arrayList);
            arrayList.clear();
            int size = arrayListD0.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayListD0.get(i2);
                i2++;
                yh2 yh2Var2 = (yh2) obj;
                Iterator it = o70.C0(this.q).iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        mk0.b();
                        return false;
                    }
                    qi2 qi2Var = yh2Var2.o;
                    yh2Var2.f421u.a();
                    throw null;
                }
                this.A.q(yh2Var2);
            }
            ArrayList arrayList2 = new ArrayList(vhVar);
            wr3 wr3Var = this.g;
            wr3Var.getClass();
            wr3Var.i(null, arrayList2);
            ArrayList arrayListS = s();
            wr3 wr3Var2 = this.i;
            wr3Var2.getClass();
            wr3Var2.i(null, arrayListS);
        }
        return yh2Var != null;
    }

    public final boolean c(ArrayList arrayList, qi2 qi2Var, boolean z, boolean z2) {
        boolean z3;
        s33 s33Var = new s33();
        vh vhVar = new vh();
        int size = arrayList.size();
        final int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z3 = z2;
                break;
            }
            int i3 = i2 + 1;
            lk2 lk2Var = (lk2) arrayList.get(i2);
            s33 s33Var2 = new s33();
            yh2 yh2Var = (yh2) this.f.last();
            z3 = z2;
            gi2 gi2Var = new gi2(s33Var2, s33Var, this, z3, vhVar);
            lk2Var.getClass();
            yh2Var.getClass();
            this.w = gi2Var;
            lk2Var.e(yh2Var, z3);
            this.w = null;
            if (!s33Var2.n) {
                break;
            }
            i2 = i3;
        }
        if (z3) {
            LinkedHashMap linkedHashMap = this.m;
            if (!z) {
                x51 x51Var = new x51(new hw3(ci3.K(qi2Var, new z82(6)), new pe1(this) { // from class: hi2
                    public final /* synthetic */ ii2 o;

                    {
                        this.o = this;
                    }

                    @Override // defpackage.pe1
                    public final Object k(Object obj) {
                        boolean zContainsKey;
                        int i4 = i;
                        ii2 ii2Var = this.o;
                        qi2 qi2Var2 = (qi2) obj;
                        switch (i4) {
                            case 0:
                                qi2Var2.getClass();
                                zContainsKey = ii2Var.m.containsKey(Integer.valueOf(qi2Var2.o.a));
                                break;
                            default:
                                qi2Var2.getClass();
                                zContainsKey = ii2Var.m.containsKey(Integer.valueOf(qi2Var2.o.a));
                                break;
                        }
                        return Boolean.valueOf(!zContainsKey);
                    }
                }, 0));
                while (x51Var.hasNext()) {
                    Integer numValueOf = Integer.valueOf(((qi2) x51Var.next()).o.a);
                    bi2 bi2Var = (bi2) vhVar.g();
                    linkedHashMap.put(numValueOf, bi2Var != null ? (String) bi2Var.a.o : null);
                }
            }
            if (!vhVar.isEmpty()) {
                lb lbVar = ((bi2) vhVar.first()).a;
                final int i4 = 1;
                x51 x51Var2 = new x51(new hw3(ci3.K(d(lbVar.n, null), new z82(7)), new pe1(this) { // from class: hi2
                    public final /* synthetic */ ii2 o;

                    {
                        this.o = this;
                    }

                    @Override // defpackage.pe1
                    public final Object k(Object obj) {
                        boolean zContainsKey;
                        int i42 = i4;
                        ii2 ii2Var = this.o;
                        qi2 qi2Var2 = (qi2) obj;
                        switch (i42) {
                            case 0:
                                qi2Var2.getClass();
                                zContainsKey = ii2Var.m.containsKey(Integer.valueOf(qi2Var2.o.a));
                                break;
                            default:
                                qi2Var2.getClass();
                                zContainsKey = ii2Var.m.containsKey(Integer.valueOf(qi2Var2.o.a));
                                break;
                        }
                        return Boolean.valueOf(!zContainsKey);
                    }
                }, 0));
                while (x51Var2.hasNext()) {
                    linkedHashMap.put(Integer.valueOf(((qi2) x51Var2.next()).o.a), (String) lbVar.o);
                }
                if (linkedHashMap.values().contains((String) lbVar.o)) {
                    this.n.put((String) lbVar.o, vhVar);
                }
            }
        }
        this.b.a();
        return s33Var.n;
    }

    public final qi2 d(int i, qi2 qi2Var) {
        qi2 qi2Var2;
        si2 si2Var = this.c;
        if (si2Var == null) {
            return null;
        }
        if (si2Var.o.a == i) {
            if (qi2Var == null) {
                return si2Var;
            }
            if (nt1.g(si2Var, qi2Var) && qi2Var.p == null) {
                return this.c;
            }
        }
        yh2 yh2Var = (yh2) this.f.i();
        if (yh2Var == null || (qi2Var2 = yh2Var.o) == null) {
            qi2Var2 = this.c;
            qi2Var2.getClass();
        }
        return e(i, qi2Var2, qi2Var, false);
    }

    public final yh2 f(int i) {
        Object objPrevious;
        vh vhVar = this.f;
        ListIterator<E> listIterator = vhVar.listIterator(vhVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            if (((yh2) objPrevious).o.o.a == i) {
                break;
            }
        }
        yh2 yh2Var = (yh2) objPrevious;
        if (yh2Var != null) {
            return yh2Var;
        }
        StringBuilder sbU = xw1.u("No destination with ID ", i, " is on the NavController's back stack. The current destination is ");
        sbU.append(h());
        throw new IllegalArgumentException(sbU.toString().toString());
    }

    public final yh2 g() {
        return (yh2) this.f.i();
    }

    public final qi2 h() {
        yh2 yh2VarG = g();
        if (yh2VarG != null) {
            return yh2VarG.o;
        }
        return null;
    }

    public final si2 i() {
        si2 si2Var = this.c;
        if (si2Var != null) {
            si2Var.getClass();
            return si2Var;
        }
        k21.n("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final g22 j() {
        return this.o == null ? g22.p : this.r;
    }

    public final si2 k() {
        qi2 qi2Var;
        yh2 yh2Var = (yh2) this.f.i();
        if (yh2Var == null || (qi2Var = yh2Var.o) == null) {
            qi2Var = this.c;
            qi2Var.getClass();
        }
        si2 si2Var = qi2Var instanceof si2 ? (si2) qi2Var : null;
        if (si2Var != null) {
            return si2Var;
        }
        si2 si2Var2 = qi2Var.p;
        si2Var2.getClass();
        return si2Var2;
    }

    public final void l(yh2 yh2Var, yh2 yh2Var2) {
        this.k.put(yh2Var, yh2Var2);
        LinkedHashMap linkedHashMap = this.l;
        if (linkedHashMap.get(yh2Var2) == null) {
            linkedHashMap.put(yh2Var2, new kj());
        }
        Object obj = linkedHashMap.get(yh2Var2);
        obj.getClass();
        ((kj) obj).a.incrementAndGet();
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0214  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(defpackage.qi2 r23, android.os.Bundle r24, defpackage.jj2 r25) {
        /*
            Method dump skipped, instruction units count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ii2.m(qi2, android.os.Bundle, jj2):void");
    }

    public final void n(String str, jj2 jj2Var) {
        str.getClass();
        if (this.c == null) {
            p61.n("Cannot navigate to ", str, ". Navigation graph has not been set for NavController ", this, 46);
            return;
        }
        si2 si2VarK = k();
        pi2 pi2VarG = si2VarK.g(str, true, si2VarK);
        if (pi2VarG == null) {
            StringBuilder sbA = di0.A("Navigation destination that matches route ", str, " cannot be found in the navigation graph ");
            sbA.append(this.c);
            throw new IllegalArgumentException(sbA.toString());
        }
        qi2 qi2Var = pi2VarG.n;
        Bundle bundleA = qi2Var.a(pi2VarG.o);
        if (bundleA == null) {
            bundleA = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        }
        int i = qi2.r;
        String str2 = (String) qi2Var.o.e;
        Uri uri = Uri.parse(str2 != null ? "android-app://androidx.navigation/".concat(str2) : "");
        uri.getClass();
        Intent intent = new Intent();
        intent.setDataAndType(uri, null);
        intent.setAction(null);
        bundleA.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
        m(qi2Var, bundleA, jj2Var);
    }

    public final boolean o(int i, boolean z, boolean z2) {
        qi2 qi2Var;
        vh vhVar = this.f;
        if (vhVar.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = o70.w0(vhVar).iterator();
        while (true) {
            if (!it.hasNext()) {
                qi2Var = null;
                break;
            }
            qi2Var = ((yh2) it.next()).o;
            String str = qi2Var.n;
            gg ggVar = qi2Var.o;
            lk2 lk2VarB = this.t.b(str);
            if (z || ggVar.a != i) {
                arrayList.add(lk2VarB);
            }
            if (ggVar.a == i) {
                break;
            }
        }
        if (qi2Var != null) {
            return c(arrayList, qi2Var, z, z2);
        }
        int i2 = qi2.r;
        Log.i("NavController", "Ignoring popBackStack to destination " + mt1.w(this.a.c, i) + " as it was not found on the current back stack");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cc A[EDGE_INSN: B:59:0x00cc->B:50:0x00cc BREAK  A[LOOP:0: B:6:0x0020->B:62:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[LOOP:0: B:6:0x0020->B:62:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(java.lang.String r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ii2.p(java.lang.String, boolean, boolean):boolean");
    }

    public final void q(yh2 yh2Var, boolean z, vh vhVar) {
        ji2 ji2Var;
        b23 b23Var;
        Set set;
        yh2Var.getClass();
        vh vhVar2 = this.f;
        yh2 yh2Var2 = (yh2) vhVar2.last();
        if (!nt1.g(yh2Var2, yh2Var)) {
            StringBuilder sb = new StringBuilder("Attempted to pop ");
            sb.append(yh2Var.o);
            qi2 qi2Var = yh2Var2.o;
            sb.append(", which is not the top of the back stack (");
            sb.append(qi2Var);
            sb.append(')');
            throw new IllegalStateException(sb.toString().toString());
        }
        o70.u0(vhVar2);
        ei2 ei2Var = (ei2) this.f140u.get(this.t.b(yh2Var2.o.n));
        boolean z2 = true;
        if ((ei2Var == null || (b23Var = ei2Var.f) == null || (set = (Set) b23Var.n.getValue()) == null || !set.contains(yh2Var2)) && !this.l.containsKey(yh2Var2)) {
            z2 = false;
        }
        g22 g22Var = yh2Var2.f421u.j.d;
        g22 g22Var2 = g22.p;
        if (g22Var.compareTo(g22Var2) >= 0) {
            if (z) {
                yh2Var2.a(g22Var2);
                vhVar.addFirst(new bi2(yh2Var2));
            }
            if (z2) {
                yh2Var2.a(g22Var2);
            } else {
                yh2Var2.a(g22.n);
                u(yh2Var2);
            }
        }
        if (z || z2 || (ji2Var = this.p) == null) {
            return;
        }
        String str = yh2Var2.s;
        str.getClass();
        bc4 bc4Var = (bc4) ji2Var.b.remove(str);
        if (bc4Var != null) {
            bc4Var.a();
        }
    }

    public final ArrayList s() {
        g22 g22Var;
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f140u.values().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            g22Var = g22.q;
            if (!zHasNext) {
                break;
            }
            Iterable iterable = (Iterable) ((ei2) it.next()).f.n.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                yh2 yh2Var = (yh2) obj;
                if (!arrayList.contains(yh2Var) && yh2Var.f421u.k.compareTo(g22Var) < 0) {
                    arrayList2.add(obj);
                }
            }
            o70.d0(arrayList2, arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : this.f) {
            yh2 yh2Var2 = (yh2) obj2;
            if (!arrayList.contains(yh2Var2) && yh2Var2.f421u.k.compareTo(g22Var) >= 0) {
                arrayList3.add(obj2);
            }
        }
        o70.d0(arrayList3, arrayList);
        ArrayList arrayList4 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj3 = arrayList.get(i);
            i++;
            if (!(((yh2) obj3).o instanceof si2)) {
                arrayList4.add(obj3);
            }
        }
        return arrayList4;
    }

    public final boolean t(int i, Bundle bundle, jj2 jj2Var) {
        qi2 qi2VarI;
        yh2 yh2Var;
        qi2 qi2Var;
        Bundle bundle2;
        Integer numValueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.m;
        int i2 = 0;
        if (!linkedHashMap.containsKey(numValueOf)) {
            return false;
        }
        String str = (String) linkedHashMap.get(Integer.valueOf(i));
        Collection collectionValues = linkedHashMap.values();
        collectionValues.getClass();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            if (nt1.g((String) it.next(), str)) {
                it.remove();
            }
        }
        vh<bi2> vhVar = (vh) n44.P(this.n).remove(str);
        di2 di2Var = this.a.c;
        ArrayList arrayList = new ArrayList();
        yh2 yh2Var2 = (yh2) this.f.i();
        if (yh2Var2 == null || (qi2VarI = yh2Var2.o) == null) {
            qi2VarI = i();
        }
        if (vhVar != null) {
            for (bi2 bi2Var : vhVar) {
                lb lbVar = bi2Var.a;
                lb lbVar2 = bi2Var.a;
                qi2 qi2VarE = e(lbVar.n, qi2VarI, null, true);
                if (qi2VarE == null) {
                    int i3 = qi2.r;
                    p61.m("Restore State failed: destination ", mt1.w(di2Var, lbVar2.n), " cannot be found from the current destination ", qi2VarI);
                    return false;
                }
                g22 g22VarJ = j();
                ji2 ji2Var = this.p;
                di2Var.getClass();
                g22VarJ.getClass();
                Bundle bundle3 = (Bundle) lbVar2.p;
                if (bundle3 != null) {
                    Context context = di2Var.o;
                    bundle3.setClassLoader(context != null ? context.getClassLoader() : null);
                    bundle2 = bundle3;
                } else {
                    bundle2 = null;
                }
                String str2 = (String) lbVar2.o;
                Bundle bundle4 = (Bundle) lbVar2.q;
                str2.getClass();
                arrayList.add(new yh2(di2Var, qi2VarE, bundle2, g22VarJ, ji2Var, str2, bundle4));
                qi2VarI = qi2VarE;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            if (!(((yh2) obj).o instanceof si2)) {
                arrayList3.add(obj);
            }
        }
        int size2 = arrayList3.size();
        int i5 = 0;
        while (i5 < size2) {
            Object obj2 = arrayList3.get(i5);
            i5++;
            yh2 yh2Var3 = (yh2) obj2;
            List list = (List) o70.p0(arrayList2);
            if (nt1.g((list == null || (yh2Var = (yh2) o70.o0(list)) == null || (qi2Var = yh2Var.o) == null) ? null : qi2Var.n, yh2Var3.o.n)) {
                list.add(yh2Var3);
            } else {
                arrayList2.add(tv4.H(yh2Var3));
            }
        }
        s33 s33Var = new s33();
        int size3 = arrayList2.size();
        while (i2 < size3) {
            Object obj3 = arrayList2.get(i2);
            i2++;
            List list2 = (List) obj3;
            lk2 lk2VarB = this.t.b(((yh2) o70.h0(list2)).o.n);
            ArrayList arrayList4 = arrayList;
            this.v = new q6(s33Var, arrayList4, new u33(), this, bundle, 2);
            lk2VarB.d(list2, jj2Var);
            this.v = null;
            arrayList = arrayList4;
        }
        return s33Var.n;
    }

    public final void u(yh2 yh2Var) {
        yh2Var.getClass();
        yh2 yh2Var2 = (yh2) this.k.remove(yh2Var);
        if (yh2Var2 == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.l;
        kj kjVar = (kj) linkedHashMap.get(yh2Var2);
        Integer numValueOf = kjVar != null ? Integer.valueOf(kjVar.a.decrementAndGet()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            ei2 ei2Var = (ei2) this.f140u.get(this.t.b(yh2Var2.o.n));
            if (ei2Var != null) {
                ei2Var.c(yh2Var2);
            }
            linkedHashMap.remove(yh2Var2);
        }
    }

    public final void v() {
        kj kjVar;
        b23 b23Var;
        Set set;
        ArrayList arrayListD0 = o70.D0(this.f);
        if (arrayListD0.isEmpty()) {
            return;
        }
        ArrayList arrayListH = tv4.H(((yh2) o70.o0(arrayListD0)).o);
        ArrayList arrayList = new ArrayList();
        if (o70.o0(arrayListH) instanceof tt0) {
            Iterator it = o70.w0(arrayListD0).iterator();
            while (it.hasNext()) {
                qi2 qi2Var = ((yh2) it.next()).o;
                arrayList.add(qi2Var);
                if (!(qi2Var instanceof tt0) && !(qi2Var instanceof si2)) {
                    break;
                }
            }
        }
        HashMap map = new HashMap();
        for (yh2 yh2Var : o70.w0(arrayListD0)) {
            g22 g22Var = yh2Var.f421u.k;
            qi2 qi2Var2 = yh2Var.o;
            qi2 qi2Var3 = (qi2) o70.i0(arrayListH);
            g22 g22Var2 = g22.r;
            g22 g22Var3 = g22.q;
            if (qi2Var3 != null && qi2Var3.o.a == qi2Var2.o.a) {
                if (g22Var != g22Var2) {
                    ei2 ei2Var = (ei2) this.f140u.get(this.t.b(yh2Var.o.n));
                    if (nt1.g((ei2Var == null || (b23Var = ei2Var.f) == null || (set = (Set) b23Var.n.getValue()) == null) ? null : Boolean.valueOf(set.contains(yh2Var)), Boolean.TRUE) || ((kjVar = (kj) this.l.get(yh2Var)) != null && kjVar.a.get() == 0)) {
                        map.put(yh2Var, g22Var3);
                    } else {
                        map.put(yh2Var, g22Var2);
                    }
                }
                qi2 qi2Var4 = (qi2) o70.i0(arrayList);
                if (qi2Var4 != null && qi2Var4.o.a == qi2Var2.o.a) {
                    o70.t0(arrayList);
                }
                o70.t0(arrayListH);
                si2 si2Var = qi2Var2.p;
                if (si2Var != null) {
                    arrayListH.add(si2Var);
                }
            } else if (arrayList.isEmpty() || qi2Var2.o.a != ((qi2) o70.h0(arrayList)).o.a) {
                yh2Var.a(g22.p);
            } else {
                qi2 qi2Var5 = (qi2) o70.t0(arrayList);
                if (g22Var == g22Var2) {
                    yh2Var.a(g22Var3);
                } else if (g22Var != g22Var3) {
                    map.put(yh2Var, g22Var3);
                }
                si2 si2Var2 = qi2Var5.p;
                if (si2Var2 != null && !arrayList.contains(si2Var2)) {
                    arrayList.add(si2Var2);
                }
            }
        }
        int size = arrayListD0.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayListD0.get(i);
            i++;
            yh2 yh2Var2 = (yh2) obj;
            g22 g22Var4 = (g22) map.get(yh2Var2);
            if (g22Var4 != null) {
                yh2Var2.a(g22Var4);
            } else {
                yh2Var2.f421u.b();
            }
        }
    }
}
