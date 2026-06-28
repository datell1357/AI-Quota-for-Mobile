package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class im3 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ km3 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ im3(km3 km3Var, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = km3Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        gj3 gj3Var = (gj3) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((im3) o(dh0Var, gj3Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        km3 km3Var = this.t;
        switch (i) {
            case 0:
                im3 im3Var = new im3(km3Var, dh0Var, 0);
                im3Var.s = obj;
                return im3Var;
            default:
                im3 im3Var2 = new im3(km3Var, dh0Var, 1);
                im3Var2.s = obj;
                return im3Var2;
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        boolean z;
        int i = this.r;
        km3 km3Var = this.t;
        switch (i) {
            case 0:
                gg4.T(obj);
                gj3 gj3Var = (gj3) this.s;
                km3Var.d.getClass();
                return gj3.a(gj3Var, null, iz3.a(), null, 5);
            default:
                gg4.T(obj);
                gj3 gj3Var2 = (gj3) this.s;
                yy2 yy2Var = km3Var.f;
                boolean zE = km3Var.e(gj3Var2);
                Map mapB = gj3Var2.c;
                if (mapB != null) {
                    yy2Var.getClass();
                    z = false;
                    if (!yy2Var.f) {
                        ArrayList arrayListS = k30.s(yy2Var.a);
                        ArrayList arrayList = new ArrayList();
                        int size = arrayListS.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj2 = arrayListS.get(i2);
                            i2++;
                            zy2 zy2Var = (zy2) obj2;
                            wy2 wy2Var = (wy2) mapB.get(zy2Var.a);
                            js2 js2Var = wy2Var != null ? new js2(zy2Var, wy2Var) : null;
                            if (js2Var != null) {
                                arrayList.add(js2Var);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            z = true;
                        } else {
                            int size2 = arrayList.size();
                            int i3 = 0;
                            while (i3 < size2) {
                                Object obj3 = arrayList.get(i3);
                                i3++;
                                js2 js2Var2 = (js2) obj3;
                                zy2 zy2Var2 = (zy2) js2Var2.n;
                                wy2 wy2Var2 = (wy2) js2Var2.o;
                                boolean zG = nt1.g(yy2Var.a(), zy2Var2.a);
                                int i4 = zy2Var2.b;
                                if (zG) {
                                    if (i4 != wy2Var2.a || !nt1.g((String) yy2Var.d.getValue(), wy2Var2.b)) {
                                    }
                                } else if (i4 != wy2Var2.a) {
                                }
                            }
                            z = true;
                        }
                    }
                    if (z) {
                        Log.d("FirebaseSessions", "Cold app start detected");
                    }
                } else {
                    Log.d("FirebaseSessions", "No process data map");
                    z = true;
                }
                boolean zD = km3Var.d(gj3Var2);
                if (z) {
                    mapB = yy2Var.b(h01.n);
                } else if (zD) {
                    mapB = yy2Var.b(mapB);
                }
                lj3 lj3Var = z ? null : gj3Var2.a;
                if (!zE && !z) {
                    return zD ? gj3.a(gj3Var2, null, null, yy2Var.b(mapB), 3) : gj3Var2;
                }
                lj3 lj3VarA = km3Var.b.a(lj3Var);
                tj3 tj3Var = km3Var.c;
                ca.y(dm0.c(tj3Var.e), null, null, new rj3(tj3Var, lj3VarA, null), 3);
                yy2Var.f = true;
                return new gj3(lj3VarA, null, mapB);
        }
    }
}
