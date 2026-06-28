package defpackage;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ie1 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f137u = 0;
    public final Context n;
    public final dd1 o;
    public final d90 p;
    public final boolean q;
    public boolean r;
    public final cz2 s;
    public boolean t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ie1(Context context, String str, final dd1 dd1Var, final d90 d90Var, boolean z) {
        String string;
        super(context, str, null, d90Var.o, new DatabaseErrorHandler() { // from class: fe1
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                int i = ie1.f137u;
                sQLiteDatabase.getClass();
                dd1 dd1Var2 = dd1Var;
                ee1 ee1Var = (ee1) dd1Var2.o;
                if (ee1Var == null || !ee1Var.n.equals(sQLiteDatabase)) {
                    ee1Var = new ee1(sQLiteDatabase);
                    dd1Var2.o = ee1Var;
                }
                SQLiteDatabase sQLiteDatabase2 = ee1Var.n;
                d90Var.getClass();
                Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + ee1Var + ".path");
                if (!sQLiteDatabase2.isOpen()) {
                    String path = sQLiteDatabase2.getPath();
                    if (path != null) {
                        d90.f(path);
                        return;
                    }
                    return;
                }
                List<Pair<String, String>> attachedDbs = null;
                try {
                    try {
                        attachedDbs = sQLiteDatabase2.getAttachedDbs();
                    } finally {
                        if (attachedDbs != null) {
                            Iterator<T> it = attachedDbs.iterator();
                            while (it.hasNext()) {
                                Object obj = ((Pair) it.next()).second;
                                obj.getClass();
                                d90.f((String) obj);
                            }
                        } else {
                            String path2 = sQLiteDatabase2.getPath();
                            if (path2 != null) {
                                d90.f(path2);
                            }
                        }
                    }
                } catch (SQLiteException unused) {
                }
                try {
                    ee1Var.close();
                } catch (IOException unused2) {
                }
                if (attachedDbs != null) {
                    return;
                }
            }
        });
        context.getClass();
        d90Var.getClass();
        this.n = context;
        this.o = dd1Var;
        this.p = d90Var;
        this.q = z;
        if (str == null) {
            string = UUID.randomUUID().toString();
            string.getClass();
        } else {
            string = str;
        }
        this.s = new cz2(string, context.getCacheDir(), false);
    }

    public final ee1 b(boolean z) {
        cz2 cz2Var = this.s;
        try {
            cz2Var.a((this.t || getDatabaseName() == null) ? false : true);
            this.r = false;
            SQLiteDatabase sQLiteDatabaseR = r(z);
            if (!this.r) {
                ee1 ee1VarJ = j(sQLiteDatabaseR);
                cz2Var.b();
                return ee1VarJ;
            }
            close();
            ee1 ee1VarB = b(z);
            cz2Var.b();
            return ee1VarB;
        } catch (Throwable th) {
            cz2Var.b();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final void close() {
        cz2 cz2Var = this.s;
        try {
            cz2Var.a(cz2Var.a);
            super.close();
            this.o.o = null;
            this.t = false;
        } finally {
            cz2Var.b();
        }
    }

    public final ee1 j(SQLiteDatabase sQLiteDatabase) {
        dd1 dd1Var = this.o;
        dd1Var.getClass();
        ee1 ee1Var = (ee1) dd1Var.o;
        if (ee1Var != null && ee1Var.n.equals(sQLiteDatabase)) {
            return ee1Var;
        }
        ee1 ee1Var2 = new ee1(sQLiteDatabase);
        dd1Var.o = ee1Var2;
        return ee1Var2;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        boolean z = this.r;
        d90 d90Var = this.p;
        if (!z && d90Var.o != sQLiteDatabase.getVersion()) {
            sQLiteDatabase.setMaxSqlCacheSize(1);
        }
        try {
            j(sQLiteDatabase);
            d90Var.getClass();
        } catch (Throwable th) {
            throw new ge1(he1.n, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        try {
            ((da3) this.p.p).d(new ju3(j(sQLiteDatabase)));
        } catch (Throwable th) {
            throw new ge1(he1.o, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.getClass();
        this.r = true;
        try {
            this.p.i(j(sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new ge1(he1.q, th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        if (!this.r) {
            try {
                d90 d90Var = this.p;
                ee1 ee1VarJ = j(sQLiteDatabase);
                da3 da3Var = (da3) d90Var.p;
                da3Var.f(new ju3(ee1VarJ));
                da3Var.g = ee1VarJ;
            } catch (Throwable th) {
                throw new ge1(he1.r, th);
            }
        }
        this.t = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.getClass();
        this.r = true;
        try {
            this.p.i(j(sQLiteDatabase), i, i2);
        } catch (Throwable th) {
            throw new ge1(he1.p, th);
        }
    }

    public final SQLiteDatabase r(boolean z) throws Throwable {
        SQLiteDatabase readableDatabase;
        SQLiteDatabase readableDatabase2;
        File parentFile;
        String databaseName = getDatabaseName();
        boolean z2 = this.t;
        Context context = this.n;
        if (databaseName != null && !z2 && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
            }
        }
        try {
            if (z) {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                writableDatabase.getClass();
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase3 = getReadableDatabase();
            readableDatabase3.getClass();
            return readableDatabase3;
        } catch (Throwable unused) {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                if (z) {
                    readableDatabase2 = getWritableDatabase();
                    readableDatabase2.getClass();
                } else {
                    readableDatabase2 = getReadableDatabase();
                    readableDatabase2.getClass();
                }
                return readableDatabase2;
            } catch (Throwable th) {
                th = th;
                if (th instanceof ge1) {
                    ge1 ge1Var = (ge1) th;
                    int iOrdinal = ge1Var.n.ordinal();
                    th = ge1Var.o;
                    if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
                        throw th;
                    }
                    if (iOrdinal != 4) {
                        p61.x();
                        return null;
                    }
                    if (!(th instanceof SQLiteException)) {
                        throw th;
                    }
                }
                if (!(th instanceof SQLiteException) || databaseName == null || !this.q) {
                    throw th;
                }
                context.deleteDatabase(databaseName);
                try {
                    if (z) {
                        readableDatabase = getWritableDatabase();
                        readableDatabase.getClass();
                    } else {
                        readableDatabase = getReadableDatabase();
                        readableDatabase.getClass();
                    }
                    return readableDatabase;
                } catch (ge1 e) {
                    throw e.o;
                }
            }
        }
    }
}
