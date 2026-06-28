package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mr0 implements rr0, mv3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ long p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public /* synthetic */ mr0(ed0 ed0Var, Iterable iterable, hp hpVar, long j) {
        this.n = 2;
        this.o = ed0Var;
        this.r = iterable;
        this.q = hpVar;
        this.p = j;
    }

    @Override // defpackage.rr0
    public ScheduledFuture a(wu4 wu4Var) {
        int i = this.n;
        int i2 = 1;
        Object obj = this.q;
        long j = this.p;
        Object obj2 = this.r;
        qr0 qr0Var = (qr0) this.o;
        switch (i) {
            case 0:
                return qr0Var.o.schedule(new pr0(qr0Var, (Runnable) obj2, wu4Var, i2), j, (TimeUnit) obj);
            default:
                return qr0Var.o.schedule(new s00(qr0Var, (Callable) obj2, wu4Var, i2), j, (TimeUnit) obj);
        }
    }

    @Override // defpackage.mv3
    public Object b() {
        ed0 ed0Var = (ed0) this.o;
        Iterable iterable = (Iterable) this.r;
        hp hpVar = (hp) this.q;
        ob3 ob3Var = (ob3) ed0Var.d;
        ob3Var.getClass();
        if (iterable.iterator().hasNext()) {
            String strConcat = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(ob3.F(iterable));
            SQLiteDatabase sQLiteDatabaseB = ob3Var.b();
            sQLiteDatabaseB.beginTransaction();
            try {
                sQLiteDatabaseB.compileStatement(strConcat).execute();
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        ob3Var.A(cursorRawQuery.getInt(0), o72.s, cursorRawQuery.getString(1));
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                }
                cursorRawQuery.close();
                sQLiteDatabaseB.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                sQLiteDatabaseB.setTransactionSuccessful();
            } finally {
                sQLiteDatabaseB.endTransaction();
            }
        }
        ob3Var.r(new lb3(((pr3) ed0Var.g).i() + this.p, hpVar));
        return null;
    }

    public /* synthetic */ mr0(qr0 qr0Var, Object obj, long j, TimeUnit timeUnit, int i) {
        this.n = i;
        this.o = qr0Var;
        this.r = obj;
        this.p = j;
        this.q = timeUnit;
    }
}
