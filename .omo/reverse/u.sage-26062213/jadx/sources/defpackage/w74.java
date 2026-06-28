package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w74 implements mv3 {
    public final /* synthetic */ int n;
    public final /* synthetic */ ob3 o;

    public /* synthetic */ w74(ob3 ob3Var, int i) {
        this.n = i;
        this.o = ob3Var;
    }

    @Override // defpackage.mv3
    public final Object b() {
        SQLiteDatabase sQLiteDatabaseB;
        int i = this.n;
        ob3 ob3Var = this.o;
        boolean z = false;
        switch (i) {
            case 0:
                ob3Var.getClass();
                int i2 = m60.e;
                qd1 qd1Var = new qd1(2, z);
                qd1Var.p = null;
                qd1Var.o = new ArrayList();
                qd1Var.q = null;
                qd1Var.r = "";
                HashMap map = new HashMap();
                sQLiteDatabaseB = ob3Var.b();
                sQLiteDatabaseB.beginTransaction();
                try {
                    m60 m60Var = (m60) ob3.K(sQLiteDatabaseB.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new gd0(ob3Var, map, qd1Var, 8));
                    sQLiteDatabaseB.setTransactionSuccessful();
                    return m60Var;
                } finally {
                }
            default:
                long jI = ob3Var.o.i() - ob3Var.q.d;
                sQLiteDatabaseB = ob3Var.b();
                sQLiteDatabaseB.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(jI)};
                    Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            ob3Var.A(cursorRawQuery.getInt(0), o72.p, cursorRawQuery.getString(1));
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    cursorRawQuery.close();
                    int iDelete = sQLiteDatabaseB.delete("events", "timestamp_ms < ?", strArr);
                    sQLiteDatabaseB.setTransactionSuccessful();
                    sQLiteDatabaseB.endTransaction();
                    return Integer.valueOf(iDelete);
                } finally {
                }
        }
    }
}
