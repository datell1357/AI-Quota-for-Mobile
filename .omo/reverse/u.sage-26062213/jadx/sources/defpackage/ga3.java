package defpackage;

import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ga3 {
    public bh0 a;
    public Executor b;
    public ji3 c;
    public da3 d;
    public bu1 e;
    public boolean g;
    public final gw4 f = new gw4(new h9(0, this, ga3.class, "onClosed", "onClosed()V", 0, 0, 3));
    public final ThreadLocal h = new ThreadLocal();
    public final LinkedHashMap i = new LinkedHashMap();
    public boolean j = true;

    public final void a() {
        if (this.g) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            k21.n("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void b() {
        a();
        a();
        ee1 ee1VarF0 = g().f0();
        if (!ee1VarF0.F()) {
            ca.J(new x50(f(), (dh0) null, 6));
        }
        if (ee1VarF0.n.isWriteAheadLoggingEnabled()) {
            ee1VarF0.j();
        } else {
            ee1VarF0.b();
        }
    }

    public List c(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(oa2.a0(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(on4.x((i50) entry.getKey()), entry.getValue());
        }
        return g01.n;
    }

    public abstract bu1 d();

    public dz0 e() {
        throw new an2(0);
    }

    public final bu1 f() {
        bu1 bu1Var = this.e;
        if (bu1Var != null) {
            return bu1Var;
        }
        nt1.X("internalTracker");
        throw null;
    }

    public final mu3 g() {
        da3 da3Var = this.d;
        if (da3Var == null) {
            nt1.X("connectionManager");
            throw null;
        }
        mu3 mu3VarC = da3Var.c();
        if (mu3VarC != null) {
            return mu3VarC;
        }
        k21.n("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
        return null;
    }

    public Set h() {
        return o70.F0(new ArrayList(p70.a0(k01.n, 10)));
    }

    public LinkedHashMap i() {
        int iA0 = oa2.a0(p70.a0(k01.n, 10));
        if (iA0 < 16) {
            iA0 = 16;
        }
        return new LinkedHashMap(iA0);
    }

    public final boolean j() {
        da3 da3Var = this.d;
        if (da3Var != null) {
            return da3Var.c() != null;
        }
        nt1.X("connectionManager");
        throw null;
    }

    public final boolean k() {
        return m() && g().f0().F();
    }

    public final void l() {
        g().f0().z();
        if (k()) {
            return;
        }
        bu1 bu1VarF = f();
        bu1VarF.b.e(bu1VarF.e, bu1VarF.f);
    }

    public final boolean m() {
        da3 da3Var = this.d;
        if (da3Var == null) {
            nt1.X("connectionManager");
            throw null;
        }
        ee1 ee1Var = da3Var.g;
        if (ee1Var != null) {
            return ee1Var.n.isOpen();
        }
        return false;
    }

    public final Object n(Callable callable) {
        b();
        try {
            Object objCall = callable.call();
            p();
            return objCall;
        } finally {
            l();
        }
    }

    public final void o(Runnable runnable) {
        b();
        try {
            runnable.run();
            p();
        } finally {
            l();
        }
    }

    public final void p() {
        g().f0().K();
    }

    public final Object q(boolean z, df1 df1Var, fh0 fh0Var) {
        da3 da3Var = this.d;
        if (da3Var != null) {
            return da3Var.f.G(z, df1Var, fh0Var);
        }
        nt1.X("connectionManager");
        throw null;
    }
}
