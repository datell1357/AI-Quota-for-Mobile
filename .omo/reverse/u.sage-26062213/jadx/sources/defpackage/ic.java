package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.ViewParent;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ic {
    public boolean a = true;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ic(defpackage.i95 r31, defpackage.a13 r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 937
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ic.<init>(i95, a13):void");
    }

    public boolean a(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        ViewParent viewParentC;
        int i4;
        int i5;
        NestedScrollView nestedScrollView = (NestedScrollView) this.d;
        if (!this.a || (viewParentC = c(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            nestedScrollView.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (((int[]) this.e) == null) {
                this.e = new int[2];
            }
            iArr = (int[]) this.e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        if (viewParentC instanceof cl2) {
            ((cl2) viewParentC).d(i, i2, iArr, i3);
        } else if (i3 == 0) {
            try {
                viewParentC.onNestedPreScroll(nestedScrollView, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onNestedPreScroll", e);
            }
        }
        if (iArr2 != null) {
            nestedScrollView.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean b(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent viewParentC;
        int i6;
        int i7;
        int[] iArr3;
        NestedScrollView nestedScrollView = (NestedScrollView) this.d;
        if (this.a && (viewParentC = c(i5)) != null) {
            if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
                if (iArr != null) {
                    nestedScrollView.getLocationInWindow(iArr);
                    i6 = iArr[0];
                    i7 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    if (((int[]) this.e) == null) {
                        this.e = new int[2];
                    }
                    int[] iArr4 = (int[]) this.e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                if (viewParentC instanceof dl2) {
                    ((dl2) viewParentC).c(nestedScrollView, i, i2, i3, i4, i5, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i3;
                    iArr3[1] = iArr3[1] + i4;
                    if (viewParentC instanceof cl2) {
                        ((cl2) viewParentC).e(nestedScrollView, i, i2, i3, i4, i5);
                    } else if (i5 == 0) {
                        try {
                            viewParentC.onNestedScroll(nestedScrollView, i, i2, i3, i4);
                        } catch (AbstractMethodError e) {
                            Log.e("ViewParentCompat", "ViewParent " + viewParentC + " does not implement interface method onNestedScroll", e);
                        }
                    }
                }
                if (iArr != null) {
                    nestedScrollView.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i6;
                    iArr[1] = iArr[1] - i7;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public ViewParent c(int i) {
        if (i == 0) {
            return (ViewParent) this.b;
        }
        if (i != 1) {
            return null;
        }
        return (ViewParent) this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int d(xh1 xh1Var, q9 q9Var, boolean z) {
        Object[] objArr;
        int i;
        int i2;
        wj1 wj1Var = (wj1) this.c;
        zj1 zj1Var = (zj1) this.e;
        if (this.a) {
            return 0;
        }
        try {
            this.a = true;
            ft1 ft1VarP = ((dh1) this.d).p(xh1Var, q9Var);
            e82 e82Var = (e82) ft1VarP.p;
            int iE = e82Var.e();
            for (int i3 = 0; i3 < iE; i3++) {
                zv2 zv2Var = (zv2) e82Var.f(i3);
                if (!zv2Var.d && !zv2Var.h) {
                }
                objArr = false;
                break;
            }
            objArr = true;
            int iE2 = e82Var.e();
            for (int i4 = 0; i4 < iE2; i4++) {
                zv2 zv2Var2 = (zv2) e82Var.f(i4);
                if (objArr != false || se0.d(zv2Var2)) {
                    ((xy1) this.b).A(zv2Var2.c, (zj1) this.e, zv2Var2.i, true);
                    if (!zj1Var.n.h()) {
                        wj1Var.a(zv2Var2.a, zj1Var, se0.d(zv2Var2));
                        zj1Var.clear();
                    }
                }
            }
            boolean zB = wj1Var.b(ft1VarP, z);
            if (ft1VarP.o) {
                i = 0;
            } else {
                int iE3 = e82Var.e();
                for (int i5 = 0; i5 < iE3; i5++) {
                    zv2 zv2Var3 = (zv2) e82Var.f(i5);
                    if (!go2.b(se0.C(zv2Var3, true), 0L) && zv2Var3.c()) {
                        i = 1;
                        break;
                    }
                }
                i = 0;
            }
            int iE4 = e82Var.e();
            int i6 = 0;
            while (true) {
                if (i6 >= iE4) {
                    i2 = 0;
                    break;
                }
                if (((zv2) e82Var.f(i6)).c()) {
                    i2 = 1;
                    break;
                }
                i6++;
            }
            int i7 = (zB ? 1 : 0) | (i << 1) | (i2 << 2);
            this.a = false;
            return i7;
        } catch (Throwable th) {
            this.a = false;
            throw th;
        }
    }

    public synchronized void e() {
        try {
            if (this.a) {
                return;
            }
            this.a = true;
            Context context = (Context) this.e;
            if (context != null) {
                ((gc) this.c).b(context);
                context.unregisterComponentCallbacks((hc) this.d);
            }
            ((WeakReference) this.b).clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void f(int i, int i2) {
        if (i < 0.0f) {
            dr1.a("Index should be non-negative (" + i + ")");
        }
        ((ts2) this.b).h(i);
        h02 h02Var = (h02) this.e;
        if (i != h02Var.o) {
            h02Var.o = i;
            int i3 = (i / 30) * 30;
            h02Var.n.setValue(ix.a0(Math.max(i3 - 100, 0), i3 + 130));
        }
        ((ts2) this.c).h(i2);
    }

    public ic(rc5 rc5Var, a13 a13Var) {
        rc5.A().equals(rc5Var);
        this.b = rc5Var.t();
        this.c = rc5Var.u();
        int i = np1.p;
        Object[] objArr = f53.v;
        int iY = rc5Var.y() + 3;
        ht4.i(iY, "expectedSize");
        hb hbVar = new hb(iY);
        for (tc5 tc5Var : rc5Var.x()) {
            int iG = tc5Var.G();
            int i2 = iG - 1;
            if (iG == 0) {
                throw null;
            }
            if (i2 == 0) {
                hbVar.h(tc5Var.t(), Long.valueOf(tc5Var.u()));
            } else if (i2 == 1) {
                hbVar.h(tc5Var.t(), Boolean.valueOf(tc5Var.v()));
            } else if (i2 == 2) {
                hbVar.h(tc5Var.t(), Double.valueOf(tc5Var.w()));
            } else if (i2 == 3) {
                hbVar.h(tc5Var.t(), tc5Var.x());
            } else if (i2 == 4) {
                hbVar.h(tc5Var.t(), tc5Var.y().l());
            }
        }
        hbVar.h("__phenotype_server_token", rc5Var.v());
        hbVar.h("__phenotype_snapshot_token", rc5Var.t());
        hbVar.h("__phenotype_configuration_version", Long.valueOf(rc5Var.w()));
        this.d = hbVar.b(false);
        this.e = a13Var;
    }
}
