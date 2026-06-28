package defpackage;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hh4 {
    public final og4 a;
    public final Context b;
    public final String c;
    public final qd1 d;
    public final md0 e;
    public final pr3 f;
    public final ez2 g;
    public final WorkDatabase h;
    public final qg4 i;
    public final js0 j;
    public final ArrayList k;
    public final String l;
    public final vu1 m;

    public hh4(j04 j04Var) {
        og4 og4Var = (og4) j04Var.f;
        this.a = og4Var;
        this.b = j04Var.a;
        String str = og4Var.a;
        this.c = str;
        this.d = (qd1) j04Var.c;
        md0 md0Var = (md0) j04Var.b;
        this.e = md0Var;
        this.f = md0Var.d;
        this.g = (ez2) j04Var.d;
        WorkDatabase workDatabase = (WorkDatabase) j04Var.e;
        this.h = workDatabase;
        this.i = workDatabase.w();
        this.j = workDatabase.r();
        ArrayList arrayList = (ArrayList) j04Var.g;
        this.k = arrayList;
        this.l = xw1.s(di0.A("Work [ id=", str, ", tags={ "), o70.n0(arrayList, ",", null, null, null, 62), " } ]");
        this.m = n44.E();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0276  */
    /* JADX WARN: Type inference failed for: r4v4, types: [dh0] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(final defpackage.hh4 r20, defpackage.fh0 r21) {
        /*
            Method dump skipped, instruction units count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hh4.a(hh4, fh0):java.lang.Object");
    }

    public final void b(int i) {
        qg4 qg4Var = this.i;
        cg4 cg4Var = cg4.n;
        String str = this.c;
        qg4Var.h(cg4Var, str);
        this.f.getClass();
        qg4Var.g(System.currentTimeMillis(), str);
        qg4Var.f(this.a.v, str);
        qg4Var.e(-1L, str);
        qg4Var.i(i, str);
    }

    public final void c() {
        this.f.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        qg4 qg4Var = this.i;
        String str = this.c;
        qg4Var.g(jCurrentTimeMillis, str);
        qg4Var.h(cg4.n, str);
        ga3 ga3Var = qg4Var.a;
        ((Number) gg4.N(ga3Var, false, true, new ao0(str, 18))).intValue();
        qg4Var.f(this.a.v, str);
        gg4.N(ga3Var, false, true, new ao0(str, 19));
        qg4Var.e(-1L, str);
    }

    public final void d(u42 u42Var) {
        u42Var.getClass();
        String str = this.c;
        ArrayList arrayListH = tv4.H(str);
        while (true) {
            boolean zIsEmpty = arrayListH.isEmpty();
            qg4 qg4Var = this.i;
            if (zIsEmpty) {
                zl0 zl0Var = ((r42) u42Var).a;
                zl0Var.getClass();
                qg4Var.f(this.a.v, str);
                gg4.N(qg4Var.a, false, true, new q14(7, zl0Var, str));
                return;
            }
            String str2 = (String) o70.u0(arrayListH);
            if (qg4Var.b(str2) != cg4.s) {
                qg4Var.h(cg4.q, str2);
            }
            arrayListH.addAll(this.j.a(str2));
        }
    }
}
