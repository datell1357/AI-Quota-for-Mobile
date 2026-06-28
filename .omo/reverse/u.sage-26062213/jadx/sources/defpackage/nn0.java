package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nn0 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ tr3 o;

    public /* synthetic */ nn0(tr3 tr3Var, int i) {
        this.n = i;
        this.o = tr3Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        tr3 tr3Var = this.o;
        switch (i) {
            case 0:
                y02 y02Var = (y02) obj;
                y02Var.getClass();
                List list = (List) tr3Var.getValue();
                y02Var.a(list.size(), null, new ly(2, list), new ka0(802480018, true, new on0(list)));
                break;
            case 1:
                kx0 kx0Var = (kx0) obj;
                long j = ((t70) tr3Var.getValue()).a;
                if (!t70.c(j, t70.f)) {
                    kx0.C(kx0Var, j, 0L, 126);
                }
                break;
            default:
                ((o83) obj).c(((Number) tr3Var.getValue()).floatValue());
                break;
        }
        return t64Var;
    }
}
