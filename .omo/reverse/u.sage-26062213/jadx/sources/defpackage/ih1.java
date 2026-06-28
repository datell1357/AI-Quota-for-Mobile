package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ih1 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ ih1(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        long j;
        switch (this.n) {
            case 0:
                uo3 uo3Var = (uo3) obj;
                synchronized (wo3.c) {
                    j = wo3.e;
                    wo3.e = 1 + j;
                }
                return new og2(j, uo3Var, (pe1) this.o, (pe1) this.p);
            case 1:
                mu0 mu0Var = (mu0) this.o;
                Object obj2 = mu0Var.b;
                o20 o20Var = (o20) this.p;
                synchronized (obj2) {
                    ((ArrayList) mu0Var.c).remove(o20Var);
                }
                return t64.a;
            case 2:
                return ((jd3) this.o).k(((ArrayList) this.p).get(((Number) obj).intValue()));
            default:
                Throwable th = (Throwable) obj;
                if (th instanceof wg4) {
                    v42 v42Var = (v42) this.o;
                    v42Var.c.compareAndSet(-256, ((wg4) th).n);
                }
                ((ListenableFuture) this.p).cancel(false);
                return t64.a;
        }
    }
}
