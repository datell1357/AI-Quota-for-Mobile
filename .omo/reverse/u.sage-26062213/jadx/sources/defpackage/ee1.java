package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ee1 implements Closeable {
    public static final String[] o = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    public static final String[] p = new String[0];
    public static final qz1 q;
    public static final qz1 r;
    public final SQLiteDatabase n;

    static {
        l6 l6Var = new l6(12);
        v12 v12Var = v12.o;
        q = dm0.C(v12Var, l6Var);
        r = dm0.C(v12Var, new l6(13));
    }

    public ee1(SQLiteDatabase sQLiteDatabase) {
        this.n = sQLiteDatabase;
    }

    public final void A(String str) {
        this.n.execSQL(str);
    }

    public final void B(Object[] objArr) {
        this.n.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", objArr);
    }

    public final boolean F() {
        return this.n.inTransaction();
    }

    public final void K() {
        this.n.setTransactionSuccessful();
    }

    public final void b() {
        this.n.beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.n.close();
    }

    public final void j() {
        this.n.beginTransactionNonExclusive();
    }

    public final le1 r(String str) {
        str.getClass();
        SQLiteStatement sQLiteStatementCompileStatement = this.n.compileStatement(str);
        sQLiteStatementCompileStatement.getClass();
        return new le1(sQLiteStatementCompileStatement);
    }

    public final void z() {
        this.n.endTransaction();
    }
}
