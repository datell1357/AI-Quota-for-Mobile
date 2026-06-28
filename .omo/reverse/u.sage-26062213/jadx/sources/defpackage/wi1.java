package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wi1 implements jv0 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ wi1(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    @Override // defpackage.jv0
    public final void a() {
        switch (this.n) {
            case 0:
                xi1 xi1Var = (xi1) this.o;
                xi1Var.p.removeCallbacks((oz3) this.p);
                return;
            default:
                String str = (String) this.o;
                m mVar = (m) this.p;
                synchronized (gf2.b) {
                    LinkedHashMap linkedHashMap = gf2.c;
                    gf2 gf2Var = (gf2) linkedHashMap.get(str);
                    if (gf2Var != null) {
                        gf2Var.a.remove(mVar);
                        if (gf2Var.a.isEmpty()) {
                            linkedHashMap.remove(str);
                            gf2Var.stopWatching();
                        }
                    }
                    break;
                }
                return;
        }
    }
}
