package defpackage;

import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ok2 extends og2 {
    public final og2 o;
    public boolean p;

    public ok2(long j, uo3 uo3Var, pe1 pe1Var, pe1 pe1Var2, og2 og2Var) {
        super(j, uo3Var, pe1Var, pe1Var2);
        this.o = og2Var;
        og2Var.k();
    }

    @Override // defpackage.og2, defpackage.po3
    public final void c() {
        if (this.c) {
            return;
        }
        super.c();
        if (this.p) {
            return;
        }
        this.p = true;
        this.o.l();
    }

    @Override // defpackage.og2
    public final zf5 w() {
        ok2 ok2Var;
        og2 og2Var = this.o;
        if (og2Var.m || og2Var.c) {
            return new ro3(this);
        }
        lg2 lg2Var = this.h;
        long j = this.b;
        HashMap mapB = lg2Var != null ? wo3.b(og2Var.g(), this, this.o.d()) : null;
        Object obj = wo3.c;
        synchronized (obj) {
            try {
                wo3.c(this);
                if (lg2Var == null || lg2Var.d == 0) {
                    ok2Var = this;
                    ok2Var.a();
                } else {
                    ok2Var = this;
                    zf5 zf5VarZ = ok2Var.z(this.o.g(), lg2Var, mapB, this.o.d());
                    if (!zf5VarZ.equals(so3.h)) {
                        return zf5VarZ;
                    }
                    lg2 lg2VarX = ok2Var.o.x();
                    if (lg2VarX != null) {
                        lg2VarX.j(lg2Var);
                    } else {
                        ok2Var.o.B(lg2Var);
                        ok2Var.h = null;
                    }
                }
                if (nt1.m(ok2Var.o.g(), j) < 0) {
                    ok2Var.o.v();
                }
                og2 og2Var2 = ok2Var.o;
                og2Var2.r(og2Var2.d().d(j).a(ok2Var.j));
                ok2Var.o.A(j);
                og2 og2Var3 = ok2Var.o;
                int i = ok2Var.d;
                ok2Var.d = -1;
                if (i >= 0) {
                    int[] iArr = og2Var3.k;
                    iArr.getClass();
                    int length = iArr.length;
                    int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
                    iArrCopyOf[length] = i;
                    og2Var3.k = iArrCopyOf;
                } else {
                    og2Var3.getClass();
                }
                og2 og2Var4 = ok2Var.o;
                uo3 uo3Var = ok2Var.j;
                og2Var4.getClass();
                synchronized (obj) {
                    og2Var4.j = og2Var4.j.f(uo3Var);
                    og2 og2Var5 = ok2Var.o;
                    int[] iArr2 = ok2Var.k;
                    og2Var5.getClass();
                    if (iArr2.length != 0) {
                        int[] iArr3 = og2Var5.k;
                        if (iArr3.length != 0) {
                            int length2 = iArr3.length;
                            int length3 = iArr2.length;
                            int[] iArrCopyOf2 = Arrays.copyOf(iArr3, length2 + length3);
                            System.arraycopy(iArr2, 0, iArrCopyOf2, length2, length3);
                            iArr2 = iArrCopyOf2;
                        }
                        og2Var5.k = iArr2;
                    }
                }
                ok2Var.m = true;
                if (!ok2Var.p) {
                    ok2Var.p = true;
                    ok2Var.o.l();
                }
                return so3.h;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
