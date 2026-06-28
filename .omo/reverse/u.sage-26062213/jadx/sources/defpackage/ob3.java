package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ob3 implements Closeable {
    public static final o01 s = new o01("proto");
    public final de3 n;
    public final pr3 o;
    public final pr3 p;
    public final eo q;
    public final m03 r;

    public ob3(pr3 pr3Var, pr3 pr3Var2, eo eoVar, de3 de3Var, m03 m03Var) {
        this.n = de3Var;
        this.o = pr3Var;
        this.p = pr3Var2;
        this.q = eoVar;
        this.r = m03Var;
    }

    public static String F(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((ro) it.next()).a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object K(Cursor cursor, mb3 mb3Var) {
        try {
            return mb3Var.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public static Long j(SQLiteDatabase sQLiteDatabase, hp hpVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(hpVar.a, String.valueOf(sy2.a(hpVar.c))));
        byte[] bArr = hpVar.b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    public final void A(long j, o72 o72Var, String str) {
        r(new cd0(str, o72Var, j));
    }

    public final Object B(mv3 mv3Var) {
        SQLiteDatabase sQLiteDatabaseB = b();
        pr3 pr3Var = this.p;
        long jI = pr3Var.i();
        while (true) {
            try {
                sQLiteDatabaseB.beginTransaction();
                try {
                    Object objB = mv3Var.b();
                    sQLiteDatabaseB.setTransactionSuccessful();
                    return objB;
                } finally {
                    sQLiteDatabaseB.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (pr3Var.i() >= ((long) this.q.c) + jI) {
                    throw new lv3("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final SQLiteDatabase b() {
        de3 de3Var = this.n;
        Objects.requireNonNull(de3Var);
        pr3 pr3Var = this.p;
        long jI = pr3Var.i();
        while (true) {
            try {
                return de3Var.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (pr3Var.i() >= ((long) this.q.c) + jI) {
                    throw new lv3("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.n.close();
    }

    public final Object r(mb3 mb3Var) {
        SQLiteDatabase sQLiteDatabaseB = b();
        sQLiteDatabaseB.beginTransaction();
        try {
            Object objApply = mb3Var.apply(sQLiteDatabaseB);
            sQLiteDatabaseB.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseB.endTransaction();
        }
    }

    public final ArrayList z(SQLiteDatabase sQLiteDatabase, hp hpVar, int i) {
        ArrayList arrayList = new ArrayList();
        Long lJ = j(sQLiteDatabase, hpVar);
        if (lJ == null) {
            return arrayList;
        }
        K(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{lJ.toString()}, null, null, null, String.valueOf(i)), new gd0(this, arrayList, hpVar, 7));
        return arrayList;
    }
}
