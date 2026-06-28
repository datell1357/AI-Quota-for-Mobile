package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ce5 {
    public final String a;
    public final h2 b;
    public final bo c;
    public final gw4 d;
    public final hg e;
    public final hg f;
    public final Object g;
    public final ky4 h;
    public List i;

    public ce5(bo boVar, h2 h2Var) {
        int i = 27;
        this.f = new hg(new pc4(i, this));
        Object obj = new Object();
        this.g = obj;
        this.i = new ArrayList();
        this.c = boVar;
        this.b = h2Var;
        this.a = (String) boVar.b;
        this.e = new hg(new ie5(boVar));
        this.d = new gw4(26);
        this.h = new ky4(i);
        bb5 bb5Var = new bb5(4, this);
        synchronized (obj) {
            this.i.add(bb5Var);
        }
    }

    public final i2 a(gb5 gb5Var, wd2 wd2Var) {
        bb5 bb5Var = new bb5(3, gb5Var);
        int i = vf5.a;
        ic5 ic5Var = new ic5(4, ye5.a(), bb5Var);
        dz3 dz3Var = wf5.a;
        n44.X(dz3Var, "ticker");
        dz3Var.a();
        String strConcat = "Update ".concat(String.valueOf(this.a));
        this.h.getClass();
        kf5 kf5VarB = ky4.b(strConcat);
        try {
            s0 s0VarU = this.f.u();
            gw4 gw4Var = this.d;
            gt4 gt4Var = new gt4(16, s0VarU);
            fu0 fu0Var = fu0.n;
            gw4Var.F(gt4Var, fu0Var);
            ListenableFuture listenableFutureF = gw4Var.F(vf5.a(new qd1(this, s0VarU, ic5Var, wd2Var, 25)), fu0Var);
            tf1.propagateCancellation(listenableFutureF, s0VarU);
            tf1.d(this.b);
            i2 i2VarE = tf1.e(listenableFutureF, new pf1(), fu0Var);
            kf5VarB.b(i2VarE);
            kf5VarB.close();
            return i2VarE;
        } finally {
        }
    }
}
