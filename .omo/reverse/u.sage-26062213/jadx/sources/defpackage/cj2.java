package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cj2 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ tr3 o;

    public /* synthetic */ cj2(tr3 tr3Var, int i) {
        this.n = i;
        this.o = tr3Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        float fFloatValue;
        int i = this.n;
        tr3 tr3Var = this.o;
        switch (i) {
            case 0:
                List list = (List) tr3Var.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (nt1.g(((yh2) obj).o.n, "composable")) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            case 1:
                fFloatValue = ((Number) tr3Var.getValue()).floatValue();
                break;
            default:
                fFloatValue = ((Number) tr3Var.getValue()).floatValue();
                break;
        }
        return Float.valueOf(fFloatValue);
    }
}
