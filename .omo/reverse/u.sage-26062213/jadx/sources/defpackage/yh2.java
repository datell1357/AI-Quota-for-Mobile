package defpackage;

import android.os.Bundle;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yh2 implements p22, cc4, ej1, yc3 {
    public final di2 n;
    public qi2 o;
    public final Bundle p;
    public g22 q;
    public final ji2 r;
    public final String s;
    public final Bundle t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ai2 f421u = new ai2(this);

    public yh2(di2 di2Var, qi2 qi2Var, Bundle bundle, g22 g22Var, ji2 ji2Var, String str, Bundle bundle2) {
        this.n = di2Var;
        this.o = qi2Var;
        this.p = bundle;
        this.q = g22Var;
        this.r = ji2Var;
        this.s = str;
        this.t = bundle2;
        new nv3(new cc(20, this));
    }

    public final void a(g22 g22Var) {
        ai2 ai2Var = this.f421u;
        ai2Var.getClass();
        ai2Var.k = g22Var;
        ai2Var.b();
    }

    public final boolean equals(Object obj) {
        Set<String> setKeySet;
        if (obj != null && (obj instanceof yh2)) {
            yh2 yh2Var = (yh2) obj;
            Bundle bundle = yh2Var.p;
            if (nt1.g(this.s, yh2Var.s) && nt1.g(this.o, yh2Var.o) && nt1.g(this.f421u.j, yh2Var.f421u.j) && nt1.g(getSavedStateRegistry(), yh2Var.getSavedStateRegistry())) {
                Bundle bundle2 = this.p;
                if (nt1.g(bundle2, bundle)) {
                    return true;
                }
                if (bundle2 != null && (setKeySet = bundle2.keySet()) != null) {
                    Set<String> set = setKeySet;
                    if ((set instanceof Collection) && set.isEmpty()) {
                        return true;
                    }
                    for (String str : set) {
                        if (!nt1.g(bundle2.get(str), bundle != null ? bundle.get(str) : null)) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @Override // defpackage.ej1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.vk0 getDefaultViewModelCreationExtras() {
        /*
            r5 = this;
            ai2 r0 = r5.f421u
            r0.getClass()
            of2 r1 = new of2
            r2 = 0
            r1.<init>(r2)
            yh2 r2 = r0.a
            java.util.LinkedHashMap r3 = r1.a
            b21 r4 = defpackage.pc3.a
            r3.put(r4, r2)
            qz0 r4 = defpackage.pc3.b
            r3.put(r4, r2)
            android.os.Bundle r0 = r0.a()
            if (r0 == 0) goto L24
            b21 r2 = defpackage.pc3.c
            r3.put(r2, r0)
        L24:
            r0 = 0
            di2 r5 = r5.n
            if (r5 == 0) goto L3a
            android.content.Context r5 = r5.o
            if (r5 == 0) goto L32
            android.content.Context r5 = r5.getApplicationContext()
            goto L33
        L32:
            r5 = r0
        L33:
            boolean r2 = r5 instanceof android.app.Application
            if (r2 == 0) goto L3a
            android.app.Application r5 = (android.app.Application) r5
            goto L3b
        L3a:
            r5 = r0
        L3b:
            if (r5 == 0) goto L3e
            r0 = r5
        L3e:
            if (r0 == 0) goto L45
            ls3 r5 = defpackage.yb4.d
            r3.put(r5, r0)
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yh2.getDefaultViewModelCreationExtras():vk0");
    }

    @Override // defpackage.ej1
    public final zb4 getDefaultViewModelProviderFactory() {
        return this.f421u.l;
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        return this.f421u.j;
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        return this.f421u.h.b;
    }

    @Override // defpackage.cc4
    public final bc4 getViewModelStore() {
        ai2 ai2Var = this.f421u;
        if (!ai2Var.i) {
            k21.n("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
            return null;
        }
        if (ai2Var.j.d == g22.n) {
            k21.n("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
            return null;
        }
        ji2 ji2Var = ai2Var.e;
        if (ji2Var == null) {
            k21.n("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
            return null;
        }
        String str = ai2Var.f;
        str.getClass();
        LinkedHashMap linkedHashMap = ji2Var.b;
        bc4 bc4Var = (bc4) linkedHashMap.get(str);
        if (bc4Var != null) {
            return bc4Var;
        }
        bc4 bc4Var2 = new bc4();
        linkedHashMap.put(str, bc4Var2);
        return bc4Var2;
    }

    public final int hashCode() {
        Set<String> setKeySet;
        int iHashCode = this.o.hashCode() + (this.s.hashCode() * 31);
        Bundle bundle = this.p;
        if (bundle != null && (setKeySet = bundle.keySet()) != null) {
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                int i = iHashCode * 31;
                Object obj = bundle.get((String) it.next());
                iHashCode = i + (obj != null ? obj.hashCode() : 0);
            }
        }
        return getSavedStateRegistry().hashCode() + ((this.f421u.j.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return this.f421u.toString();
    }
}
