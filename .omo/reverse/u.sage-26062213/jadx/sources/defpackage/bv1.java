package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class bv1 implements tu1 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(bv1.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater o;
    public static final /* synthetic */ long p;
    public static final /* synthetic */ long q;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    static {
        Unsafe unsafe = sa5.a;
        q = unsafe.objectFieldOffset(bv1.class.getDeclaredField("_state$volatile"));
        o = AtomicReferenceFieldUpdater.newUpdater(bv1.class, Object.class, "_parentHandle$volatile");
        p = unsafe.objectFieldOffset(bv1.class.getDeclaredField("_parentHandle$volatile"));
    }

    public bv1(boolean z) {
        this._state$volatile = z ? cv1.g : cv1.f;
    }

    public static o40 a0(i72 i72Var) {
        while (i72Var.n()) {
            i72Var = i72Var.m();
        }
        while (true) {
            i72Var = i72Var.l();
            if (!i72Var.n()) {
                if (i72Var instanceof o40) {
                    return (o40) i72Var;
                }
                if (i72Var instanceof om2) {
                    return null;
                }
            }
        }
    }

    public static String l0(Object obj) {
        if (!(obj instanceof av1)) {
            return obj instanceof rp1 ? ((rp1) obj).b() ? "Active" : "New" : obj instanceof c90 ? "Cancelled" : "Completed";
        }
        av1 av1Var = (av1) obj;
        return av1Var.f() ? "Cancelling" : av1.o.get(av1Var) == 1 ? "Completing" : "Active";
    }

    public Object A(bv3 bv3Var) {
        return s(bv3Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        return r5;
     */
    @Override // defpackage.tu1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.n40 B(defpackage.bv1 r7) {
        /*
            r6 = this;
            o40 r5 = new o40
            r5.<init>(r7)
            r5.t = r6
        L7:
            java.lang.Object r4 = r6.M()
            boolean r7 = r4 instanceof defpackage.a01
            if (r7 == 0) goto L35
            r7 = r4
            a01 r7 = (defpackage.a01) r7
            boolean r0 = r7.n
            if (r0 == 0) goto L30
        L16:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = defpackage.bv1.n
            r7.getClass()
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r2 = defpackage.bv1.q
            r1 = r6
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L27
            goto L7a
        L27:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r2)
            if (r6 == r4) goto L2e
            goto L4b
        L2e:
            r6 = r1
            goto L16
        L30:
            r1 = r6
            r1.e0(r7)
            goto L4b
        L35:
            r1 = r6
            boolean r6 = r4 instanceof defpackage.rp1
            tm2 r7 = defpackage.tm2.n
            r0 = 0
            if (r6 == 0) goto L7c
            r6 = r4
            rp1 r6 = (defpackage.rp1) r6
            om2 r6 = r6.d()
            if (r6 != 0) goto L4d
            wu1 r4 = (defpackage.wu1) r4
            r1.f0(r4)
        L4b:
            r6 = r1
            goto L7
        L4d:
            r2 = 7
            boolean r2 = r6.e(r5, r2)
            if (r2 == 0) goto L55
            goto L7a
        L55:
            r2 = 3
            boolean r6 = r6.e(r5, r2)
            java.lang.Object r1 = r1.M()
            boolean r2 = r1 instanceof defpackage.av1
            if (r2 == 0) goto L69
            av1 r1 = (defpackage.av1) r1
            java.lang.Throwable r0 = r1.e()
            goto L75
        L69:
            boolean r2 = r1 instanceof defpackage.c90
            if (r2 == 0) goto L70
            c90 r1 = (defpackage.c90) r1
            goto L71
        L70:
            r1 = r0
        L71:
            if (r1 == 0) goto L75
            java.lang.Throwable r0 = r1.a
        L75:
            r5.s(r0)
            if (r6 == 0) goto L7b
        L7a:
            return r5
        L7b:
            return r7
        L7c:
            java.lang.Object r6 = r1.M()
            boolean r1 = r6 instanceof defpackage.c90
            if (r1 == 0) goto L87
            c90 r6 = (defpackage.c90) r6
            goto L88
        L87:
            r6 = r0
        L88:
            if (r6 == 0) goto L8c
            java.lang.Throwable r0 = r6.a
        L8c:
            r5.s(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bv1.B(bv1):n40");
    }

    public final Object C(av1 av1Var, Object obj) throws Throwable {
        av1 av1Var2;
        Throwable th;
        Throwable thE;
        bv1 bv1Var;
        av1 av1Var3;
        c90 c90Var = obj instanceof c90 ? (c90) obj : null;
        Throwable th2 = c90Var != null ? c90Var.a : null;
        synchronized (av1Var) {
            try {
                av1Var.f();
                ArrayList arrayListG = av1Var.g(th2);
                thE = E(av1Var, arrayListG);
                if (thE != null) {
                    try {
                        if (arrayListG.size() > 1) {
                            Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListG.size()));
                            int size = arrayListG.size();
                            int i = 0;
                            while (i < size) {
                                Object obj2 = arrayListG.get(i);
                                i++;
                                Throwable th3 = (Throwable) obj2;
                                if (th3 != thE && th3 != thE && !(th3 instanceof CancellationException) && setNewSetFromMap.add(th3)) {
                                    on4.j(thE, th3);
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        av1Var2 = av1Var;
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                av1Var2 = av1Var;
                th = th5;
            }
        }
        if (thE != null && thE != th2) {
            obj = new c90(thE, false);
        }
        if (thE != null && (v(thE) || O(thE))) {
            obj.getClass();
            c90.b.compareAndSet((c90) obj, 0, 1);
        }
        c0(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = n;
        Object sp1Var = obj instanceof rp1 ? new sp1((rp1) obj) : obj;
        while (true) {
            atomicReferenceFieldUpdater.getClass();
            Unsafe unsafe = sa5.a;
            long j = q;
            bv1Var = this;
            av1Var3 = av1Var;
            if (unsafe.compareAndSwapObject(bv1Var, j, av1Var3, sp1Var) || unsafe.getObjectVolatile(bv1Var, j) != av1Var3) {
                break;
            }
            this = bv1Var;
            av1Var = av1Var3;
        }
        bv1Var.y(av1Var3, obj);
        return obj;
    }

    public final Object D() throws Throwable {
        Object objM = M();
        if (objM instanceof rp1) {
            k21.n("This job has not completed yet");
            return null;
        }
        if (objM instanceof c90) {
            throw ((c90) objM).a;
        }
        return cv1.a(objM);
    }

    public final Throwable E(av1 av1Var, ArrayList arrayList) {
        Object obj;
        Object obj2 = null;
        if (arrayList.isEmpty()) {
            if (av1Var.f()) {
                return new uu1(w(), null, this);
            }
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i2);
            i2++;
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof nz3) {
            int size2 = arrayList.size();
            while (true) {
                if (i >= size2) {
                    break;
                }
                Object obj3 = arrayList.get(i);
                i++;
                Throwable th3 = (Throwable) obj3;
                if (th3 != th2 && (th3 instanceof nz3)) {
                    obj2 = obj3;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    @Override // defpackage.hi0
    public final hi0 F(hi0 hi0Var) {
        return ca.B(this, hi0Var);
    }

    public boolean G() {
        return true;
    }

    public boolean H() {
        return this instanceof z80;
    }

    public final om2 I(rp1 rp1Var) {
        om2 om2VarD = rp1Var.d();
        if (om2VarD != null) {
            return om2VarD;
        }
        if (rp1Var instanceof a01) {
            return new om2();
        }
        if (rp1Var instanceof wu1) {
            f0((wu1) rp1Var);
            return null;
        }
        mk0.k(rp1Var, "State should have list: ");
        return null;
    }

    public final n40 J() {
        o.getClass();
        return (n40) sa5.a.getObjectVolatile(this, p);
    }

    @Override // defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        return ca.r(this, gi0Var);
    }

    public final Object M() {
        n.getClass();
        return sa5.a.getObjectVolatile(this, q);
    }

    @Override // defpackage.tu1
    public final CancellationException N() {
        CancellationException cancellationException;
        Object objM = M();
        if (objM instanceof av1) {
            Throwable thE = ((av1) objM).e();
            if (thE == null) {
                mk0.k(this, "Job is still new or active: ");
                return null;
            }
            String strConcat = getClass().getSimpleName().concat(" is cancelling");
            cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
            return cancellationException == null ? new uu1(strConcat, thE, this) : cancellationException;
        }
        if (objM instanceof rp1) {
            mk0.k(this, "Job is still new or active: ");
            return null;
        }
        if (!(objM instanceof c90)) {
            return new uu1(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        Throwable th = ((c90) objM).a;
        cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new uu1(w(), th, this) : cancellationException;
    }

    public boolean O(Throwable th) {
        return false;
    }

    public final void Q(tu1 tu1Var) {
        tm2 tm2Var = tm2.n;
        if (tu1Var == null) {
            h0(tm2Var);
            return;
        }
        tu1Var.start();
        n40 n40VarB = tu1Var.B(this);
        h0(n40VarB);
        if (M() instanceof rp1) {
            return;
        }
        n40VarB.a();
        h0(tm2Var);
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x008d, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.jv0 S(boolean r7, defpackage.wu1 r8) {
        /*
            r6 = this;
            r8.t = r6
        L2:
            java.lang.Object r4 = r6.M()
            boolean r0 = r4 instanceof defpackage.a01
            if (r0 == 0) goto L33
            r0 = r4
            a01 r0 = (defpackage.a01) r0
            boolean r1 = r0.n
            if (r1 == 0) goto L2d
        L11:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.bv1.n
            r0.getClass()
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r2 = defpackage.bv1.q
            r1 = r6
            r5 = r8
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L23
            goto L74
        L23:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r2)
            if (r6 == r4) goto L2a
            goto L75
        L2a:
            r6 = r1
            r8 = r5
            goto L11
        L2d:
            r1 = r6
            r5 = r8
            r1.e0(r0)
            goto L75
        L33:
            r1 = r6
            r5 = r8
            boolean r6 = r4 instanceof defpackage.rp1
            tm2 r8 = defpackage.tm2.n
            r0 = 0
            if (r6 == 0) goto L78
            r6 = r4
            rp1 r6 = (defpackage.rp1) r6
            om2 r2 = r6.d()
            if (r2 != 0) goto L4b
            wu1 r4 = (defpackage.wu1) r4
            r1.f0(r4)
            goto L75
        L4b:
            boolean r3 = r5.r()
            if (r3 == 0) goto L6d
            boolean r3 = r6 instanceof defpackage.av1
            if (r3 == 0) goto L58
            av1 r6 = (defpackage.av1) r6
            goto L59
        L58:
            r6 = r0
        L59:
            if (r6 == 0) goto L5f
            java.lang.Throwable r0 = r6.e()
        L5f:
            if (r0 != 0) goto L67
            r6 = 5
            boolean r6 = r2.e(r5, r6)
            goto L72
        L67:
            if (r7 == 0) goto L8d
            r5.s(r0)
            return r8
        L6d:
            r6 = 1
            boolean r6 = r2.e(r5, r6)
        L72:
            if (r6 == 0) goto L75
        L74:
            return r5
        L75:
            r6 = r1
            r8 = r5
            goto L2
        L78:
            if (r7 == 0) goto L8d
            java.lang.Object r6 = r1.M()
            boolean r7 = r6 instanceof defpackage.c90
            if (r7 == 0) goto L85
            c90 r6 = (defpackage.c90) r6
            goto L86
        L85:
            r6 = r0
        L86:
            if (r6 == 0) goto L8a
            java.lang.Throwable r0 = r6.a
        L8a:
            r5.s(r0)
        L8d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bv1.S(boolean, wu1):jv0");
    }

    public boolean T() {
        return this instanceof sw;
    }

    public final boolean U(Object obj) {
        Object objO0;
        do {
            objO0 = o0(M(), obj);
            if (objO0 == cv1.a) {
                return false;
            }
            if (objO0 == cv1.b) {
                return true;
            }
        } while (objO0 == cv1.c);
        p(objO0);
        return true;
    }

    @Override // defpackage.tu1
    public final jv0 V(pe1 pe1Var) {
        return S(true, new du1(pe1Var));
    }

    public final Object W(Object obj) {
        Object objO0;
        do {
            objO0 = o0(M(), obj);
            if (objO0 == cv1.a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                c90 c90Var = obj instanceof c90 ? (c90) obj : null;
                throw new IllegalStateException(str, c90Var != null ? c90Var.a : null);
            }
        } while (objO0 == cv1.c);
        return objO0;
    }

    public String X() {
        return getClass().getSimpleName();
    }

    @Override // defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        return ca.z(this, gi0Var);
    }

    @Override // defpackage.tu1
    public boolean b() {
        Object objM = M();
        return (objM instanceof rp1) && ((rp1) objM).b();
    }

    public final void b0(om2 om2Var, Throwable th) {
        om2Var.e(new b42(4), 4);
        Object objK = om2Var.k();
        objK.getClass();
        v00 v00Var = null;
        for (i72 i72VarL = (i72) objK; !i72VarL.equals(om2Var); i72VarL = i72VarL.l()) {
            if ((i72VarL instanceof wu1) && ((wu1) i72VarL).r()) {
                try {
                    ((wu1) i72VarL).s(th);
                } catch (Throwable th2) {
                    if (v00Var != null) {
                        on4.j(v00Var, th2);
                    } else {
                        v00Var = new v00(1, "Exception in completion handler " + i72VarL + " for " + this, th2);
                    }
                }
            }
        }
        if (v00Var != null) {
            P(v00Var);
        }
        v(th);
    }

    public final void e0(a01 a01Var) {
        om2 om2Var = new om2();
        Object qp1Var = a01Var.n ? om2Var : new qp1(om2Var);
        while (true) {
            n.getClass();
            Unsafe unsafe = sa5.a;
            long j = q;
            bv1 bv1Var = this;
            a01 a01Var2 = a01Var;
            if (unsafe.compareAndSwapObject(bv1Var, j, a01Var2, qp1Var) || unsafe.getObjectVolatile(bv1Var, j) != a01Var2) {
                return;
            }
            this = bv1Var;
            a01Var = a01Var2;
        }
    }

    public final void f0(wu1 wu1Var) {
        wu1Var.g(new om2());
        i72 i72VarL = wu1Var.l();
        while (true) {
            n.getClass();
            Unsafe unsafe = sa5.a;
            long j = q;
            bv1 bv1Var = this;
            wu1 wu1Var2 = wu1Var;
            if (unsafe.compareAndSwapObject(bv1Var, j, wu1Var2, i72VarL) || unsafe.getObjectVolatile(bv1Var, j) != wu1Var2) {
                return;
            }
            this = bv1Var;
            wu1Var = wu1Var2;
        }
    }

    public final void g0(wu1 wu1Var) {
        bv1 bv1Var;
        while (true) {
            Object objM = this.M();
            if (!(objM instanceof wu1)) {
                if (!(objM instanceof rp1) || ((rp1) objM).d() == null) {
                    return;
                }
                wu1Var.o();
                return;
            }
            if (objM != wu1Var) {
                return;
            }
            while (true) {
                n.getClass();
                Unsafe unsafe = sa5.a;
                long j = q;
                bv1Var = this;
                if (unsafe.compareAndSwapObject(bv1Var, j, objM, cv1.g)) {
                    return;
                }
                if (unsafe.getObjectVolatile(bv1Var, j) != objM) {
                    break;
                } else {
                    this = bv1Var;
                }
            }
            this = bv1Var;
        }
    }

    @Override // defpackage.fi0
    public final gi0 getKey() {
        return mj1.W;
    }

    public final void h0(n40 n40Var) {
        o.getClass();
        sa5.a.putObjectVolatile(this, p, n40Var);
    }

    @Override // defpackage.tu1
    public final Object i0(fh0 fh0Var) {
        Object objM;
        t64 t64Var;
        do {
            objM = M();
            boolean z = objM instanceof rp1;
            t64Var = t64.a;
            if (!z) {
                n44.k0(fh0Var.e());
                return t64Var;
            }
        } while (k0(objM) < 0);
        o20 o20Var = new o20(1, dm0.A(fh0Var));
        o20Var.x();
        o20Var.A(new j20(2, n44.s0(this, true, new i83(o20Var))));
        Object objV = o20Var.v();
        ri0 ri0Var = ri0.n;
        if (objV != ri0Var) {
            objV = t64Var;
        }
        return objV == ri0Var ? objV : t64Var;
    }

    @Override // defpackage.tu1
    public final boolean isCancelled() {
        Object objM = M();
        if (objM instanceof c90) {
            return true;
        }
        return (objM instanceof av1) && ((av1) objM).f();
    }

    @Override // defpackage.tu1
    public void j(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new uu1(w(), null, this);
        }
        u(cancellationException);
    }

    @Override // defpackage.tu1
    public final jv0 j0(boolean z, boolean z2, o oVar) {
        return S(z2, z ? new cu1(oVar) : new du1(oVar));
    }

    public final int k0(Object obj) {
        Unsafe unsafe;
        boolean z = obj instanceof a01;
        long j = q;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = n;
        if (!z) {
            bv1 bv1Var = this;
            Object obj2 = obj;
            if (!(obj2 instanceof qp1)) {
                return 0;
            }
            om2 om2Var = ((qp1) obj2).n;
            do {
                atomicReferenceFieldUpdater.getClass();
                bv1 bv1Var2 = bv1Var;
                unsafe = sa5.a;
                Object obj3 = obj2;
                boolean zCompareAndSwapObject = unsafe.compareAndSwapObject(bv1Var2, q, obj3, om2Var);
                bv1Var = bv1Var2;
                obj2 = obj3;
                if (zCompareAndSwapObject) {
                    bv1Var.d0();
                    return 1;
                }
            } while (unsafe.getObjectVolatile(bv1Var, j) == obj2);
            return -1;
        }
        if (((a01) obj).n) {
            return 0;
        }
        while (true) {
            atomicReferenceFieldUpdater.getClass();
            Unsafe unsafe2 = sa5.a;
            bv1 bv1Var3 = this;
            Object obj4 = obj;
            if (unsafe2.compareAndSwapObject(bv1Var3, q, obj4, cv1.g)) {
                bv1Var3.d0();
                return 1;
            }
            if (unsafe2.getObjectVolatile(bv1Var3, j) != obj4) {
                return -1;
            }
            this = bv1Var3;
            obj = obj4;
        }
    }

    public final boolean m0(rp1 rp1Var, Object obj) {
        Object sp1Var = obj instanceof rp1 ? new sp1((rp1) obj) : obj;
        while (true) {
            n.getClass();
            Unsafe unsafe = sa5.a;
            long j = q;
            bv1 bv1Var = this;
            rp1 rp1Var2 = rp1Var;
            if (unsafe.compareAndSwapObject(bv1Var, j, rp1Var2, sp1Var)) {
                bv1Var.c0(obj);
                bv1Var.y(rp1Var2, obj);
                return true;
            }
            if (unsafe.getObjectVolatile(bv1Var, j) != rp1Var2) {
                return false;
            }
            this = bv1Var;
            rp1Var = rp1Var2;
        }
    }

    public final boolean n0(rp1 rp1Var, Throwable th) {
        om2 om2VarI = I(rp1Var);
        if (om2VarI == null) {
            return false;
        }
        av1 av1Var = new av1(om2VarI, th);
        while (true) {
            n.getClass();
            Unsafe unsafe = sa5.a;
            long j = q;
            bv1 bv1Var = this;
            rp1 rp1Var2 = rp1Var;
            if (unsafe.compareAndSwapObject(bv1Var, j, rp1Var2, av1Var)) {
                bv1Var.b0(om2VarI, th);
                return true;
            }
            if (unsafe.getObjectVolatile(bv1Var, j) != rp1Var2) {
                return false;
            }
            this = bv1Var;
            rp1Var = rp1Var2;
        }
    }

    public final Object o0(Object obj, Object obj2) {
        if (!(obj instanceof rp1)) {
            return cv1.a;
        }
        if (((obj instanceof a01) || (obj instanceof wu1)) && !(obj instanceof o40) && !(obj2 instanceof c90)) {
            return m0((rp1) obj, obj2) ? obj2 : cv1.c;
        }
        rp1 rp1Var = (rp1) obj;
        om2 om2VarI = I(rp1Var);
        if (om2VarI == null) {
            return cv1.c;
        }
        av1 av1Var = rp1Var instanceof av1 ? (av1) rp1Var : null;
        if (av1Var == null) {
            av1Var = new av1(om2VarI, null);
        }
        synchronized (av1Var) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = av1.o;
            if (atomicIntegerFieldUpdater.get(av1Var) == 1) {
                return cv1.a;
            }
            atomicIntegerFieldUpdater.set(av1Var, 1);
            if (av1Var != rp1Var) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = n;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, rp1Var, av1Var)) {
                    if (atomicReferenceFieldUpdater.get(this) != rp1Var) {
                        return cv1.c;
                    }
                }
            }
            boolean zF = av1Var.f();
            c90 c90Var = obj2 instanceof c90 ? (c90) obj2 : null;
            if (c90Var != null) {
                av1Var.a(c90Var.a);
            }
            Throwable thE = zF ? null : av1Var.e();
            if (thE != null) {
                b0(om2VarI, thE);
            }
            o40 o40VarA0 = a0(om2VarI);
            if (o40VarA0 != null && p0(av1Var, o40VarA0, obj2)) {
                return cv1.b;
            }
            om2VarI.e(new b42(2), 2);
            o40 o40VarA02 = a0(om2VarI);
            return (o40VarA02 == null || !p0(av1Var, o40VarA02, obj2)) ? C(av1Var, obj2) : cv1.b;
        }
    }

    public final boolean p0(av1 av1Var, o40 o40Var, Object obj) {
        while (n44.s0(o40Var.f234u, false, new zu1(this, av1Var, o40Var, obj)) == tm2.n) {
            o40Var = a0(o40Var);
            if (o40Var == null) {
                return false;
            }
        }
        return true;
    }

    public void q(Object obj) {
        p(obj);
    }

    public final Object s(fh0 fh0Var) throws Throwable {
        Object objM;
        do {
            objM = M();
            if (!(objM instanceof rp1)) {
                if (objM instanceof c90) {
                    throw ((c90) objM).a;
                }
                return cv1.a(objM);
            }
        } while (k0(objM) < 0);
        yu1 yu1Var = new yu1(dm0.A(fh0Var), this);
        yu1Var.x();
        yu1Var.A(new j20(2, n44.s0(this, true, new h83(yu1Var))));
        return yu1Var.v();
    }

    @Override // defpackage.tu1
    public final boolean start() {
        int iK0;
        do {
            iK0 = k0(M());
            if (iK0 == 0) {
                return false;
            }
        } while (iK0 != 1);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0059, code lost:
    
        r0 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[PHI: r0
  0x003c: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v9 java.lang.Object) binds: [B:3:0x0008, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean t(java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bv1.t(java.lang.Object):boolean");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(X() + '{' + l0(M()) + '}');
        sb.append('@');
        sb.append(qn0.u(this));
        return sb.toString();
    }

    public void u(CancellationException cancellationException) {
        t(cancellationException);
    }

    public final boolean v(Throwable th) {
        if (T()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        n40 n40VarJ = J();
        return (n40VarJ == null || n40VarJ == tm2.n) ? z : n40VarJ.c(th) || z;
    }

    public String w() {
        return "Job was cancelled";
    }

    public boolean x(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return t(th) && G();
    }

    public final void y(rp1 rp1Var, Object obj) {
        n40 n40VarJ = J();
        if (n40VarJ != null) {
            n40VarJ.a();
            h0(tm2.n);
        }
        v00 v00Var = null;
        c90 c90Var = obj instanceof c90 ? (c90) obj : null;
        Throwable th = c90Var != null ? c90Var.a : null;
        if (rp1Var instanceof wu1) {
            try {
                ((wu1) rp1Var).s(th);
                return;
            } catch (Throwable th2) {
                P(new v00(1, "Exception in completion handler " + rp1Var + " for " + this, th2));
                return;
            }
        }
        om2 om2VarD = rp1Var.d();
        if (om2VarD != null) {
            om2VarD.e(new b42(1), 1);
            Object objK = om2VarD.k();
            objK.getClass();
            for (i72 i72VarL = (i72) objK; !i72VarL.equals(om2VarD); i72VarL = i72VarL.l()) {
                if (i72VarL instanceof wu1) {
                    try {
                        ((wu1) i72VarL).s(th);
                    } catch (Throwable th3) {
                        if (v00Var != null) {
                            on4.j(v00Var, th3);
                        } else {
                            v00Var = new v00(1, "Exception in completion handler " + i72VarL + " for " + this, th3);
                        }
                    }
                }
            }
            if (v00Var != null) {
                P(v00Var);
            }
        }
    }

    public final Throwable z(Object obj) {
        Throwable thE;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        bv1 bv1Var = (bv1) obj;
        Object objM = bv1Var.M();
        if (objM instanceof av1) {
            thE = ((av1) objM).e();
        } else if (objM instanceof c90) {
            thE = ((c90) objM).a;
        } else {
            if (objM instanceof rp1) {
                mk0.k(objM, "Cannot be cancelling child in this state: ");
                return null;
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        return cancellationException == null ? new uu1("Parent job is ".concat(l0(objM)), thE, bv1Var) : cancellationException;
    }

    public void d0() {
    }

    public void P(v00 v00Var) {
        throw v00Var;
    }

    public void c0(Object obj) {
    }

    public void p(Object obj) {
    }
}
