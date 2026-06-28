package defpackage;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ki1 implements wd3, zo2, f31 {
    public static final String B = t72.i("GreedyScheduler");
    public final qd1 A;
    public final Context n;
    public final ir0 p;
    public boolean q;
    public final xh1 s;
    public final ez2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final pc4 f167u;
    public final md0 v;
    public final HashMap w;
    public Boolean x;
    public final ct2 y;
    public final qd1 z;
    public final HashMap o = new HashMap();
    public final Object r = new Object();

    public ki1(Context context, md0 md0Var, rp rpVar, ez2 ez2Var, pc4 pc4Var, qd1 qd1Var) {
        yl0 yl0Var = new yl0(3);
        xh1 xh1Var = new xh1();
        xh1Var.n = yl0Var;
        xh1Var.o = new Object();
        this.s = xh1Var;
        this.w = new HashMap();
        this.n = context;
        wu4 wu4Var = md0Var.g;
        this.p = new ir0(this, wu4Var, md0Var.d);
        this.A = new qd1(wu4Var, pc4Var);
        this.z = qd1Var;
        this.y = new ct2(rpVar);
        this.v = md0Var;
        this.t = ez2Var;
        this.f167u = pc4Var;
    }

    @Override // defpackage.wd3
    public final void a(String str) {
        List<nr3> listC;
        Runnable runnable;
        String str2 = B;
        if (this.x == null) {
            this.x = Boolean.valueOf(dz2.a(this.n, this.v));
        }
        if (!this.x.booleanValue()) {
            t72.g().h(str2, "Ignoring schedule request in non-main process");
            return;
        }
        if (!this.q) {
            this.t.a(this);
            this.q = true;
        }
        t72.g().c(str2, "Cancelling work ID " + str);
        ir0 ir0Var = this.p;
        if (ir0Var != null && (runnable = (Runnable) ir0Var.d.remove(str)) != null) {
            ((Handler) ir0Var.b.o).removeCallbacks(runnable);
        }
        xh1 xh1Var = this.s;
        xh1Var.getClass();
        str.getClass();
        synchronized (xh1Var.o) {
            listC = ((yl0) xh1Var.n).c(str);
        }
        for (nr3 nr3Var : listC) {
            this.A.j(nr3Var);
            pc4 pc4Var = this.f167u;
            pc4Var.getClass();
            pc4Var.d(nr3Var, -512);
        }
    }

    @Override // defpackage.zo2
    public final void b(og4 og4Var, sf0 sf0Var) {
        bg4 bg4VarA = rg4.a(og4Var);
        boolean z = sf0Var instanceof qf0;
        pc4 pc4Var = this.f167u;
        qd1 qd1Var = this.A;
        String str = B;
        xh1 xh1Var = this.s;
        if (z) {
            if (xh1Var.i(bg4VarA)) {
                return;
            }
            t72.g().c(str, "Constraints met: Scheduling work ID " + bg4VarA);
            nr3 nr3VarY = xh1Var.y(bg4VarA);
            qd1Var.I(nr3VarY);
            pc4Var.getClass();
            pc4Var.c(nr3VarY, null);
            return;
        }
        t72.g().c(str, "Constraints not met: Cancelling work ID " + bg4VarA);
        nr3 nr3VarW = xh1Var.w(bg4VarA);
        if (nr3VarW != null) {
            qd1Var.j(nr3VarW);
            int i = ((rf0) sf0Var).a;
            pc4Var.getClass();
            pc4Var.d(nr3VarW, i);
        }
    }

    @Override // defpackage.wd3
    public final void c(og4... og4VarArr) {
        long jMax;
        if (this.x == null) {
            this.x = Boolean.valueOf(dz2.a(this.n, this.v));
        }
        if (!this.x.booleanValue()) {
            t72.g().h(B, "Ignoring schedule request in a secondary process");
            return;
        }
        if (!this.q) {
            this.t.a(this);
            this.q = true;
        }
        HashSet<og4> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (og4 og4Var : og4VarArr) {
            if (!this.s.i(rg4.a(og4Var))) {
                synchronized (this.r) {
                    try {
                        bg4 bg4VarA = rg4.a(og4Var);
                        ji1 ji1Var = (ji1) this.w.get(bg4VarA);
                        if (ji1Var == null) {
                            int i = og4Var.k;
                            this.v.d.getClass();
                            ji1Var = new ji1(i, System.currentTimeMillis());
                            this.w.put(bg4VarA, ji1Var);
                        }
                        jMax = (((long) Math.max((og4Var.k - ji1Var.a) - 5, 0)) * 30000) + ji1Var.b;
                    } finally {
                    }
                }
                long jMax2 = Math.max(og4Var.a(), jMax);
                this.v.d.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (og4Var.b == cg4.n) {
                    if (jCurrentTimeMillis < jMax2) {
                        ir0 ir0Var = this.p;
                        if (ir0Var != null) {
                            wu4 wu4Var = ir0Var.b;
                            HashMap map = ir0Var.d;
                            Runnable runnable = (Runnable) map.remove(og4Var.a);
                            if (runnable != null) {
                                ((Handler) wu4Var.o).removeCallbacks(runnable);
                            }
                            rf1 rf1Var = new rf1(6, (Object) ir0Var, (Object) og4Var, false);
                            map.put(og4Var.a, rf1Var);
                            ir0Var.c.getClass();
                            ((Handler) wu4Var.o).postDelayed(rf1Var, jMax2 - System.currentTimeMillis());
                        }
                    } else if (!nt1.g(lf0.j, og4Var.j)) {
                        lf0 lf0Var = og4Var.j;
                        if (lf0Var.d) {
                            t72.g().c(B, "Ignoring " + og4Var + ". Requires device idle.");
                        } else if (lf0Var.i.isEmpty()) {
                            hashSet.add(og4Var);
                            hashSet2.add(og4Var.a);
                        } else {
                            t72.g().c(B, "Ignoring " + og4Var + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.s.i(rg4.a(og4Var))) {
                        t72.g().c(B, "Starting work for " + og4Var.a);
                        xh1 xh1Var = this.s;
                        xh1Var.getClass();
                        nr3 nr3VarY = xh1Var.y(rg4.a(og4Var));
                        this.A.I(nr3VarY);
                        pc4 pc4Var = this.f167u;
                        pc4Var.getClass();
                        pc4Var.c(nr3VarY, null);
                    }
                }
            }
        }
        synchronized (this.r) {
            try {
                if (!hashSet.isEmpty()) {
                    t72.g().c(B, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    for (og4 og4Var2 : hashSet) {
                        bg4 bg4VarA2 = rg4.a(og4Var2);
                        if (!this.o.containsKey(bg4VarA2)) {
                            this.o.put(bg4VarA2, sf4.a(this.y, og4Var2, (ji0) this.z.p, this));
                        }
                    }
                }
            } finally {
            }
        }
    }

    @Override // defpackage.f31
    public final void d(bg4 bg4Var, boolean z) {
        tu1 tu1Var;
        nr3 nr3VarW = this.s.w(bg4Var);
        if (nr3VarW != null) {
            this.A.j(nr3VarW);
        }
        synchronized (this.r) {
            tu1Var = (tu1) this.o.remove(bg4Var);
        }
        if (tu1Var != null) {
            t72.g().c(B, "Stopping tracking for " + bg4Var);
            tu1Var.j(null);
        }
        if (z) {
            return;
        }
        synchronized (this.r) {
            this.w.remove(bg4Var);
        }
    }

    @Override // defpackage.wd3
    public final boolean e() {
        return false;
    }
}
