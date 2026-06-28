package defpackage;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hc implements ComponentCallbacks2 {
    public final /* synthetic */ ic n;

    public hc(ic icVar) {
        this.n = icVar;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        ic icVar = this.n;
        synchronized (icVar) {
            if (((o23) ((WeakReference) icVar.b).get()) == null) {
                icVar.e();
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        s23 s23VarC;
        long jD;
        ic icVar = this.n;
        synchronized (icVar) {
            try {
                o23 o23Var = (o23) ((WeakReference) icVar.b).get();
                if (o23Var != null) {
                    m23 m23Var = o23Var.a;
                    if (i >= 40) {
                        s23 s23VarC2 = o23Var.c();
                        if (s23VarC2 != null) {
                            synchronized (s23VarC2.c) {
                                ((x23) s23VarC2.a.c).h(-1L);
                                d90 d90Var = s23VarC2.b;
                                d90Var.o = 0;
                                ((LinkedHashMap) d90Var.p).clear();
                            }
                        }
                    } else if (i >= 20) {
                        ((gc) icVar.c).a(m23Var.a);
                    } else if (i >= 10 && (s23VarC = o23Var.c()) != null) {
                        synchronized (s23VarC.c) {
                            jD = ((x23) s23VarC.a.c).d();
                        }
                        long j = jD / 2;
                        synchronized (s23VarC.c) {
                            ((x23) s23VarC.a.c).h(j);
                        }
                    }
                } else {
                    icVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
