package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t75 implements cu3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ cu3 o;

    public /* synthetic */ t75(cu3 cu3Var, int i) {
        this.n = i;
        this.o = cu3Var;
    }

    @Override // defpackage.cu3
    public final Object get() {
        int i = this.n;
        cu3 cu3Var = this.o;
        switch (i) {
            case 0:
                Object obj = o75.j;
                return (oc5) ((cr2) cu3Var.get()).c();
            default:
                wd2 wd2Var = (wd2) cu3Var.get();
                wd2Var.getClass();
                a34 a34Var = new a34(gy4.c);
                return new ud2(a34Var, wd2Var.o.schedule(a34Var, 10000L, TimeUnit.MILLISECONDS));
        }
    }
}
