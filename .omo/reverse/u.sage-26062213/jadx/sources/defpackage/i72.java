package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class i72 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(i72.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater o;
    public static final /* synthetic */ AtomicReferenceFieldUpdater p;
    public static final /* synthetic */ long q;
    public static final /* synthetic */ long r;
    public static final /* synthetic */ long s;
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    static {
        Unsafe unsafe = sa5.a;
        q = unsafe.objectFieldOffset(i72.class.getDeclaredField("_next$volatile"));
        o = AtomicReferenceFieldUpdater.newUpdater(i72.class, Object.class, "_prev$volatile");
        r = unsafe.objectFieldOffset(i72.class.getDeclaredField("_prev$volatile"));
        p = AtomicReferenceFieldUpdater.newUpdater(i72.class, Object.class, "_removedRef$volatile");
        s = unsafe.objectFieldOffset(i72.class.getDeclaredField("_removedRef$volatile"));
    }

    public static i72 i(i72 i72Var) {
        while (i72Var.n()) {
            o.getClass();
            i72Var = (i72) sa5.a.getObjectVolatile(i72Var, r);
        }
        return i72Var;
    }

    public final boolean e(i72 i72Var, int i) {
        i72 i72VarM;
        do {
            i72VarM = m();
            if (i72VarM instanceof b42) {
                return (((b42) i72VarM).t & i) == 0 && i72VarM.e(i72Var, i);
            }
        } while (!i72VarM.f(i72Var, this));
        return true;
    }

    public final boolean f(i72 i72Var, i72 i72Var2) {
        o.getClass();
        Unsafe unsafe = sa5.a;
        unsafe.putObjectVolatile(i72Var, r, this);
        n.getClass();
        long j = q;
        unsafe.putObjectVolatile(i72Var, j, i72Var2);
        while (true) {
            Unsafe unsafe2 = sa5.a;
            i72 i72Var3 = this;
            i72 i72Var4 = i72Var;
            i72 i72Var5 = i72Var2;
            if (unsafe2.compareAndSwapObject(i72Var3, q, i72Var5, i72Var4)) {
                i72Var4.j(i72Var5);
                return true;
            }
            if (unsafe2.getObjectVolatile(i72Var3, j) != i72Var5) {
                return false;
            }
            this = i72Var3;
            i72Var2 = i72Var5;
            i72Var = i72Var4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        r9 = r4;
        r10 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(defpackage.om2 r10) {
        /*
            r9 = this;
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.i72.o
            r0.getClass()
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r1 = defpackage.i72.r
            r0.putObjectVolatile(r10, r1, r9)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.i72.n
            r1.getClass()
            long r1 = defpackage.i72.q
            r0.putObjectVolatile(r10, r1, r9)
        L16:
            java.lang.Object r0 = r9.k()
            if (r0 == r9) goto L1d
            return
        L1d:
            sun.misc.Unsafe r3 = defpackage.sa5.a
            long r5 = defpackage.i72.q
            r7 = r9
            r4 = r9
            r8 = r10
            boolean r9 = r3.compareAndSwapObject(r4, r5, r7, r8)
            if (r9 == 0) goto L2e
            r8.j(r4)
            return
        L2e:
            java.lang.Object r9 = r3.getObjectVolatile(r4, r1)
            if (r9 == r4) goto L37
            r9 = r4
            r10 = r8
            goto L16
        L37:
            r9 = r4
            r10 = r8
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i72.g(om2):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.i72 h() {
        /*
            r15 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.i72.o
            r0.getClass()
            sun.misc.Unsafe r0 = defpackage.sa5.a
            long r1 = defpackage.i72.r
            java.lang.Object r0 = r0.getObjectVolatile(r15, r1)
            r7 = r0
            i72 r7 = (defpackage.i72) r7
            r0 = 0
            r9 = r0
            r8 = r7
        L13:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = defpackage.i72.n
            r3.getClass()
            if (r8 == 0) goto L85
            sun.misc.Unsafe r3 = defpackage.sa5.a
            long r4 = defpackage.i72.q
            java.lang.Object r6 = r3.getObjectVolatile(r8, r4)
            if (r6 != r15) goto L40
            if (r7 != r8) goto L27
            goto L34
        L27:
            sun.misc.Unsafe r3 = defpackage.sa5.a
            long r5 = defpackage.i72.r
            r4 = r15
            boolean r15 = r3.compareAndSwapObject(r4, r5, r7, r8)
            r14 = r7
            r7 = r4
            if (r15 == 0) goto L35
        L34:
            return r8
        L35:
            java.lang.Object r15 = r3.getObjectVolatile(r7, r1)
            if (r15 == r14) goto L3d
        L3b:
            r15 = r7
            goto L0
        L3d:
            r15 = r7
            r7 = r14
            goto L27
        L40:
            r14 = r7
            r7 = r15
            boolean r15 = r7.n()
            if (r15 == 0) goto L49
            return r0
        L49:
            boolean r15 = r6 instanceof defpackage.a63
            if (r15 == 0) goto L7c
            if (r9 == 0) goto L6c
            a63 r6 = (defpackage.a63) r6
            i72 r13 = r6.a
        L53:
            r12 = r8
            sun.misc.Unsafe r8 = defpackage.sa5.a
            long r10 = defpackage.i72.q
            boolean r15 = r8.compareAndSwapObject(r9, r10, r12, r13)
            r3 = r8
            r8 = r12
            if (r15 == 0) goto L65
            r15 = r7
            r8 = r9
            r7 = r14
            r9 = r0
            goto L13
        L65:
            java.lang.Object r15 = r3.getObjectVolatile(r9, r4)
            if (r15 == r8) goto L53
            goto L3b
        L6c:
            if (r8 == 0) goto L78
            java.lang.Object r15 = r3.getObjectVolatile(r8, r1)
            r8 = r15
            i72 r8 = (defpackage.i72) r8
        L75:
            r15 = r7
            r7 = r14
            goto L13
        L78:
            defpackage.mk0.b()
            return r0
        L7c:
            r6.getClass()
            r15 = r6
            i72 r15 = (defpackage.i72) r15
            r9 = r8
            r8 = r15
            goto L75
        L85:
            defpackage.mk0.b()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i72.h():i72");
    }

    public final void j(i72 i72Var) {
        i72 i72Var2;
        while (true) {
            o.getClass();
            if (i72Var == null) {
                mk0.b();
                return;
            }
            Unsafe unsafe = sa5.a;
            long j = r;
            i72 i72Var3 = (i72) unsafe.getObjectVolatile(i72Var, j);
            if (this.k() != i72Var) {
                return;
            }
            while (i72Var != null) {
                Unsafe unsafe2 = sa5.a;
                i72Var2 = this;
                i72 i72Var4 = i72Var;
                if (unsafe2.compareAndSwapObject(i72Var4, r, i72Var3, i72Var2)) {
                    if (i72Var2.n()) {
                        i72Var4.h();
                        return;
                    }
                    return;
                } else {
                    if (i72Var4 == null) {
                        mk0.b();
                        return;
                    }
                    i72Var = i72Var4;
                    if (unsafe2.getObjectVolatile(i72Var4, j) != i72Var3) {
                        break;
                    } else {
                        this = i72Var2;
                    }
                }
            }
            mk0.b();
            return;
            this = i72Var2;
        }
    }

    public final Object k() {
        n.getClass();
        return sa5.a.getObjectVolatile(this, q);
    }

    public final i72 l() {
        Object objK = k();
        a63 a63Var = objK instanceof a63 ? (a63) objK : null;
        if (a63Var != null) {
            return a63Var.a;
        }
        objK.getClass();
        return (i72) objK;
    }

    public final i72 m() {
        i72 i72VarH = h();
        if (i72VarH != null) {
            return i72VarH;
        }
        o.getClass();
        return i((i72) sa5.a.getObjectVolatile(this, r));
    }

    public boolean n() {
        return k() instanceof a63;
    }

    public final i72 o() {
        i72 i72Var;
        while (true) {
            Object objK = this.k();
            if (objK instanceof a63) {
                return ((a63) objK).a;
            }
            if (objK == this) {
                return (i72) objK;
            }
            objK.getClass();
            i72 i72Var2 = (i72) objK;
            a63 a63VarP = i72Var2.p();
            while (true) {
                n.getClass();
                Unsafe unsafe = sa5.a;
                long j = q;
                i72Var = this;
                if (unsafe.compareAndSwapObject(i72Var, j, objK, a63VarP)) {
                    i72Var2.h();
                    return null;
                }
                if (unsafe.getObjectVolatile(i72Var, j) != objK) {
                    break;
                }
                this = i72Var;
            }
            this = i72Var;
        }
    }

    public final a63 p() {
        p.getClass();
        Unsafe unsafe = sa5.a;
        long j = s;
        a63 a63Var = (a63) unsafe.getObjectVolatile(this, j);
        if (a63Var != null) {
            return a63Var;
        }
        a63 a63Var2 = new a63(this);
        unsafe.putObjectVolatile(this, j, a63Var2);
        return a63Var2;
    }

    public String toString() {
        return new b12(1, 1, qn0.class, this, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;") + '@' + qn0.u(this);
    }
}
