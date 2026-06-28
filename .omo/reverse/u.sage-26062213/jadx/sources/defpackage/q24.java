package defpackage;

import android.database.SQLException;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q24 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ v24 f271u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q24(v24 v24Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.f271u = v24Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((q24) o((dh0) obj2, (pw2) obj)).q(t64Var);
            case 1:
                return ((q24) o((dh0) obj2, (d14) obj)).q(t64Var);
            default:
                return ((q24) o((dh0) obj2, (d14) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        v24 v24Var = this.f271u;
        switch (i) {
            case 0:
                q24 q24Var = new q24(v24Var, dh0Var, 0);
                q24Var.t = obj;
                return q24Var;
            case 1:
                q24 q24Var2 = new q24(v24Var, dh0Var, 1);
                q24Var2.t = obj;
                return q24Var2;
            default:
                q24 q24Var3 = new q24(v24Var, dh0Var, 2);
                q24Var3.t = obj;
                return q24Var3;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        d14 d14Var;
        Object objC;
        Object objD;
        d14 d14Var2;
        Object objC2;
        zn2[] zn2VarArr;
        zn2 zn2Var;
        int i = this.r;
        c14 c14Var = c14.o;
        boolean z = false;
        ri0 ri0Var = ri0.n;
        boolean z2 = true;
        v24 v24Var = this.f271u;
        dh0 dh0Var = null;
        switch (i) {
            case 0:
                int i2 = this.s;
                if (i2 != 0) {
                    if (i2 == 1) {
                        gg4.T(obj);
                        return obj;
                    }
                    k21.n("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                gg4.T(obj);
                pw2 pw2Var = (pw2) this.t;
                this.s = 1;
                Object objA = v24.a(v24Var, pw2Var, this);
                return objA == ri0Var ? ri0Var : objA;
            case 1:
                int i3 = this.s;
                try {
                    if (i3 == 0) {
                        gg4.T(obj);
                        d14Var = (d14) this.t;
                        this.t = d14Var;
                        this.s = 1;
                        objC = d14Var.c(this);
                        if (objC == ri0Var) {
                            return ri0Var;
                        }
                    } else {
                        if (i3 != 1) {
                            if (i3 != 2) {
                                k21.n("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            gg4.T(obj);
                            objD = obj;
                            return (Set) objD;
                        }
                        d14Var = (d14) this.t;
                        gg4.T(obj);
                        objC = obj;
                    }
                    if (!((Boolean) objC).booleanValue()) {
                        q24 q24Var = new q24(v24Var, dh0Var, 0);
                        this.t = null;
                        this.s = 2;
                        objD = d14Var.d(c14Var, q24Var, this);
                        if (objD == ri0Var) {
                            return ri0Var;
                        }
                        return (Set) objD;
                    }
                } catch (SQLException unused) {
                }
                return k01.n;
            default:
                int i4 = this.s;
                t64 t64Var = t64.a;
                if (i4 == 0) {
                    gg4.T(obj);
                    d14Var2 = (d14) this.t;
                    this.t = d14Var2;
                    this.s = 1;
                    objC2 = d14Var2.c(this);
                    if (objC2 == ri0Var) {
                        return ri0Var;
                    }
                } else {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            gg4.T(obj);
                            return t64Var;
                        }
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    d14Var2 = (d14) this.t;
                    gg4.T(obj);
                    objC2 = obj;
                }
                if (!((Boolean) objC2).booleanValue()) {
                    mu0 mu0Var = v24Var.h;
                    long[] jArr = (long[]) mu0Var.d;
                    ReentrantLock reentrantLock = (ReentrantLock) mu0Var.b;
                    reentrantLock.lock();
                    try {
                        if (mu0Var.a) {
                            mu0Var.a = false;
                            int length = jArr.length;
                            zn2VarArr = new zn2[length];
                            int i5 = 0;
                            boolean z3 = false;
                            while (i5 < length) {
                                if (jArr[i5] > 0) {
                                    z = z2;
                                }
                                boolean[] zArr = (boolean[]) mu0Var.c;
                                if (z != zArr[i5]) {
                                    zArr[i5] = z;
                                    zn2Var = z ? zn2.o : zn2.p;
                                    z3 = true;
                                } else {
                                    zn2Var = zn2.n;
                                }
                                zn2VarArr[i5] = zn2Var;
                                i5++;
                                z = false;
                                z2 = true;
                            }
                            if (!z3) {
                                zn2VarArr = null;
                            }
                            reentrantLock.unlock();
                        } else {
                            reentrantLock.unlock();
                            zn2VarArr = null;
                        }
                        if (zn2VarArr != null) {
                            u24 u24Var = new u24(zn2VarArr, v24Var, d14Var2, null);
                            this.t = null;
                            this.s = 2;
                            if (d14Var2.d(c14Var, u24Var, this) == ri0Var) {
                                return ri0Var;
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
                return t64Var;
        }
    }
}
