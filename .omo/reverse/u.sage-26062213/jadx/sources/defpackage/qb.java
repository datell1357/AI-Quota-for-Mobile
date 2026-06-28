package defpackage;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;
import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qb implements gf1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ qb(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.n;
        Object obj5 = this.o;
        switch (i) {
            case 0:
                rb rbVar = (rb) obj5;
                c54 c54VarB = ((sa1) rbVar.e).b((ra1) obj, (pb1) obj2, ((nb1) obj3).a, ((ob1) obj4).a);
                if (c54VarB instanceof c54) {
                    Object obj6 = c54VarB.n;
                    obj6.getClass();
                    return (Typeface) obj6;
                }
                ui3 ui3Var = new ui3(c54VarB, rbVar.j);
                rbVar.j = ui3Var;
                Object obj7 = ui3Var.q;
                obj7.getClass();
                return (Typeface) obj7;
            default:
                SQLiteCursorDriver sQLiteCursorDriver = (SQLiteCursorDriver) obj2;
                String str = (String) obj3;
                SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
                sQLiteQuery.getClass();
                ke1 ke1Var = new ke1(sQLiteQuery);
                qu3 qu3Var = (qu3) ((ra3) obj5).o;
                int length = qu3Var.q.length;
                for (int i2 = 1; i2 < length; i2++) {
                    int i3 = qu3Var.q[i2];
                    if (i3 == 1) {
                        ke1Var.h(i2, qu3Var.r[i2]);
                    } else if (i3 == 2) {
                        ke1Var.y(qu3Var.s[i2], i2);
                    } else if (i3 == 3) {
                        String str2 = qu3Var.t[i2];
                        str2.getClass();
                        ke1Var.s(i2, str2);
                    } else if (i3 == 4) {
                        byte[] bArr = qu3Var.f284u[i2];
                        bArr.getClass();
                        ke1Var.k(i2, bArr);
                    } else if (i3 == 5) {
                        ke1Var.e(i2);
                    }
                }
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }
}
