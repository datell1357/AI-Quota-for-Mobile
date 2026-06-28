package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ni0 extends Thread {
    public static final /* synthetic */ AtomicIntegerFieldUpdater v = AtomicIntegerFieldUpdater.newUpdater(ni0.class, "workerCtl$volatile");
    private volatile int indexInArray;
    public final lg4 n;
    private volatile Object nextParkedWorker;
    public final w33 o;
    public oi0 p;
    public long q;
    public long r;
    public int s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ pi0 f223u;
    private volatile /* synthetic */ int workerCtl$volatile;

    public ni0(pi0 pi0Var, int i) {
        this.f223u = pi0Var;
        setDaemon(true);
        setContextClassLoader(pi0.class.getClassLoader());
        this.n = new lg4();
        this.o = new w33();
        this.p = oi0.q;
        this.nextParkedWorker = pi0.x;
        int iNanoTime = (int) System.nanoTime();
        this.s = iNanoTime == 0 ? 42 : iNanoTime;
        f(i);
    }

    public final mw3 a(boolean z) {
        mw3 mw3VarE;
        mw3 mw3VarE2;
        long j;
        oi0 oi0Var = this.p;
        pi0 pi0Var = this.f223u;
        lg4 lg4Var = this.n;
        oi0 oi0Var2 = oi0.n;
        if (oi0Var != oi0Var2) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = pi0.v;
            do {
                j = atomicLongFieldUpdater.get(pi0Var);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    mw3 mw3VarG = lg4Var.g();
                    return (mw3VarG == null && (mw3VarG = (mw3) pi0Var.s.d()) == null) ? i(1) : mw3VarG;
                }
            } while (!pi0.v.compareAndSet(pi0Var, j, j - 4398046511104L));
            this.p = oi0Var2;
        }
        if (z) {
            boolean z2 = d(pi0Var.n * 2) == 0;
            if (z2 && (mw3VarE2 = e()) != null) {
                return mw3VarE2;
            }
            mw3 mw3VarE3 = lg4Var.e();
            if (mw3VarE3 != null) {
                return mw3VarE3;
            }
            if (!z2 && (mw3VarE = e()) != null) {
                return mw3VarE;
            }
        } else {
            mw3 mw3VarE4 = e();
            if (mw3VarE4 != null) {
                return mw3VarE4;
            }
        }
        return i(3);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i) {
        int i2 = this.s;
        int i3 = i2 ^ (i2 << 13);
        int i4 = i3 ^ (i3 >> 17);
        int i5 = i4 ^ (i4 << 5);
        this.s = i5;
        int i6 = i - 1;
        return (i6 & i) == 0 ? i6 & i5 : (Integer.MAX_VALUE & i5) % i;
    }

    public final mw3 e() {
        int iD = d(2);
        pi0 pi0Var = this.f223u;
        gh1 gh1Var = pi0Var.s;
        gh1 gh1Var2 = pi0Var.r;
        if (iD == 0) {
            mw3 mw3Var = (mw3) gh1Var2.d();
            return mw3Var != null ? mw3Var : (mw3) gh1Var.d();
        }
        mw3 mw3Var2 = (mw3) gh1Var.d();
        return mw3Var2 != null ? mw3Var2 : (mw3) gh1Var2.d();
    }

    public final void f(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f223u.q);
        sb.append("-worker-");
        sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
        setName(sb.toString());
        this.indexInArray = i;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(oi0 oi0Var) {
        oi0 oi0Var2 = this.p;
        boolean z = oi0Var2 == oi0.n;
        if (z) {
            pi0.v.addAndGet(this.f223u, 4398046511104L);
        }
        if (oi0Var2 != oi0Var) {
            this.p = oi0Var;
        }
        return z;
    }

    public final mw3 i(int i) {
        mw3 mw3VarH;
        long jI;
        AtomicLongFieldUpdater atomicLongFieldUpdater = pi0.v;
        pi0 pi0Var = this.f223u;
        int i2 = (int) (atomicLongFieldUpdater.get(pi0Var) & 2097151);
        if (i2 < 2) {
            return null;
        }
        int iD = d(i2);
        long jMin = Long.MAX_VALUE;
        for (int i3 = 0; i3 < i2; i3++) {
            iD++;
            if (iD > i2) {
                iD = 1;
            }
            ni0 ni0Var = (ni0) pi0Var.t.b(iD);
            if (ni0Var != null && ni0Var != this) {
                lg4 lg4Var = ni0Var.n;
                if (i == 3) {
                    mw3VarH = lg4Var.f();
                } else {
                    lg4Var.getClass();
                    int i4 = lg4.d.get(lg4Var);
                    int i5 = lg4.c.get(lg4Var);
                    boolean z = i == 1;
                    while (i4 != i5 && (!z || lg4.e.get(lg4Var) != 0)) {
                        int i6 = i4 + 1;
                        mw3VarH = lg4Var.h(i4, z);
                        if (mw3VarH != null) {
                            break;
                        }
                        i4 = i6;
                    }
                    mw3VarH = null;
                }
                w33 w33Var = this.o;
                if (mw3VarH != null) {
                    w33Var.n = mw3VarH;
                    jI = -1;
                } else {
                    jI = lg4Var.i(i, w33Var);
                }
                if (jI == -1) {
                    mw3 mw3Var = (mw3) w33Var.n;
                    w33Var.n = null;
                    return mw3Var;
                }
                if (jI > 0) {
                    jMin = Math.min(jMin, jI);
                }
            }
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.r = jMin;
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x0004, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0004, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0004, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ni0.run():void");
    }
}
