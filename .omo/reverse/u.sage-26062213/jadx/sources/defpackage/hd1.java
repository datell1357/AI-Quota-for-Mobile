package defpackage;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class hd1 {
    public o6 A;
    public o6 B;
    public ArrayDeque C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public ArrayList I;
    public ArrayList J;
    public ArrayList K;
    public ld1 L;
    public final o9 M;
    public boolean b;
    public ArrayList d;
    public ArrayList e;
    public uo2 g;
    public final gw4 l;
    public final CopyOnWriteArrayList m;
    public final yc1 n;
    public final yc1 o;
    public final yc1 p;
    public final yc1 q;
    public final ad1 r;
    public int s;
    public vc1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public sc1 f126u;
    public lc1 v;
    public lc1 w;
    public final bd1 x;
    public final b21 y;
    public o6 z;
    public final ArrayList a = new ArrayList();
    public final qd1 c = new qd1(0);
    public final xc1 f = new xc1(this);
    public final up h = new up(1, this);
    public final AtomicInteger i = new AtomicInteger();
    public final Map j = Collections.synchronizedMap(new HashMap());
    public final Map k = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v12, types: [yc1] */
    /* JADX WARN: Type inference failed for: r0v13, types: [yc1] */
    /* JADX WARN: Type inference failed for: r0v14, types: [yc1] */
    /* JADX WARN: Type inference failed for: r0v15, types: [yc1] */
    public hd1() {
        Collections.synchronizedMap(new HashMap());
        this.l = new gw4(this);
        this.m = new CopyOnWriteArrayList();
        final int i = 0;
        this.n = new xf0(this) { // from class: yc1
            public final /* synthetic */ hd1 b;

            {
                this.b = this;
            }

            @Override // defpackage.xf0
            public final void accept(Object obj) {
                int i2 = i;
                hd1 hd1Var = this.b;
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (hd1Var.I()) {
                            hd1Var.h(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (hd1Var.I() && num.intValue() == 80) {
                            hd1Var.l(false);
                            break;
                        }
                        break;
                    case 2:
                        ff2 ff2Var = (ff2) obj;
                        if (hd1Var.I()) {
                            hd1Var.m(ff2Var.a, false);
                        }
                        break;
                    default:
                        yu2 yu2Var = (yu2) obj;
                        if (hd1Var.I()) {
                            hd1Var.r(yu2Var.a, false);
                        }
                        break;
                }
            }
        };
        final int i2 = 1;
        this.o = new xf0(this) { // from class: yc1
            public final /* synthetic */ hd1 b;

            {
                this.b = this;
            }

            @Override // defpackage.xf0
            public final void accept(Object obj) {
                int i22 = i2;
                hd1 hd1Var = this.b;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (hd1Var.I()) {
                            hd1Var.h(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (hd1Var.I() && num.intValue() == 80) {
                            hd1Var.l(false);
                            break;
                        }
                        break;
                    case 2:
                        ff2 ff2Var = (ff2) obj;
                        if (hd1Var.I()) {
                            hd1Var.m(ff2Var.a, false);
                        }
                        break;
                    default:
                        yu2 yu2Var = (yu2) obj;
                        if (hd1Var.I()) {
                            hd1Var.r(yu2Var.a, false);
                        }
                        break;
                }
            }
        };
        final int i3 = 2;
        this.p = new xf0(this) { // from class: yc1
            public final /* synthetic */ hd1 b;

            {
                this.b = this;
            }

            @Override // defpackage.xf0
            public final void accept(Object obj) {
                int i22 = i3;
                hd1 hd1Var = this.b;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (hd1Var.I()) {
                            hd1Var.h(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (hd1Var.I() && num.intValue() == 80) {
                            hd1Var.l(false);
                            break;
                        }
                        break;
                    case 2:
                        ff2 ff2Var = (ff2) obj;
                        if (hd1Var.I()) {
                            hd1Var.m(ff2Var.a, false);
                        }
                        break;
                    default:
                        yu2 yu2Var = (yu2) obj;
                        if (hd1Var.I()) {
                            hd1Var.r(yu2Var.a, false);
                        }
                        break;
                }
            }
        };
        final int i4 = 3;
        this.q = new xf0(this) { // from class: yc1
            public final /* synthetic */ hd1 b;

            {
                this.b = this;
            }

            @Override // defpackage.xf0
            public final void accept(Object obj) {
                int i22 = i4;
                hd1 hd1Var = this.b;
                switch (i22) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (hd1Var.I()) {
                            hd1Var.h(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (hd1Var.I() && num.intValue() == 80) {
                            hd1Var.l(false);
                            break;
                        }
                        break;
                    case 2:
                        ff2 ff2Var = (ff2) obj;
                        if (hd1Var.I()) {
                            hd1Var.m(ff2Var.a, false);
                        }
                        break;
                    default:
                        yu2 yu2Var = (yu2) obj;
                        if (hd1Var.I()) {
                            hd1Var.r(yu2Var.a, false);
                        }
                        break;
                }
            }
        };
        this.r = new ad1(this);
        this.s = -1;
        this.x = new bd1(this);
        this.y = new b21(i4);
        this.C = new ArrayDeque();
        this.M = new o9(8, this);
    }

    public static boolean G(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public static boolean H(lc1 lc1Var) {
        if (lc1Var.mHasMenu && lc1Var.mMenuVisible) {
            return true;
        }
        ArrayList arrayListW = lc1Var.mChildFragmentManager.c.w();
        int size = arrayListW.size();
        boolean zH = false;
        int i = 0;
        while (i < size) {
            Object obj = arrayListW.get(i);
            i++;
            lc1 lc1Var2 = (lc1) obj;
            if (lc1Var2 != null) {
                zH = H(lc1Var2);
            }
            if (zH) {
                return true;
            }
        }
        return false;
    }

    public static boolean J(lc1 lc1Var) {
        if (lc1Var == null) {
            return true;
        }
        hd1 hd1Var = lc1Var.mFragmentManager;
        return lc1Var.equals(hd1Var.w) && J(hd1Var.v);
    }

    public static void Y(lc1 lc1Var) {
        if (G(2)) {
            Log.v("FragmentManager", "show: " + lc1Var);
        }
        if (lc1Var.mHidden) {
            lc1Var.mHidden = false;
            lc1Var.mHiddenChanged = !lc1Var.mHiddenChanged;
        }
    }

    public final lc1 A(int i) {
        qd1 qd1Var = this.c;
        ArrayList arrayList = (ArrayList) qd1Var.o;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            lc1 lc1Var = (lc1) arrayList.get(size);
            if (lc1Var != null && lc1Var.mFragmentId == i) {
                return lc1Var;
            }
        }
        for (pd1 pd1Var : ((HashMap) qd1Var.p).values()) {
            if (pd1Var != null) {
                lc1 lc1Var2 = pd1Var.c;
                if (lc1Var2.mFragmentId == i) {
                    return lc1Var2;
                }
            }
        }
        return null;
    }

    public final lc1 B(String str) {
        qd1 qd1Var = this.c;
        ArrayList arrayList = (ArrayList) qd1Var.o;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            lc1 lc1Var = (lc1) arrayList.get(size);
            if (lc1Var != null && str.equals(lc1Var.mTag)) {
                return lc1Var;
            }
        }
        for (pd1 pd1Var : ((HashMap) qd1Var.p).values()) {
            if (pd1Var != null) {
                lc1 lc1Var2 = pd1Var.c;
                if (str.equals(lc1Var2.mTag)) {
                    return lc1Var2;
                }
            }
        }
        return null;
    }

    public final ViewGroup C(lc1 lc1Var) {
        ViewGroup viewGroup = lc1Var.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (lc1Var.mContainerId <= 0 || !this.f126u.c()) {
            return null;
        }
        View viewB = this.f126u.b(lc1Var.mContainerId);
        if (viewB instanceof ViewGroup) {
            return (ViewGroup) viewB;
        }
        return null;
    }

    public final bd1 D() {
        lc1 lc1Var = this.v;
        return lc1Var != null ? lc1Var.mFragmentManager.D() : this.x;
    }

    public final b21 E() {
        lc1 lc1Var = this.v;
        return lc1Var != null ? lc1Var.mFragmentManager.E() : this.y;
    }

    public final void F(lc1 lc1Var) {
        if (G(2)) {
            Log.v("FragmentManager", "hide: " + lc1Var);
        }
        if (lc1Var.mHidden) {
            return;
        }
        lc1Var.mHidden = true;
        lc1Var.mHiddenChanged = true ^ lc1Var.mHiddenChanged;
        X(lc1Var);
    }

    public final boolean I() {
        lc1 lc1Var = this.v;
        if (lc1Var == null) {
            return true;
        }
        return lc1Var.isAdded() && this.v.getParentFragmentManager().I();
    }

    public final void K(int i, boolean z) {
        vc1 vc1Var;
        if (this.t == null && i != -1) {
            k21.n("No activity");
            return;
        }
        if (z || i != this.s) {
            this.s = i;
            qd1 qd1Var = this.c;
            HashMap map = (HashMap) qd1Var.p;
            ArrayList arrayList = (ArrayList) qd1Var.o;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                pd1 pd1Var = (pd1) map.get(((lc1) obj).mWho);
                if (pd1Var != null) {
                    pd1Var.j();
                }
            }
            for (pd1 pd1Var2 : map.values()) {
                if (pd1Var2 != null) {
                    pd1Var2.j();
                    lc1 lc1Var = pd1Var2.c;
                    if (lc1Var.mRemoving && !lc1Var.isInBackStack()) {
                        if (lc1Var.mBeingSaved && !((HashMap) qd1Var.q).containsKey(lc1Var.mWho)) {
                            pd1Var2.m();
                        }
                        qd1Var.D(pd1Var2);
                    }
                }
            }
            ArrayList arrayListV = qd1Var.v();
            int size2 = arrayListV.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayListV.get(i3);
                i3++;
                pd1 pd1Var3 = (pd1) obj2;
                lc1 lc1Var2 = pd1Var3.c;
                if (lc1Var2.mDeferStart) {
                    if (this.b) {
                        this.H = true;
                    } else {
                        lc1Var2.mDeferStart = false;
                        pd1Var3.j();
                    }
                }
            }
            if (this.D && (vc1Var = this.t) != null && this.s == 7) {
                ((pc1) vc1Var).r.invalidateMenu();
                this.D = false;
            }
        }
    }

    public final void L() {
        if (this.t == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.L.g = false;
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null) {
                lc1Var.noteStateNotSaved();
            }
        }
    }

    public final boolean M() {
        return N(-1, 0);
    }

    public final boolean N(int i, int i2) {
        x(false);
        w(true);
        lc1 lc1Var = this.w;
        if (lc1Var != null && i < 0 && lc1Var.getChildFragmentManager().M()) {
            return true;
        }
        boolean zO = O(this.I, this.J, i, i2);
        if (zO) {
            this.b = true;
            try {
                Q(this.I, this.J);
            } finally {
                d();
            }
        }
        a0();
        boolean z = this.H;
        qd1 qd1Var = this.c;
        if (z) {
            this.H = false;
            ArrayList arrayListV = qd1Var.v();
            int size = arrayListV.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayListV.get(i3);
                i3++;
                pd1 pd1Var = (pd1) obj;
                lc1 lc1Var2 = pd1Var.c;
                if (lc1Var2.mDeferStart) {
                    if (this.b) {
                        this.H = true;
                    } else {
                        lc1Var2.mDeferStart = false;
                        pd1Var.j();
                    }
                }
            }
        }
        ((HashMap) qd1Var.p).values().removeAll(Collections.singleton(null));
        return zO;
    }

    public final boolean O(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z = (i2 & 1) != 0;
        ArrayList arrayList3 = this.d;
        int size = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i < 0) {
                size = z ? 0 : this.d.size() - 1;
            } else {
                int size2 = this.d.size() - 1;
                while (size2 >= 0) {
                    cq cqVar = (cq) this.d.get(size2);
                    if (i >= 0 && i == cqVar.r) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    size = size2;
                } else if (z) {
                    size = size2;
                    while (size > 0) {
                        cq cqVar2 = (cq) this.d.get(size - 1);
                        if (i < 0 || i != cqVar2.r) {
                            break;
                        }
                        size--;
                    }
                } else if (size2 != this.d.size() - 1) {
                    size = size2 + 1;
                }
            }
        }
        if (size < 0) {
            return false;
        }
        for (int size3 = this.d.size() - 1; size3 >= size; size3--) {
            arrayList.add((cq) this.d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void P(lc1 lc1Var) {
        if (G(2)) {
            Log.v("FragmentManager", "remove: " + lc1Var + " nesting=" + lc1Var.mBackStackNesting);
        }
        boolean zIsInBackStack = lc1Var.isInBackStack();
        if (lc1Var.mDetached && zIsInBackStack) {
            return;
        }
        qd1 qd1Var = this.c;
        synchronized (((ArrayList) qd1Var.o)) {
            ((ArrayList) qd1Var.o).remove(lc1Var);
        }
        lc1Var.mAdded = false;
        if (H(lc1Var)) {
            this.D = true;
        }
        lc1Var.mRemoving = true;
        X(lc1Var);
    }

    public final void Q(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            k21.n("Internal error with the back stack records");
            return;
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((cq) arrayList.get(i)).o) {
                if (i2 != i) {
                    z(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((cq) arrayList.get(i2)).o) {
                        i2++;
                    }
                }
                z(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            z(arrayList, arrayList2, i2, size);
        }
    }

    public final void R(Parcelable parcelable) {
        gw4 gw4Var;
        int i;
        boolean z;
        int i2;
        pd1 pd1Var;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.t.o.getClassLoader());
                this.k.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.t.o.getClassLoader());
                arrayList.add((od1) bundle.getParcelable("state"));
            }
        }
        qd1 qd1Var = this.c;
        HashMap map = (HashMap) qd1Var.q;
        HashMap map2 = (HashMap) qd1Var.p;
        map.clear();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            od1 od1Var = (od1) obj;
            map.put(od1Var.o, od1Var);
        }
        jd1 jd1Var = (jd1) bundle3.getParcelable("state");
        if (jd1Var == null) {
            return;
        }
        map2.clear();
        ArrayList arrayList2 = jd1Var.n;
        int size2 = arrayList2.size();
        int i4 = 0;
        while (true) {
            gw4Var = this.l;
            i = 2;
            if (i4 >= size2) {
                break;
            }
            Object obj2 = arrayList2.get(i4);
            i4++;
            od1 od1Var2 = (od1) ((HashMap) qd1Var.q).remove((String) obj2);
            if (od1Var2 != null) {
                lc1 lc1Var = (lc1) this.L.b.get(od1Var2.o);
                if (lc1Var != null) {
                    if (G(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + lc1Var);
                    }
                    pd1Var = new pd1(gw4Var, qd1Var, lc1Var, od1Var2);
                } else {
                    pd1Var = new pd1(this.l, this.c, this.t.o.getClassLoader(), D(), od1Var2);
                }
                lc1 lc1Var2 = pd1Var.c;
                lc1Var2.mFragmentManager = this;
                if (G(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + lc1Var2.mWho + "): " + lc1Var2);
                }
                pd1Var.k(this.t.o.getClassLoader());
                qd1Var.C(pd1Var);
                pd1Var.e = this.s;
            }
        }
        ld1 ld1Var = this.L;
        ld1Var.getClass();
        ArrayList arrayList3 = new ArrayList(ld1Var.b.values());
        int size3 = arrayList3.size();
        int i5 = 0;
        while (true) {
            z = true;
            if (i5 >= size3) {
                break;
            }
            Object obj3 = arrayList3.get(i5);
            i5++;
            lc1 lc1Var3 = (lc1) obj3;
            if (map2.get(lc1Var3.mWho) == null) {
                if (G(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + lc1Var3 + " that was not found in the set of active Fragments " + jd1Var.n);
                }
                this.L.f(lc1Var3);
                lc1Var3.mFragmentManager = this;
                pd1 pd1Var2 = new pd1(gw4Var, qd1Var, lc1Var3);
                pd1Var2.e = 1;
                pd1Var2.j();
                lc1Var3.mRemoving = true;
                pd1Var2.j();
            }
        }
        ArrayList arrayList4 = jd1Var.o;
        ((ArrayList) qd1Var.o).clear();
        if (arrayList4 != null) {
            int size4 = arrayList4.size();
            int i6 = 0;
            while (i6 < size4) {
                Object obj4 = arrayList4.get(i6);
                i6++;
                String str3 = (String) obj4;
                lc1 lc1VarS = qd1Var.s(str3);
                if (lc1VarS == null) {
                    k21.n(di0.v("No instantiated fragment for (", str3, ")"));
                    return;
                }
                if (G(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + lc1VarS);
                }
                qd1Var.i(lc1VarS);
            }
        }
        if (jd1Var.p != null) {
            this.d = new ArrayList(jd1Var.p.length);
            int i7 = 0;
            while (true) {
                dq[] dqVarArr = jd1Var.p;
                if (i7 >= dqVarArr.length) {
                    break;
                }
                dq dqVar = dqVarArr[i7];
                ArrayList arrayList5 = dqVar.o;
                cq cqVar = new cq(this);
                int[] iArr = dqVar.n;
                int i8 = 0;
                int i9 = 0;
                while (i8 < iArr.length) {
                    td1 td1Var = new td1();
                    int i10 = i8 + 1;
                    int i11 = i;
                    td1Var.a = iArr[i8];
                    if (G(i11)) {
                        Log.v("FragmentManager", "Instantiate " + cqVar + " op #" + i9 + " base fragment #" + iArr[i10]);
                    }
                    td1Var.h = g22.values()[dqVar.p[i9]];
                    td1Var.i = g22.values()[dqVar.q[i9]];
                    int i12 = i8 + 2;
                    td1Var.c = iArr[i10] != 0 ? z : false;
                    int i13 = iArr[i12];
                    td1Var.d = i13;
                    int i14 = iArr[i8 + 3];
                    td1Var.e = i14;
                    int i15 = i8 + 5;
                    int i16 = iArr[i8 + 4];
                    td1Var.f = i16;
                    i8 += 6;
                    int[] iArr2 = iArr;
                    int i17 = iArr2[i15];
                    td1Var.g = i17;
                    cqVar.b = i13;
                    cqVar.c = i14;
                    cqVar.d = i16;
                    cqVar.e = i17;
                    cqVar.b(td1Var);
                    i9++;
                    i = i11;
                    iArr = iArr2;
                    z = true;
                }
                int i18 = i;
                cqVar.f = dqVar.r;
                cqVar.h = dqVar.s;
                cqVar.g = true;
                cqVar.i = dqVar.f72u;
                cqVar.j = dqVar.v;
                cqVar.k = dqVar.w;
                cqVar.l = dqVar.x;
                cqVar.m = dqVar.y;
                cqVar.n = dqVar.z;
                cqVar.o = dqVar.A;
                cqVar.r = dqVar.t;
                for (int i19 = 0; i19 < arrayList5.size(); i19++) {
                    String str4 = (String) arrayList5.get(i19);
                    if (str4 != null) {
                        ((td1) cqVar.a.get(i19)).b = qd1Var.s(str4);
                    }
                }
                cqVar.d(1);
                if (G(i18)) {
                    StringBuilder sbU = xw1.u("restoreAllState: back stack #", i7, " (index ");
                    sbU.append(cqVar.r);
                    sbU.append("): ");
                    sbU.append(cqVar);
                    Log.v("FragmentManager", sbU.toString());
                    PrintWriter printWriter = new PrintWriter(new s72());
                    cqVar.f("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(cqVar);
                i7++;
                i = i18;
                z = true;
            }
            i2 = 0;
        } else {
            i2 = 0;
            this.d = null;
        }
        this.i.set(jd1Var.q);
        String str5 = jd1Var.r;
        if (str5 != null) {
            lc1 lc1VarS2 = qd1Var.s(str5);
            this.w = lc1VarS2;
            q(lc1VarS2);
        }
        ArrayList arrayList6 = jd1Var.s;
        if (arrayList6 != null) {
            while (i2 < arrayList6.size()) {
                this.j.put((String) arrayList6.get(i2), (eq) jd1Var.t.get(i2));
                i2++;
            }
        }
        this.C = new ArrayDeque(jd1Var.f149u);
    }

    public final Bundle S() {
        int i;
        ArrayList arrayList;
        dq[] dqVarArr;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = e().iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            pq0 pq0Var = (pq0) it.next();
            if (pq0Var.e) {
                if (G(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                pq0Var.e = false;
                pq0Var.d();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((pq0) it2.next()).g();
        }
        x(true);
        this.E = true;
        this.L.g = true;
        qd1 qd1Var = this.c;
        qd1Var.getClass();
        HashMap map = (HashMap) qd1Var.p;
        ArrayList arrayList2 = new ArrayList(map.size());
        for (pd1 pd1Var : map.values()) {
            if (pd1Var != null) {
                lc1 lc1Var = pd1Var.c;
                pd1Var.m();
                arrayList2.add(lc1Var.mWho);
                if (G(2)) {
                    Log.v("FragmentManager", "Saved state of " + lc1Var + ": " + lc1Var.mSavedFragmentState);
                }
            }
        }
        qd1 qd1Var2 = this.c;
        qd1Var2.getClass();
        ArrayList arrayList3 = new ArrayList(((HashMap) qd1Var2.q).values());
        if (!arrayList3.isEmpty()) {
            qd1 qd1Var3 = this.c;
            synchronized (((ArrayList) qd1Var3.o)) {
                try {
                    if (((ArrayList) qd1Var3.o).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) qd1Var3.o).size());
                        ArrayList arrayList4 = (ArrayList) qd1Var3.o;
                        int size2 = arrayList4.size();
                        int i2 = 0;
                        while (i2 < size2) {
                            Object obj = arrayList4.get(i2);
                            i2++;
                            lc1 lc1Var2 = (lc1) obj;
                            arrayList.add(lc1Var2.mWho);
                            if (G(2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + lc1Var2.mWho + "): " + lc1Var2);
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList5 = this.d;
            if (arrayList5 == null || (size = arrayList5.size()) <= 0) {
                dqVarArr = null;
            } else {
                dqVarArr = new dq[size];
                for (int i3 = 0; i3 < size; i3++) {
                    dqVarArr[i3] = new dq((cq) this.d.get(i3));
                    if (G(2)) {
                        StringBuilder sbU = xw1.u("saveAllState: adding back stack #", i3, ": ");
                        sbU.append(this.d.get(i3));
                        Log.v("FragmentManager", sbU.toString());
                    }
                }
            }
            jd1 jd1Var = new jd1();
            jd1Var.r = null;
            ArrayList arrayList6 = new ArrayList();
            jd1Var.s = arrayList6;
            ArrayList arrayList7 = new ArrayList();
            jd1Var.t = arrayList7;
            jd1Var.n = arrayList2;
            jd1Var.o = arrayList;
            jd1Var.p = dqVarArr;
            jd1Var.q = this.i.get();
            lc1 lc1Var3 = this.w;
            if (lc1Var3 != null) {
                jd1Var.r = lc1Var3.mWho;
            }
            arrayList6.addAll(this.j.keySet());
            arrayList7.addAll(this.j.values());
            jd1Var.f149u = new ArrayList(this.C);
            bundle.putParcelable("state", jd1Var);
            for (String str : this.k.keySet()) {
                bundle.putBundle(di0.u("result_", str), (Bundle) this.k.get(str));
            }
            int size3 = arrayList3.size();
            while (i < size3) {
                Object obj2 = arrayList3.get(i);
                i++;
                od1 od1Var = (od1) obj2;
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", od1Var);
                bundle.putBundle("fragment_" + od1Var.o, bundle2);
            }
        } else if (G(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return bundle;
        }
        return bundle;
    }

    public final void T() {
        synchronized (this.a) {
            try {
                if (this.a.size() == 1) {
                    this.t.p.removeCallbacks(this.M);
                    this.t.p.post(this.M);
                    a0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void U(lc1 lc1Var, boolean z) {
        ViewGroup viewGroupC = C(lc1Var);
        if (viewGroupC == null || !(viewGroupC instanceof tc1)) {
            return;
        }
        ((tc1) viewGroupC).setDrawDisappearingViewsLast(!z);
    }

    public final void V(lc1 lc1Var, g22 g22Var) {
        if (lc1Var.equals(this.c.s(lc1Var.mWho)) && (lc1Var.mHost == null || lc1Var.mFragmentManager == this)) {
            lc1Var.mMaxState = g22Var;
        } else {
            mk0.i("Fragment ", lc1Var, " is not an active fragment of FragmentManager ", this);
        }
    }

    public final void W(lc1 lc1Var) {
        if (lc1Var != null) {
            if (!lc1Var.equals(this.c.s(lc1Var.mWho)) || (lc1Var.mHost != null && lc1Var.mFragmentManager != this)) {
                mk0.i("Fragment ", lc1Var, " is not an active fragment of FragmentManager ", this);
                return;
            }
        }
        lc1 lc1Var2 = this.w;
        this.w = lc1Var;
        q(lc1Var2);
        q(this.w);
    }

    public final void X(lc1 lc1Var) {
        ViewGroup viewGroupC = C(lc1Var);
        if (viewGroupC != null) {
            if (lc1Var.getPopExitAnim() + lc1Var.getPopEnterAnim() + lc1Var.getExitAnim() + lc1Var.getEnterAnim() > 0) {
                if (viewGroupC.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupC.setTag(R.id.visible_removing_fragment_view_tag, lc1Var);
                }
                ((lc1) viewGroupC.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(lc1Var.getPopDirection());
            }
        }
    }

    public final void Z(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new s72());
        vc1 vc1Var = this.t;
        if (vc1Var == null) {
            try {
                u("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw illegalStateException;
            }
        }
        try {
            ((pc1) vc1Var).r.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw illegalStateException;
        }
    }

    public final pd1 a(lc1 lc1Var) {
        String str = lc1Var.mPreviousWho;
        if (str != null) {
            sd1.c(lc1Var, str);
        }
        if (G(2)) {
            Log.v("FragmentManager", "add: " + lc1Var);
        }
        pd1 pd1VarF = f(lc1Var);
        lc1Var.mFragmentManager = this;
        qd1 qd1Var = this.c;
        qd1Var.C(pd1VarF);
        if (!lc1Var.mDetached) {
            qd1Var.i(lc1Var);
            lc1Var.mRemoving = false;
            if (lc1Var.mView == null) {
                lc1Var.mHiddenChanged = false;
            }
            if (H(lc1Var)) {
                this.D = true;
            }
        }
        return pd1VarF;
    }

    public final void a0() {
        synchronized (this.a) {
            try {
                if (!this.a.isEmpty()) {
                    this.h.e(true);
                    return;
                }
                up upVar = this.h;
                ArrayList arrayList = this.d;
                upVar.e((arrayList != null ? arrayList.size() : 0) > 0 && J(this.v));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(vc1 vc1Var, sc1 sc1Var, lc1 lc1Var) {
        if (this.t != null) {
            k21.n("Already attached");
            return;
        }
        this.t = vc1Var;
        this.f126u = sc1Var;
        this.v = lc1Var;
        CopyOnWriteArrayList copyOnWriteArrayList = this.m;
        if (lc1Var != null) {
            copyOnWriteArrayList.add(new cd1(lc1Var));
        } else if (vc1Var instanceof md1) {
            copyOnWriteArrayList.add((md1) vc1Var);
        }
        if (this.v != null) {
            a0();
        }
        if (vc1Var instanceof vo2) {
            vo2 vo2Var = (vo2) vc1Var;
            uo2 onBackPressedDispatcher = vo2Var.getOnBackPressedDispatcher();
            this.g = onBackPressedDispatcher;
            p22 p22Var = vo2Var;
            if (lc1Var != null) {
                p22Var = lc1Var;
            }
            onBackPressedDispatcher.a(this.h, p22Var);
        }
        int i = 0;
        if (lc1Var != null) {
            ld1 ld1Var = lc1Var.mFragmentManager.L;
            HashMap map = ld1Var.c;
            ld1 ld1Var2 = (ld1) map.get(lc1Var.mWho);
            if (ld1Var2 == null) {
                ld1Var2 = new ld1(ld1Var.e);
                map.put(lc1Var.mWho, ld1Var2);
            }
            this.L = ld1Var2;
        } else if (vc1Var instanceof cc4) {
            bc4 viewModelStore = ((cc4) vc1Var).getViewModelStore();
            viewModelStore.getClass();
            tk0 tk0Var = tk0.b;
            tk0Var.getClass();
            qd1 qd1Var = new qd1(viewModelStore, ld1.h, tk0Var);
            i50 i50VarA = y33.a(ld1.class);
            String strB = i50VarA.b();
            if (strB == null) {
                k21.f("Local and anonymous classes can not be ViewModels");
                return;
            }
            this.L = (ld1) qd1Var.B(i50VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        } else {
            this.L = new ld1(false);
        }
        ld1 ld1Var3 = this.L;
        int i2 = 1;
        ld1Var3.g = this.E || this.F;
        this.c.r = ld1Var3;
        Object obj = this.t;
        int i3 = 3;
        if ((obj instanceof yc3) && lc1Var == null) {
            uc3 savedStateRegistry = ((yc3) obj).getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new mc1(i3, this));
            Bundle bundleA = savedStateRegistry.a("android:support:fragments");
            if (bundleA != null) {
                R(bundleA);
            }
        }
        Object obj2 = this.t;
        if (obj2 instanceof t6) {
            p6 activityResultRegistry = ((t6) obj2).getActivityResultRegistry();
            String strConcat = "FragmentManager:".concat(lc1Var != null ? xw1.s(new StringBuilder(), lc1Var.mWho, ":") : "");
            this.z = activityResultRegistry.c(strConcat.concat("StartActivityForResult"), new h6(i2), new dd1(i, this));
            this.A = activityResultRegistry.c(strConcat.concat("StartIntentSenderForResult"), new h6(i3), new zc1(this, i2));
            this.B = activityResultRegistry.c(strConcat.concat("RequestPermissions"), new h6(i), new zc1(this, i));
        }
        Object obj3 = this.t;
        if (obj3 instanceof yo2) {
            ((yo2) obj3).addOnConfigurationChangedListener(this.n);
        }
        Object obj4 = this.t;
        if (obj4 instanceof kp2) {
            ((kp2) obj4).addOnTrimMemoryListener(this.o);
        }
        Object obj5 = this.t;
        if (obj5 instanceof fp2) {
            ((fp2) obj5).addOnMultiWindowModeChangedListener(this.p);
        }
        Object obj6 = this.t;
        if (obj6 instanceof gp2) {
            ((gp2) obj6).addOnPictureInPictureModeChangedListener(this.q);
        }
        Object obj7 = this.t;
        if ((obj7 instanceof vb2) && lc1Var == null) {
            ((vb2) obj7).addMenuProvider(this.r);
        }
    }

    public final void c(lc1 lc1Var) {
        if (G(2)) {
            Log.v("FragmentManager", "attach: " + lc1Var);
        }
        if (lc1Var.mDetached) {
            lc1Var.mDetached = false;
            if (lc1Var.mAdded) {
                return;
            }
            this.c.i(lc1Var);
            if (G(2)) {
                Log.v("FragmentManager", "add from attach: " + lc1Var);
            }
            if (H(lc1Var)) {
                this.D = true;
            }
        }
    }

    public final void d() {
        this.b = false;
        this.J.clear();
        this.I.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        ArrayList arrayListV = this.c.v();
        int size = arrayListV.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayListV.get(i);
            i++;
            ViewGroup viewGroup = ((pd1) obj).c.mContainer;
            if (viewGroup != null) {
                hashSet.add(pq0.h(viewGroup, E()));
            }
        }
        return hashSet;
    }

    public final pd1 f(lc1 lc1Var) {
        String str = lc1Var.mWho;
        qd1 qd1Var = this.c;
        pd1 pd1Var = (pd1) ((HashMap) qd1Var.p).get(str);
        if (pd1Var != null) {
            return pd1Var;
        }
        pd1 pd1Var2 = new pd1(this.l, qd1Var, lc1Var);
        pd1Var2.k(this.t.o.getClassLoader());
        pd1Var2.e = this.s;
        return pd1Var2;
    }

    public final void g(lc1 lc1Var) {
        if (G(2)) {
            Log.v("FragmentManager", "detach: " + lc1Var);
        }
        if (lc1Var.mDetached) {
            return;
        }
        lc1Var.mDetached = true;
        if (lc1Var.mAdded) {
            if (G(2)) {
                Log.v("FragmentManager", "remove from detach: " + lc1Var);
            }
            qd1 qd1Var = this.c;
            synchronized (((ArrayList) qd1Var.o)) {
                ((ArrayList) qd1Var.o).remove(lc1Var);
            }
            lc1Var.mAdded = false;
            if (H(lc1Var)) {
                this.D = true;
            }
            X(lc1Var);
        }
    }

    public final void h(boolean z, Configuration configuration) {
        if (z && (this.t instanceof yo2)) {
            Z(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null) {
                lc1Var.performConfigurationChanged(configuration);
                if (z) {
                    lc1Var.mChildFragmentManager.h(true, configuration);
                }
            }
        }
    }

    public final boolean i(MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null && lc1Var.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(Menu menu, MenuInflater menuInflater) {
        if (this.s < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null && lc1Var.isMenuVisible() && lc1Var.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lc1Var);
                z = true;
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                lc1 lc1Var2 = (lc1) this.e.get(i);
                if (arrayList == null || !arrayList.contains(lc1Var2)) {
                    lc1Var2.onDestroyOptionsMenu();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public final void k() {
        boolean zIsChangingConfigurations = true;
        this.G = true;
        x(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((pq0) it.next()).g();
        }
        vc1 vc1Var = this.t;
        boolean z = vc1Var instanceof cc4;
        qd1 qd1Var = this.c;
        if (z) {
            zIsChangingConfigurations = ((ld1) qd1Var.r).f;
        } else {
            SignInHubActivity signInHubActivity = vc1Var.o;
            if (signInHubActivity != null) {
                zIsChangingConfigurations = true ^ signInHubActivity.isChangingConfigurations();
            }
        }
        if (zIsChangingConfigurations) {
            Iterator it2 = this.j.values().iterator();
            while (it2.hasNext()) {
                ArrayList arrayList = ((eq) it2.next()).n;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str = (String) obj;
                    ld1 ld1Var = (ld1) qd1Var.r;
                    ld1Var.getClass();
                    if (G(3)) {
                        Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
                    }
                    ld1Var.e(str);
                }
            }
        }
        t(-1);
        Object obj2 = this.t;
        if (obj2 instanceof kp2) {
            ((kp2) obj2).removeOnTrimMemoryListener(this.o);
        }
        Object obj3 = this.t;
        if (obj3 instanceof yo2) {
            ((yo2) obj3).removeOnConfigurationChangedListener(this.n);
        }
        Object obj4 = this.t;
        if (obj4 instanceof fp2) {
            ((fp2) obj4).removeOnMultiWindowModeChangedListener(this.p);
        }
        Object obj5 = this.t;
        if (obj5 instanceof gp2) {
            ((gp2) obj5).removeOnPictureInPictureModeChangedListener(this.q);
        }
        Object obj6 = this.t;
        if ((obj6 instanceof vb2) && this.v == null) {
            ((vb2) obj6).removeMenuProvider(this.r);
        }
        this.t = null;
        this.f126u = null;
        this.v = null;
        if (this.g != null) {
            this.h.d();
            this.g = null;
        }
        o6 o6Var = this.z;
        if (o6Var != null) {
            o6Var.b();
            this.A.b();
            this.B.b();
        }
    }

    public final void l(boolean z) {
        if (z && (this.t instanceof kp2)) {
            Z(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null) {
                lc1Var.performLowMemory();
                if (z) {
                    lc1Var.mChildFragmentManager.l(true);
                }
            }
        }
    }

    public final void m(boolean z, boolean z2) {
        if (z2 && (this.t instanceof fp2)) {
            Z(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null) {
                lc1Var.performMultiWindowModeChanged(z);
                if (z2) {
                    lc1Var.mChildFragmentManager.m(z, true);
                }
            }
        }
    }

    public final void n() {
        ArrayList arrayListW = this.c.w();
        int size = arrayListW.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayListW.get(i);
            i++;
            lc1 lc1Var = (lc1) obj;
            if (lc1Var != null) {
                lc1Var.onHiddenChanged(lc1Var.isHidden());
                lc1Var.mChildFragmentManager.n();
            }
        }
    }

    public final boolean o(MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null && lc1Var.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void p(Menu menu) {
        if (this.s < 1) {
            return;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null) {
                lc1Var.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void q(lc1 lc1Var) {
        if (lc1Var != null) {
            if (lc1Var.equals(this.c.s(lc1Var.mWho))) {
                lc1Var.performPrimaryNavigationFragmentChanged();
            }
        }
    }

    public final void r(boolean z, boolean z2) {
        if (z2 && (this.t instanceof gp2)) {
            Z(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null) {
                lc1Var.performPictureInPictureModeChanged(z);
                if (z2) {
                    lc1Var.mChildFragmentManager.r(z, true);
                }
            }
        }
    }

    public final boolean s(Menu menu) {
        boolean z = false;
        if (this.s < 1) {
            return false;
        }
        for (lc1 lc1Var : this.c.x()) {
            if (lc1Var != null && lc1Var.isMenuVisible() && lc1Var.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void t(int i) {
        try {
            this.b = true;
            for (pd1 pd1Var : ((HashMap) this.c.p).values()) {
                if (pd1Var != null) {
                    pd1Var.e = i;
                }
            }
            K(i, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((pq0) it.next()).g();
            }
            this.b = false;
            x(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        lc1 lc1Var = this.v;
        if (lc1Var != null) {
            sb.append(lc1Var.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.v)));
            sb.append("}");
        } else {
            vc1 vc1Var = this.t;
            if (vc1Var != null) {
                sb.append(vc1Var.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.t)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        qd1 qd1Var = this.c;
        ArrayList arrayList = (ArrayList) qd1Var.o;
        String str3 = str + "    ";
        HashMap map = (HashMap) qd1Var.p;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (pd1 pd1Var : map.values()) {
                printWriter.print(str);
                if (pd1Var != null) {
                    lc1 lc1Var = pd1Var.c;
                    printWriter.println(lc1Var);
                    lc1Var.dump(str3, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                lc1 lc1Var2 = (lc1) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(lc1Var2.toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                lc1 lc1Var3 = (lc1) this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(lc1Var3.toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                cq cqVar = (cq) this.d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(cqVar.toString());
                cqVar.f(str2, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.a) {
            try {
                int size4 = this.a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj = (fd1) this.a.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f126u);
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    public final void v(fd1 fd1Var, boolean z) {
        if (!z) {
            if (this.t == null) {
                if (this.G) {
                    k21.n("FragmentManager has been destroyed");
                    return;
                } else {
                    k21.n("FragmentManager has not been attached to a host.");
                    return;
                }
            }
            if (this.E || this.F) {
                k21.n("Can not perform this action after onSaveInstanceState");
                return;
            }
        }
        synchronized (this.a) {
            try {
                if (this.t == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.a.add(fd1Var);
                    T();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(boolean z) {
        if (this.b) {
            k21.n("FragmentManager is already executing transactions");
            return;
        }
        if (this.t == null) {
            if (this.G) {
                k21.n("FragmentManager has been destroyed");
                return;
            } else {
                k21.n("FragmentManager has not been attached to a host.");
                return;
            }
        }
        if (Looper.myLooper() != this.t.p.getLooper()) {
            k21.n("Must be called from main thread of fragment host");
            return;
        }
        if (!z && (this.E || this.F)) {
            k21.n("Can not perform this action after onSaveInstanceState");
        } else if (this.I == null) {
            this.I = new ArrayList();
            this.J = new ArrayList();
        }
    }

    public final boolean x(boolean z) {
        boolean zA;
        ArrayList arrayList;
        w(z);
        boolean z2 = false;
        while (true) {
            ArrayList arrayList2 = this.I;
            ArrayList arrayList3 = this.J;
            synchronized (this.a) {
                if (this.a.isEmpty()) {
                    zA = false;
                } else {
                    try {
                        int size = this.a.size();
                        int i = 0;
                        zA = false;
                        while (true) {
                            arrayList = this.a;
                            if (i >= size) {
                                break;
                            }
                            zA |= ((fd1) arrayList.get(i)).a(arrayList2, arrayList3);
                            i++;
                        }
                        arrayList.clear();
                        this.t.p.removeCallbacks(this.M);
                    } finally {
                    }
                }
            }
            if (!zA) {
                break;
            }
            this.b = true;
            try {
                Q(this.I, this.J);
                d();
                z2 = true;
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        a0();
        if (this.H) {
            this.H = false;
            ArrayList arrayListV = this.c.v();
            int size2 = arrayListV.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayListV.get(i2);
                i2++;
                pd1 pd1Var = (pd1) obj;
                lc1 lc1Var = pd1Var.c;
                if (lc1Var.mDeferStart) {
                    if (this.b) {
                        this.H = true;
                    } else {
                        lc1Var.mDeferStart = false;
                        pd1Var.j();
                    }
                }
            }
        }
        ((HashMap) this.c.p).values().removeAll(Collections.singleton(null));
        return z2;
    }

    public final void y(cq cqVar, boolean z) {
        if (z && (this.t == null || this.G)) {
            return;
        }
        w(z);
        cqVar.a(this.I, this.J);
        this.b = true;
        try {
            Q(this.I, this.J);
            d();
            a0();
            boolean z2 = this.H;
            qd1 qd1Var = this.c;
            if (z2) {
                this.H = false;
                ArrayList arrayListV = qd1Var.v();
                int size = arrayListV.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayListV.get(i);
                    i++;
                    pd1 pd1Var = (pd1) obj;
                    lc1 lc1Var = pd1Var.c;
                    if (lc1Var.mDeferStart) {
                        if (this.b) {
                            this.H = true;
                        } else {
                            lc1Var.mDeferStart = false;
                            pd1Var.j();
                        }
                    }
                }
            }
            ((HashMap) qd1Var.p).values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            d();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0224 A[PHI: r14
  0x0224: PHI (r14v14 int) = (r14v13 int), (r14v15 int) binds: [B:99:0x0214, B:104:0x0220] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(java.util.ArrayList r24, java.util.ArrayList r25, int r26, int r27) {
        /*
            Method dump skipped, instruction units count: 1184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hd1.z(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }
}
