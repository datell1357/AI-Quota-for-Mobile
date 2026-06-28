package defpackage;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class da3 {
    public boolean a;
    public boolean b;
    public final in0 c;
    public final dz0 d;
    public final List e;
    public final ce0 f;
    public ee1 g;

    public da3(in0 in0Var, dz0 dz0Var) {
        int i;
        fe0 fe0Var;
        fa3 fa3Var = in0Var.g;
        lu3 lu3Var = in0Var.c;
        String str = in0Var.b;
        this.c = in0Var;
        this.d = dz0Var;
        List list = in0Var.e;
        this.e = list == null ? g01.n : list;
        kb3 kb3Var = in0Var.p;
        if (kb3Var != null) {
            if (str == null) {
                fe0Var = new fe0(new gw4(this, kb3Var));
            } else {
                gw4 gw4Var = new gw4(this, kb3Var);
                int iOrdinal = fa3Var.ordinal();
                if (iOrdinal == 1) {
                    i = 1;
                } else {
                    if (iOrdinal != 2) {
                        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + fa3Var + '\'').toString());
                    }
                    i = 4;
                }
                int iOrdinal2 = fa3Var.ordinal();
                if (iOrdinal2 != 1 && iOrdinal2 != 2) {
                    throw new IllegalStateException(("Can't get max number of writers for journal mode '" + fa3Var + '\'').toString());
                }
                fe0Var = new fe0(gw4Var, str, i);
            }
            this.f = fe0Var;
        } else {
            if (lu3Var == null) {
                k21.f("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            Context context = in0Var.a;
            context.getClass();
            this.f = new ku3(new dd1(lu3Var.p(new pv1(context, str, new d90(this, dz0Var.a), false, false))));
        }
        boolean z = fa3Var == fa3.p;
        mu3 mu3VarC = c();
        if (mu3VarC != null) {
            mu3VarC.setWriteAheadLoggingEnabled(z);
        }
    }

    public static final void a(da3 da3Var, jb3 jb3Var) throws Throwable {
        Object f83Var;
        dz0 dz0Var = da3Var.d;
        in0 in0Var = da3Var.c;
        fa3 fa3Var = in0Var.g;
        fa3 fa3Var2 = fa3.p;
        if (fa3Var == fa3Var2) {
            ix.r(jb3Var, "PRAGMA journal_mode = WAL");
        } else {
            ix.r(jb3Var, "PRAGMA journal_mode = TRUNCATE");
        }
        if (in0Var.g == fa3Var2) {
            ix.r(jb3Var, "PRAGMA synchronous = NORMAL");
        } else {
            ix.r(jb3Var, "PRAGMA synchronous = FULL");
        }
        b(jb3Var);
        pb3 pb3VarK0 = jb3Var.k0("PRAGMA user_version");
        try {
            pb3VarK0.c0();
            int i = (int) pb3VarK0.getLong(0);
            is0.r(pb3VarK0, null);
            int i2 = dz0Var.a;
            if (i != i2) {
                ix.r(jb3Var, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    if (i == 0) {
                        da3Var.d(jb3Var);
                    } else {
                        da3Var.e(jb3Var, i, i2);
                    }
                    ix.r(jb3Var, "PRAGMA user_version = " + i2);
                    f83Var = t64.a;
                } catch (Throwable th) {
                    f83Var = new f83(th);
                }
                if (!(f83Var instanceof f83)) {
                    ix.r(jb3Var, "END TRANSACTION");
                }
                Throwable thA = g83.a(f83Var);
                if (thA != null) {
                    ix.r(jb3Var, "ROLLBACK TRANSACTION");
                    throw thA;
                }
            }
            da3Var.f(jb3Var);
        } finally {
        }
    }

    public static void b(jb3 jb3Var) {
        pb3 pb3VarK0 = jb3Var.k0("PRAGMA busy_timeout");
        try {
            pb3VarK0.c0();
            long j = pb3VarK0.getLong(0);
            is0.r(pb3VarK0, null);
            if (j < 3000) {
                ix.r(jb3Var, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                is0.r(pb3VarK0, th);
                throw th2;
            }
        }
    }

    public final mu3 c() {
        ce0 ce0Var = this.f;
        ku3 ku3Var = ce0Var instanceof ku3 ? (ku3) ce0Var : null;
        if (ku3Var != null) {
            return (mu3) ku3Var.n.o;
        }
        return null;
    }

    public final void d(jb3 jb3Var) {
        jb3Var.getClass();
        pb3 pb3VarK0 = jb3Var.k0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (pb3VarK0.c0()) {
                if (pb3VarK0.getLong(0) == 0) {
                    z = true;
                }
            }
            is0.r(pb3VarK0, null);
            dz0 dz0Var = this.d;
            dz0Var.a(jb3Var);
            if (!z) {
                f7 f7VarG = dz0Var.g(jb3Var);
                if (!f7VarG.b) {
                    throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + f7VarG.c).toString());
                }
            }
            g(jb3Var);
            dz0Var.c(jb3Var);
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ((z50) it.next()).getClass();
                if (jb3Var instanceof ju3) {
                    ((ju3) jb3Var).n.getClass();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0097 A[EDGE_INSN: B:118:0x0097->B:39:0x0097 BREAK  A[LOOP:4: B:9:0x001e->B:122:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(defpackage.jb3 r13, int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.da3.e(jb3, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(defpackage.jb3 r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.da3.f(jb3):void");
    }

    public final void g(jb3 jb3Var) {
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        ix.r(jb3Var, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((String) this.d.b) + "')");
    }

    public da3(in0 in0Var, z82 z82Var) {
        this.c = in0Var;
        this.d = new ca3("", -1, "");
        List list = in0Var.e;
        g01 g01Var = g01.n;
        this.e = list == null ? g01Var : list;
        o70.r0(list == null ? g01Var : list, new z50(new v(26, this)));
        Context context = in0Var.a;
        vq1 vq1Var = in0Var.d;
        Executor executor = in0Var.h;
        Executor executor2 = in0Var.i;
        List list2 = in0Var.m;
        List list3 = in0Var.n;
        context.getClass();
        vq1Var.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        throw new an2(0);
    }
}
