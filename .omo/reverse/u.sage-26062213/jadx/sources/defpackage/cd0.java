package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cd0 implements eh0, xq0, mb3, mv3 {
    public final /* synthetic */ long n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;

    public /* synthetic */ cd0(Object obj, long j, Object obj2) {
        this.o = obj;
        this.n = j;
        this.p = obj2;
    }

    @Override // defpackage.xq0
    public void a(n03 n03Var) {
        ((jj0) n03Var.get()).d((String) this.o, this.n, (bp) this.p);
    }

    @Override // defpackage.mb3
    public Object apply(Object obj) {
        String str = (String) this.o;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i = ((o72) this.p).n;
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i)});
        try {
            boolean z = cursorRawQuery.getCount() > 0;
            cursorRawQuery.close();
            long j = this.n;
            if (z) {
                sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i)});
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            return null;
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    @Override // defpackage.mv3
    public Object b() {
        ed0 ed0Var = (ed0) this.o;
        hp hpVar = (hp) this.p;
        ob3 ob3Var = (ob3) ed0Var.d;
        long jI = ((pr3) ed0Var.g).i() + this.n;
        ob3Var.getClass();
        ob3Var.r(new lb3(jI, hpVar));
        return null;
    }

    @Override // defpackage.eh0
    public Object then(ow3 ow3Var) {
        return ((ed0) this.o).b(ow3Var, this.n, (HashMap) this.p);
    }

    public /* synthetic */ cd0(Object obj, Object obj2, long j) {
        this.o = obj;
        this.p = obj2;
        this.n = j;
    }
}
