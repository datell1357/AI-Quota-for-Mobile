package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wy implements jc4 {
    public Object n = bz.p;
    public o20 o;
    public final /* synthetic */ zy p;

    public wy(zy zyVar) {
        this.p = zyVar;
    }

    @Override // defpackage.jc4
    public final void a(rg3 rg3Var, int i) {
        o20 o20Var = this.o;
        if (o20Var != null) {
            o20Var.a(rg3Var, i);
        }
    }

    public final Object b(fh0 fh0Var) throws Throwable {
        a40 a40Var;
        a40 a40Var2;
        Object obj = this.n;
        boolean z = true;
        if (obj == bz.p || obj == bz.l) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = zy.t;
            zy zyVar = this.p;
            a40 a40Var3 = (a40) atomicReferenceFieldUpdater.get(zyVar);
            while (true) {
                if (zyVar.B()) {
                    this.n = bz.l;
                    Throwable thS = zyVar.s();
                    if (thS != null) {
                        int i = gr3.a;
                        throw thS;
                    }
                    z = false;
                } else {
                    long andIncrement = zy.p.getAndIncrement(zyVar);
                    long j = bz.b;
                    long j2 = andIncrement / j;
                    int i2 = (int) (andIncrement % j);
                    if (a40Var3.e != j2) {
                        a40 a40VarQ = zyVar.q(j2, a40Var3);
                        if (a40VarQ == null) {
                            continue;
                        } else {
                            a40Var = a40VarQ;
                        }
                    } else {
                        a40Var = a40Var3;
                    }
                    Object objP = zyVar.P(a40Var, i2, andIncrement, null);
                    sg0 sg0Var = bz.m;
                    if (objP == sg0Var) {
                        k21.n("unreachable");
                        return null;
                    }
                    sg0 sg0Var2 = bz.o;
                    if (objP == sg0Var2) {
                        if (andIncrement < zyVar.v()) {
                            a40Var.a();
                        }
                        a40Var3 = a40Var;
                    } else {
                        if (objP == bz.n) {
                            o20 o20VarJ = kt4.J(dm0.A(fh0Var));
                            try {
                                this.o = o20VarJ;
                                Object objP2 = zyVar.P(a40Var, i2, andIncrement, this);
                                if (objP2 == sg0Var) {
                                    a(a40Var, i2);
                                } else {
                                    if (objP2 == sg0Var2) {
                                        if (andIncrement < zyVar.v()) {
                                            a40Var.a();
                                        }
                                        a40 a40Var4 = (a40) zy.t.get(zyVar);
                                        while (true) {
                                            if (zyVar.B()) {
                                                o20 o20Var = this.o;
                                                o20Var.getClass();
                                                this.o = null;
                                                this.n = bz.l;
                                                Throwable thS2 = zyVar.s();
                                                if (thS2 == null) {
                                                    o20Var.g(Boolean.FALSE);
                                                } else {
                                                    o20Var.g(new f83(thS2));
                                                }
                                            } else {
                                                long andIncrement2 = zy.p.getAndIncrement(zyVar);
                                                long j3 = bz.b;
                                                long j4 = andIncrement2 / j3;
                                                int i3 = (int) (andIncrement2 % j3);
                                                if (a40Var4.e != j4) {
                                                    a40 a40VarQ2 = zyVar.q(j4, a40Var4);
                                                    if (a40VarQ2 != null) {
                                                        a40Var2 = a40VarQ2;
                                                    }
                                                } else {
                                                    a40Var2 = a40Var4;
                                                }
                                                Object objP3 = zyVar.P(a40Var2, i3, andIncrement2, this);
                                                a40 a40Var5 = a40Var2;
                                                if (objP3 == bz.m) {
                                                    a(a40Var5, i3);
                                                    break;
                                                }
                                                if (objP3 == bz.o) {
                                                    if (andIncrement2 < zyVar.v()) {
                                                        a40Var5.a();
                                                    }
                                                    a40Var4 = a40Var5;
                                                } else {
                                                    if (objP3 == bz.n) {
                                                        throw new IllegalStateException("unexpected");
                                                    }
                                                    a40Var5.a();
                                                    this.n = objP3;
                                                    this.o = null;
                                                }
                                            }
                                        }
                                    } else {
                                        a40Var.a();
                                        this.n = objP2;
                                        this.o = null;
                                    }
                                    o20VarJ.h(Boolean.TRUE, null);
                                }
                                return o20VarJ.v();
                            } catch (Throwable th) {
                                o20VarJ.E();
                                throw th;
                            }
                        }
                        a40Var.a();
                        this.n = objP;
                    }
                }
            }
        }
        return Boolean.valueOf(z);
    }

    public final Object c() throws Throwable {
        Object obj = this.n;
        sg0 sg0Var = bz.p;
        if (obj == sg0Var) {
            k21.n("`hasNext()` has not been invoked");
            return null;
        }
        this.n = sg0Var;
        if (obj != bz.l) {
            return obj;
        }
        Throwable thT = this.p.t();
        int i = gr3.a;
        throw thT;
    }
}
