package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class db1 implements xf0 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ db1(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.xf0
    public final void accept(Object obj) {
        switch (this.a) {
            case 0:
                eb1 eb1Var = (eb1) obj;
                if (eb1Var == null) {
                    eb1Var = new eb1(-3);
                }
                ((gw4) this.b).C(eb1Var);
                return;
            default:
                eb1 eb1Var2 = (eb1) obj;
                synchronized (fb1.c) {
                    try {
                        wm3 wm3Var = fb1.d;
                        ArrayList arrayList = (ArrayList) wm3Var.get((String) this.b);
                        if (arrayList == null) {
                            return;
                        }
                        wm3Var.remove((String) this.b);
                        for (int i = 0; i < arrayList.size(); i++) {
                            ((xf0) arrayList.get(i)).accept(eb1Var2);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
