package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fi2 implements n22 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ fi2(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        int i = this.n;
        int i2 = 0;
        Object obj = this.o;
        switch (i) {
            case 0:
                ii2 ii2Var = (ii2) obj;
                ii2Var.r = f22Var.a();
                if (ii2Var.c != null) {
                    ArrayList arrayListD0 = o70.D0(ii2Var.f);
                    int size = arrayListD0.size();
                    while (i2 < size) {
                        Object obj2 = arrayListD0.get(i2);
                        i2++;
                        yh2 yh2Var = (yh2) obj2;
                        yh2Var.getClass();
                        ai2 ai2Var = yh2Var.f421u;
                        ai2Var.getClass();
                        ai2Var.a.q = f22Var.a();
                        ai2Var.d = f22Var.a();
                        ai2Var.b();
                    }
                }
                break;
            default:
                xc3 xc3Var = (xc3) obj;
                if (f22Var == f22.ON_START) {
                    xc3Var.h = true;
                } else if (f22Var == f22.ON_STOP) {
                    xc3Var.h = false;
                }
                break;
        }
    }
}
