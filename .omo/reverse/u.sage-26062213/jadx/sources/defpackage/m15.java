package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m15 extends j05 {
    public static final String[] e = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};
    public final ys4 c;
    public boolean d;

    public m15(r45 r45Var) {
        super(r45Var);
        this.c = new ys4(this, ((r45) this.a).a);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006f A[PHI: r4
  0x006f: PHI (r4v4 int) = (r4v1 int), (r4v2 int), (r4v1 int) binds: [B:32:0x0080, B:28:0x006d, B:25:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A() {
        /*
            r10 = this;
            java.lang.String r0 = "Error deleting app launch break from local database"
            java.lang.Object r1 = r10.a
            r45 r1 = (defpackage.r45) r1
            r10.v()
            boolean r2 = r10.d
            if (r2 == 0) goto Lf
            goto L98
        Lf:
            android.content.Context r2 = r1.a
            java.lang.String r3 = "google_app_measurement_local.db"
            java.io.File r2 = r2.getDatabasePath(r3)
            boolean r2 = r2.exists()
            if (r2 == 0) goto L98
            r2 = 5
            r3 = 0
            r4 = r2
        L20:
            if (r3 >= r2) goto L8c
            r5 = 0
            r6 = 1
            android.database.sqlite.SQLiteDatabase r5 = r10.B()     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            if (r5 != 0) goto L2d
            r10.d = r6     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            goto L98
        L2d:
            r5.beginTransaction()     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            java.lang.String r7 = "messages"
            java.lang.String r8 = "type == ?"
            r9 = 3
            java.lang.String r9 = java.lang.Integer.toString(r9)     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            java.lang.String[] r9 = new java.lang.String[]{r9}     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.delete(r7, r8, r9)     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.endTransaction()     // Catch: java.lang.Throwable -> L4a android.database.sqlite.SQLiteException -> L4c android.database.sqlite.SQLiteDatabaseLockedException -> L67 android.database.sqlite.SQLiteFullException -> L73
            r5.close()
            return
        L4a:
            r10 = move-exception
            goto L86
        L4c:
            r7 = move-exception
            if (r5 == 0) goto L58
            boolean r8 = r5.inTransaction()     // Catch: java.lang.Throwable -> L4a
            if (r8 == 0) goto L58
            r5.endTransaction()     // Catch: java.lang.Throwable -> L4a
        L58:
            a25 r8 = r1.f     // Catch: java.lang.Throwable -> L4a
            defpackage.r45.l(r8)     // Catch: java.lang.Throwable -> L4a
            x15 r8 = r8.f     // Catch: java.lang.Throwable -> L4a
            r8.b(r7, r0)     // Catch: java.lang.Throwable -> L4a
            r10.d = r6     // Catch: java.lang.Throwable -> L4a
            if (r5 == 0) goto L83
            goto L6f
        L67:
            long r6 = (long) r4     // Catch: java.lang.Throwable -> L4a
            android.os.SystemClock.sleep(r6)     // Catch: java.lang.Throwable -> L4a
            int r4 = r4 + 20
            if (r5 == 0) goto L83
        L6f:
            r5.close()
            goto L83
        L73:
            r7 = move-exception
            a25 r8 = r1.f     // Catch: java.lang.Throwable -> L4a
            defpackage.r45.l(r8)     // Catch: java.lang.Throwable -> L4a
            x15 r8 = r8.f     // Catch: java.lang.Throwable -> L4a
            r8.b(r7, r0)     // Catch: java.lang.Throwable -> L4a
            r10.d = r6     // Catch: java.lang.Throwable -> L4a
            if (r5 == 0) goto L83
            goto L6f
        L83:
            int r3 = r3 + 1
            goto L20
        L86:
            if (r5 == 0) goto L8b
            r5.close()
        L8b:
            throw r10
        L8c:
            a25 r10 = r1.f
            defpackage.r45.l(r10)
            x15 r10 = r10.i
            java.lang.String r0 = "Error deleting app launch break from local database in reasonable time"
            r10.a(r0)
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m15.A():void");
    }

    public final SQLiteDatabase B() {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0170 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae A[Catch: SQLiteException -> 0x0093, SQLiteDatabaseLockedException -> 0x009a, SQLiteFullException -> 0x009e, all -> 0x0154, TRY_ENTER, TryCatch #10 {all -> 0x0154, blocks: (B:30:0x0088, B:32:0x008e, B:43:0x00ae, B:45:0x00cf, B:47:0x00d8, B:49:0x00de, B:59:0x00f8, B:73:0x0120, B:75:0x0126, B:76:0x0129, B:93:0x015b, B:83:0x0144), top: B:109:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0120 A[Catch: all -> 0x0154, TRY_ENTER, TryCatch #10 {all -> 0x0154, blocks: (B:30:0x0088, B:32:0x008e, B:43:0x00ae, B:45:0x00cf, B:47:0x00d8, B:49:0x00de, B:59:0x00f8, B:73:0x0120, B:75:0x0126, B:76:0x0129, B:93:0x015b, B:83:0x0144), top: B:109:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0150 A[PHI: r8 r10 r17
  0x0150: PHI (r8v5 int) = (r8v3 int), (r8v3 int), (r8v6 int) binds: [B:79:0x013c, B:96:0x016d, B:87:0x014e] A[DONT_GENERATE, DONT_INLINE]
  0x0150: PHI (r10v7 android.database.sqlite.SQLiteDatabase) = 
  (r10v5 android.database.sqlite.SQLiteDatabase)
  (r10v6 android.database.sqlite.SQLiteDatabase)
  (r10v8 android.database.sqlite.SQLiteDatabase)
 binds: [B:79:0x013c, B:96:0x016d, B:87:0x014e] A[DONT_GENERATE, DONT_INLINE]
  0x0150: PHI (r17v7 boolean) = (r17v4 boolean), (r17v5 boolean), (r17v8 boolean) binds: [B:79:0x013c, B:96:0x016d, B:87:0x014e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean C(int r19, byte[] r20) {
        /*
            Method dump skipped, instruction units count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m15.C(int, byte[]):boolean");
    }

    @Override // defpackage.j05
    public final boolean y() {
        return false;
    }

    public final void z() {
        int iDelete;
        r45 r45Var = (r45) this.a;
        v();
        try {
            SQLiteDatabase sQLiteDatabaseB = B();
            if (sQLiteDatabaseB == null || (iDelete = sQLiteDatabaseB.delete("messages", null, null)) <= 0) {
                return;
            }
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.b(Integer.valueOf(iDelete), "Reset local analytics data. records");
        } catch (SQLiteException e2) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(e2, "Error resetting local analytics data. error");
        }
    }
}
