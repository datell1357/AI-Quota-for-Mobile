package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h33 extends zb0 {
    public final qc a;
    public final eh b;
    public final Object c;
    public tu1 d;
    public Throwable e;
    public final ArrayList f;
    public List g;
    public lg2 h;
    public final ug2 i;
    public final ArrayList j;
    public final ArrayList k;
    public final kg2 l;
    public final xh1 m;
    public final kg2 n;
    public final kg2 o;
    public ArrayList p;
    public lg2 q;
    public o20 r;
    public final wr3 s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final wr3 f119u;
    public final ui3 v;
    public final vu1 w;
    public final hi0 x;
    public final b21 y;
    public static final wr3 z = xr3.a(tu2.q);
    public static final AtomicReference A = new AtomicReference(Boolean.FALSE);

    public h33(hi0 hi0Var) {
        qc qcVar = new qc(new d33(this, 0));
        this.a = qcVar;
        this.b = new eh(new d33(this, 1));
        this.c = new Object();
        this.f = new ArrayList();
        this.h = new lg2();
        this.i = new ug2(new ec0[16]);
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.l = new kg2();
        this.m = new xh1(7);
        this.n = new kg2();
        this.o = new kg2();
        this.s = xr3.a(null);
        this.f119u = xr3.a(f33.p);
        this.v = new ui3(1);
        vu1 vu1Var = new vu1((tu1) hi0Var.K(mj1.W));
        vu1Var.V(new v(24, this));
        this.w = vu1Var;
        this.x = hi0Var.F(qcVar).F(vu1Var);
        this.y = new b21(23);
    }

    public static final void G(ArrayList arrayList, h33 h33Var, ec0 ec0Var) {
        arrayList.clear();
        synchronized (h33Var.c) {
            Iterator it = h33Var.k.iterator();
            if (it.hasNext()) {
                ((oe2) it.next()).getClass();
                throw null;
            }
        }
    }

    public static void w(og2 og2Var) {
        try {
            if (og2Var.w() instanceof ro3) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
        } finally {
            og2Var.c();
        }
    }

    public final boolean A() {
        return this.i.p != 0 || z() || B() || this.l.j();
    }

    public final boolean B() {
        return !this.t && (((lj) ((rp) this.b.p).d).get() & 134217727) > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean C() {
        /*
            r2 = this;
            java.lang.Object r0 = r2.c
            monitor-enter(r0)
            lg2 r1 = r2.h     // Catch: java.lang.Throwable -> L21
            boolean r1 = r1.h()     // Catch: java.lang.Throwable -> L21
            if (r1 != 0) goto L23
            ug2 r1 = r2.i     // Catch: java.lang.Throwable -> L21
            int r1 = r1.p     // Catch: java.lang.Throwable -> L21
            if (r1 == 0) goto L12
            goto L23
        L12:
            boolean r1 = r2.z()     // Catch: java.lang.Throwable -> L21
            if (r1 != 0) goto L23
            boolean r2 = r2.B()     // Catch: java.lang.Throwable -> L21
            if (r2 == 0) goto L1f
            goto L23
        L1f:
            r2 = 0
            goto L24
        L21:
            r2 = move-exception
            goto L26
        L23:
            r2 = 1
        L24:
            monitor-exit(r0)
            return r2
        L26:
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h33.C():boolean");
    }

    public final List D() {
        List list = this.g;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = this.f;
        List arrayList2 = arrayList.isEmpty() ? g01.n : new ArrayList(arrayList);
        this.g = arrayList2;
        return arrayList2;
    }

    public final void E() {
        n20 n20VarY;
        synchronized (this.c) {
            n20VarY = y();
            if (((f33) this.f119u.getValue()).compareTo(f33.o) <= 0) {
                Throwable th = this.e;
                CancellationException cancellationException = new CancellationException("Recomposer shutdown; frame clock awaiter will never resume");
                cancellationException.initCause(th);
                throw cancellationException;
            }
        }
        if (n20VarY != null) {
            ((o20) n20VarY).g(t64.a);
        }
    }

    public final void F(ec0 ec0Var) {
        synchronized (this.c) {
            ArrayList arrayList = this.k;
            if (arrayList.size() > 0) {
                ((oe2) arrayList.get(0)).getClass();
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0138, code lost:
    
        r3 = r11.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013d, code lost:
    
        if (r4 >= r3) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0147, code lost:
    
        if (((defpackage.js2) r11.get(r4)).o == null) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0149, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x014c, code lost:
    
        r3 = new java.util.ArrayList(r11.size());
        r4 = r11.size();
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x015a, code lost:
    
        if (r9 >= r4) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015c, code lost:
    
        r12 = (defpackage.js2) r11.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0164, code lost:
    
        if (r12.o != null) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0166, code lost:
    
        r12 = (defpackage.oe2) r12.n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x016d, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0170, code lost:
    
        r4 = r18.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0172, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0173, code lost:
    
        defpackage.o70.d0(r3, r18.k);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0178, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0179, code lost:
    
        r3 = new java.util.ArrayList(r11.size());
        r4 = r11.size();
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0187, code lost:
    
        if (r9 >= r4) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0189, code lost:
    
        r12 = r11.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0192, code lost:
    
        if (((defpackage.js2) r12).o == null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0194, code lost:
    
        r3.add(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0197, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x019a, code lost:
    
        r11 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List H(java.util.List r19, defpackage.lg2 r20) {
        /*
            Method dump skipped, instruction units count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h33.H(java.util.List, lg2):java.util.List");
    }

    public final ec0 I(ec0 ec0Var, lg2 lg2Var) {
        lg2 lg2Var2;
        og2 og2VarC;
        if (!ec0Var.I.F && !ec0Var.v() && ((lg2Var2 = this.q) == null || !lg2Var2.c(ec0Var))) {
            int i = 23;
            v vVar = new v(i, ec0Var);
            m mVar = new m(i, ec0Var, lg2Var);
            po3 po3VarJ = wo3.j();
            og2 og2Var = po3VarJ instanceof og2 ? (og2) po3VarJ : null;
            if (og2Var == null || (og2VarC = og2Var.C(vVar, mVar)) == null) {
                k21.n("Cannot create a mutable snapshot of an read-only snapshot");
            } else {
                try {
                    po3 po3VarJ2 = og2VarC.j();
                    if (lg2Var != null) {
                        try {
                            if (lg2Var.h()) {
                                h4 h4Var = new h4(26, lg2Var, ec0Var);
                                ag1 ag1Var = ec0Var.I;
                                if (ag1Var.F) {
                                    wb0.a("Preparing a composition while composing is not supported");
                                }
                                ag1Var.F = true;
                                try {
                                    h4Var.a();
                                    ag1Var.F = false;
                                } catch (Throwable th) {
                                    ag1Var.F = false;
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            po3.q(po3VarJ2);
                            throw th2;
                        }
                    }
                    boolean zX = ec0Var.x();
                    po3.q(po3VarJ2);
                    if (zX) {
                        return ec0Var;
                    }
                } finally {
                    w(og2VarC);
                }
            }
        }
        return null;
    }

    public final void J(Throwable th, ec0 ec0Var) throws Throwable {
        if (!((Boolean) A.get()).booleanValue() || (th instanceof db0)) {
            synchronized (this.c) {
                Log.e("ComposeInternal", "Error was captured in composition.", th);
                e33 e33Var = (e33) this.s.getValue();
                if (e33Var != null) {
                    throw e33Var.a;
                }
                wr3 wr3Var = this.s;
                e33 e33Var2 = new e33(th);
                wr3Var.getClass();
                wr3Var.i(null, e33Var2);
            }
            throw th;
        }
        synchronized (this.c) {
            try {
                Log.e("ComposeInternal", "Error was captured in composition while live edit was enabled.", th);
                this.j.clear();
                this.i.h();
                this.h = new lg2();
                this.k.clear();
                this.l.a();
                this.n.a();
                wr3 wr3Var2 = this.s;
                e33 e33Var3 = new e33(th);
                wr3Var2.getClass();
                wr3Var2.i(null, e33Var3);
                if (ec0Var != null) {
                    L(ec0Var);
                }
                if (y() != null) {
                    wb0.a("expected to go to inactive state due to composition error");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean K() {
        boolean zA;
        synchronized (this.c) {
            if (this.h.g()) {
                return A();
            }
            List listD = D();
            vd3 vd3Var = new vd3(this.h);
            this.h = new lg2();
            try {
                int size = listD.size();
                for (int i = 0; i < size; i++) {
                    ((ec0) listD.get(i)).y(vd3Var);
                    if (((f33) this.f119u.getValue()).compareTo(f33.o) <= 0) {
                        break;
                    }
                }
                synchronized (this.c) {
                    if (y() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                    zA = A();
                }
                return zA;
            } catch (Throwable th) {
                synchronized (this.c) {
                    lg2 lg2Var = this.h;
                    lg2Var.getClass();
                    Iterator<E> it = vd3Var.iterator();
                    while (it.hasNext()) {
                        lg2Var.k(it.next());
                    }
                    throw th;
                }
            }
        }
    }

    public final void L(ec0 ec0Var) {
        ArrayList arrayList = this.p;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.p = arrayList;
        }
        if (!arrayList.contains(ec0Var)) {
            arrayList.add(ec0Var);
        }
        if (this.f.remove(ec0Var)) {
            this.g = null;
        }
    }

    @Override // defpackage.zb0
    public final void a(ec0 ec0Var, df1 df1Var) throws Throwable {
        f33 f33Var;
        boolean zContains;
        og2 og2VarC;
        boolean z2 = ec0Var.I.F;
        synchronized (this.c) {
            f33 f33Var2 = (f33) this.f119u.getValue();
            f33Var = f33.o;
            zContains = f33Var2.compareTo(f33Var) > 0 ? true ^ D().contains(ec0Var) : true;
        }
        try {
            int i = 23;
            v vVar = new v(i, ec0Var);
            m mVar = new m(i, ec0Var, (Object) null);
            po3 po3VarJ = wo3.j();
            og2 og2Var = po3VarJ instanceof og2 ? (og2) po3VarJ : null;
            if (og2Var == null || (og2VarC = og2Var.C(vVar, mVar)) == null) {
                throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot");
            }
            try {
                po3 po3VarJ2 = og2VarC.j();
                try {
                    ec0Var.j(df1Var);
                    synchronized (this.c) {
                        if (((f33) this.f119u.getValue()).compareTo(f33Var) > 0 && !D().contains(ec0Var)) {
                            this.f.add(ec0Var);
                            this.g = null;
                        }
                    }
                    if (!z2) {
                        wo3.j().m();
                    }
                    try {
                        F(ec0Var);
                        try {
                            ec0Var.d();
                            ec0Var.f();
                            if (z2) {
                                return;
                            }
                            wo3.j().m();
                        } catch (Throwable th) {
                            J(th, null);
                        }
                    } catch (Throwable th2) {
                        J(th2, ec0Var);
                    }
                } finally {
                    po3.q(po3VarJ2);
                }
            } finally {
                w(og2VarC);
            }
        } catch (Throwable th3) {
            if (zContains) {
                synchronized (this.c) {
                }
            }
            J(th3, ec0Var);
        }
    }

    @Override // defpackage.zb0
    public final lg2 b(ec0 ec0Var, sm3 sm3Var, df1 df1Var) {
        ui3 ui3Var = this.v;
        try {
            sm3 sm3Var2 = ec0Var.C;
            ec0Var.C = sm3Var;
            try {
                a(ec0Var, df1Var);
                lg2 lg2Var = (lg2) ui3Var.c();
                if (lg2Var == null) {
                    lg2Var = ud3.a;
                    lg2Var.getClass();
                }
                return lg2Var;
            } finally {
                ec0Var.C = sm3Var2;
            }
        } finally {
            ui3Var.k(null);
        }
    }

    @Override // defpackage.zb0
    public final boolean d() {
        return ((Boolean) A.get()).booleanValue();
    }

    @Override // defpackage.zb0
    public final boolean e() {
        return false;
    }

    @Override // defpackage.zb0
    public final boolean f() {
        return false;
    }

    @Override // defpackage.zb0
    public final long g() {
        return 1000L;
    }

    @Override // defpackage.zb0
    public final yb0 h() {
        return null;
    }

    @Override // defpackage.zb0
    public final hi0 j() {
        return this.x;
    }

    @Override // defpackage.zb0
    public final boolean k() {
        return false;
    }

    @Override // defpackage.zb0
    public final void l(ec0 ec0Var) {
        n20 n20VarY;
        synchronized (this.c) {
            if (this.i.i(ec0Var)) {
                n20VarY = null;
            } else {
                this.i.c(ec0Var);
                n20VarY = y();
            }
        }
        if (n20VarY != null) {
            ((o20) n20VarY).g(t64.a);
        }
    }

    @Override // defpackage.zb0
    public final ne2 m(oe2 oe2Var) {
        ne2 ne2Var;
        synchronized (this.c) {
            ne2Var = (ne2) this.n.k(oe2Var);
        }
        return ne2Var;
    }

    @Override // defpackage.zb0
    public final lg2 n(ec0 ec0Var, sm3 sm3Var, lg2 lg2Var) {
        ui3 ui3Var = this.v;
        try {
            K();
            ec0Var.y(new vd3(lg2Var));
            sm3 sm3Var2 = ec0Var.C;
            ec0Var.C = sm3Var;
            try {
                ec0 ec0VarI = I(ec0Var, null);
                if (ec0VarI != null) {
                    F(ec0Var);
                    ec0VarI.d();
                    ec0VarI.f();
                }
                lg2 lg2Var2 = (lg2) ui3Var.c();
                if (lg2Var2 == null) {
                    lg2Var2 = ud3.a;
                    lg2Var2.getClass();
                }
                return lg2Var2;
            } finally {
                ec0Var.C = sm3Var2;
            }
        } finally {
            ui3Var.k(null);
        }
    }

    @Override // defpackage.zb0
    public final void q(c33 c33Var) {
        ui3 ui3Var = this.v;
        lg2 lg2Var = (lg2) ui3Var.c();
        if (lg2Var == null) {
            lg2 lg2Var2 = ud3.a;
            lg2Var = new lg2();
            ui3Var.k(lg2Var);
        }
        lg2Var.a(c33Var);
    }

    @Override // defpackage.zb0
    public final void r(ec0 ec0Var) {
        synchronized (this.c) {
            try {
                lg2 lg2Var = this.q;
                if (lg2Var == null) {
                    lg2 lg2Var2 = ud3.a;
                    lg2Var = new lg2();
                    this.q = lg2Var;
                }
                lg2Var.a(ec0Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.zb0
    public final q20 s(je jeVar) {
        eh ehVar = this.b;
        rp rpVar = (rp) ehVar.p;
        cm2 cm2Var = new cm2();
        cm2Var.a = jeVar;
        return rpVar.f(cm2Var, (h4) ehVar.q);
    }

    @Override // defpackage.zb0
    public final void v(ec0 ec0Var) {
        synchronized (this.c) {
            if (this.f.remove(ec0Var)) {
                this.g = null;
            }
            this.i.k(ec0Var);
            this.j.remove(ec0Var);
        }
    }

    public final void x() {
        synchronized (this.c) {
            if (((f33) this.f119u.getValue()).compareTo(f33.r) >= 0) {
                wr3 wr3Var = this.f119u;
                f33 f33Var = f33.o;
                wr3Var.getClass();
                wr3Var.i(null, f33Var);
            }
        }
        this.w.j(null);
    }

    public final n20 y() {
        wr3 wr3Var = this.f119u;
        int iCompareTo = ((f33) wr3Var.getValue()).compareTo(f33.o);
        wr3 wr3Var2 = this.s;
        ArrayList arrayList = this.k;
        ArrayList arrayList2 = this.j;
        ug2 ug2Var = this.i;
        if (iCompareTo > 0) {
            Object value = wr3Var2.getValue();
            f33 f33Var = f33.s;
            f33 f33Var2 = f33.p;
            if (value == null) {
                if (this.d == null) {
                    this.h = new lg2();
                    ug2Var.h();
                    if (z() || B()) {
                        f33Var2 = f33.q;
                    }
                } else {
                    f33Var2 = (ug2Var.p != 0 || this.h.h() || !arrayList2.isEmpty() || !arrayList.isEmpty() || z() || B() || this.l.j()) ? f33Var : f33.r;
                }
            }
            wr3Var.i(null, f33Var2);
            if (f33Var2 != f33Var) {
                return null;
            }
            o20 o20Var = this.r;
            this.r = null;
            return o20Var;
        }
        List listD = D();
        int size = listD.size();
        for (int i = 0; i < size; i++) {
        }
        this.f.clear();
        this.g = g01.n;
        this.h = new lg2();
        ug2Var.h();
        arrayList2.clear();
        arrayList.clear();
        this.p = null;
        o20 o20Var2 = this.r;
        if (o20Var2 != null) {
            o20Var2.l(null);
        }
        this.r = null;
        wr3Var2.h(null);
        return null;
    }

    public final boolean z() {
        return !this.t && (((lj) ((rp) this.a.p).d).get() & 134217727) > 0;
    }

    @Override // defpackage.zb0
    public final void o(Set set) {
    }
}
