package defpackage;

import android.os.Bundle;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c60 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ w33 o;

    public /* synthetic */ c60(int i, w33 w33Var) {
        this.n = i;
        this.o = w33Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        w33 w33Var = this.o;
        switch (i) {
            case 0:
                wg1 wg1Var = (wg1) obj;
                if (nt1.g(wg1Var.o0(), "waiting")) {
                    w33Var.n = wg1Var;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                String str = (String) obj;
                str.getClass();
                Object obj2 = w33Var.n;
                return Boolean.valueOf(obj2 == null || !((Bundle) obj2).containsKey(str));
            default:
                b24 b24Var = (b24) obj;
                b24Var.getClass();
                n02 n02Var = ((d24) b24Var).B;
                List listH = (List) w33Var.n;
                if (listH != null) {
                    listH.add(n02Var);
                } else {
                    listH = tv4.H(n02Var);
                }
                w33Var.n = listH;
                return a24.o;
        }
    }
}
