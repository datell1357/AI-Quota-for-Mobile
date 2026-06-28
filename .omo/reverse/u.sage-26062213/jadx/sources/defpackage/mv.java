package defpackage;

import android.content.res.Resources;
import android.os.Trace;
import android.view.View;
import android.view.Window;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mv implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public /* synthetic */ mv(qv3 qv3Var, String str, ne1 ne1Var, wf2 wf2Var, b20 b20Var) {
        this.n = 3;
        this.o = qv3Var;
        this.q = str;
        this.p = ne1Var;
        this.r = wf2Var;
        this.s = b20Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        og2 og2VarC;
        int i = this.n;
        Object obj = this.s;
        Object obj2 = this.r;
        Object obj3 = this.p;
        Object obj4 = this.q;
        Object obj5 = this.o;
        switch (i) {
            case 0:
                ay3 ay3Var = (ay3) obj5;
                hy1 hy1Var = (hy1) obj3;
                String str = (String) obj4;
                as0 as0Var = (as0) obj2;
                qa1 qa1Var = (qa1) obj;
                Trace.beginSection("BackgroundTextMeasurement");
                try {
                    po3 po3VarJ = wo3.j();
                    og2 og2Var = po3VarJ instanceof og2 ? (og2) po3VarJ : null;
                    if (og2Var == null || (og2VarC = og2Var.C(null, null)) == null) {
                        throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot");
                    }
                    try {
                        po3 po3VarJ2 = og2VarC.j();
                        try {
                            ay3 ay3VarU = fl4.u(ay3Var, hy1Var);
                            g01 g01Var = g01.n;
                            rb rbVar = new rb(str, ay3VarU, g01Var, g01Var, qa1Var, as0Var);
                            rbVar.c();
                            rbVar.a();
                            po3.q(po3VarJ2);
                            og2VarC.w().n();
                            og2VarC.c();
                            Trace.endSection();
                            return;
                        } catch (Throwable th) {
                            po3.q(po3VarJ2);
                            throw th;
                        }
                    } finally {
                    }
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            case 1:
                ov3 ov3Var = (ov3) obj3;
                ov3 ov3Var2 = (ov3) obj4;
                View view = (View) obj;
                Window window = ((u90) obj2).getWindow();
                window.getClass();
                pe1 pe1Var = ov3Var.c;
                Resources resources = view.getResources();
                resources.getClass();
                boolean zBooleanValue = ((Boolean) pe1Var.k(resources)).booleanValue();
                pe1 pe1Var2 = ov3Var2.c;
                Resources resources2 = view.getResources();
                resources2.getClass();
                ((zy0) obj5).b(ov3Var, ov3Var2, window, view, zBooleanValue, ((Boolean) pe1Var2.k(resources2)).booleanValue());
                return;
            case 2:
                a34 a34Var = (a34) obj5;
                jk3 jk3Var = (jk3) obj3;
                ListenableFuture listenableFuture = (ListenableFuture) obj4;
                ListenableFuture listenableFuture2 = (ListenableFuture) obj2;
                i31 i31Var = (i31) obj;
                if (a34Var.isDone()) {
                    jk3Var.o(listenableFuture);
                    return;
                } else {
                    if (listenableFuture2.isCancelled()) {
                        int i2 = i31.r;
                        if (i31Var.compareAndSet(h31.n, h31.o)) {
                            a34Var.cancel(false);
                            return;
                        }
                        return;
                    }
                    return;
                }
            default:
                String str2 = (String) obj4;
                ne1 ne1Var = (ne1) obj3;
                wf2 wf2Var = (wf2) obj2;
                b20 b20Var = (b20) obj;
                ((qv3) obj5).getClass();
                boolean zB = ix.B();
                if (zB) {
                    try {
                        Trace.beginSection(ix.Y(str2));
                    } finally {
                        if (zB) {
                            Trace.endSection();
                        }
                    }
                }
                try {
                    ne1Var.a();
                    tq2 tq2Var = w13.L;
                    wf2Var.i(tq2Var);
                    b20Var.a(tq2Var);
                } catch (Throwable th3) {
                    wf2Var.i(new sq2(th3));
                    b20Var.b(th3);
                }
                if (zB) {
                    return;
                } else {
                    return;
                }
        }
    }

    public /* synthetic */ mv(ay3 ay3Var, hy1 hy1Var, String str, as0 as0Var, qa1 qa1Var, boolean z) {
        this.n = 0;
        this.o = ay3Var;
        this.p = hy1Var;
        this.q = str;
        this.r = as0Var;
        this.s = qa1Var;
    }

    public /* synthetic */ mv(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
        this.s = obj5;
    }
}
