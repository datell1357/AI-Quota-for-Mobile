package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t82 {
    public long a;
    public final Object b;
    public final Object c;

    public t82(at4 at4Var, String str, long j) {
        this.c = at4Var;
        Preconditions.checkNotEmpty(str);
        this.b = str;
        this.a = at4Var.S("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j)}, -1L);
    }

    public void a(long j, long j2) {
        ((ta4) this.b).a(Float.intBitsToFloat((int) (j2 >> 32)), j);
        ((ta4) this.c).a(Float.intBitsToFloat((int) (j2 & 4294967295L)), j);
    }

    public void b(qb2 qb2Var, ao1 ao1Var, Map map, long j) {
        x23 x23Var = (x23) this.c;
        long j2 = x23Var.n;
        LinkedHashMap linkedHashMap = (LinkedHashMap) x23Var.p;
        if (j > j2) {
            Object objRemove = linkedHashMap.remove(qb2Var);
            if (objRemove != null) {
                x23Var.o = x23Var.d() - x23Var.g(qb2Var, objRemove);
                x23Var.b(qb2Var, objRemove, null);
            }
            ((d90) this.b).p(qb2Var, ao1Var, map, j);
            return;
        }
        w23 w23Var = new w23(ao1Var, map, j);
        Object objPut = linkedHashMap.put(qb2Var, w23Var);
        x23Var.o = x23Var.g(qb2Var, w23Var) + x23Var.d();
        if (objPut != null) {
            x23Var.o = x23Var.d() - x23Var.g(qb2Var, objPut);
            x23Var.b(qb2Var, objPut, w23Var);
        }
        x23Var.h(x23Var.n);
    }

    public List c() {
        List list;
        at4 at4Var = (at4) this.c;
        ArrayList arrayList = new ArrayList();
        String str = (String) this.b;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = at4Var.m0().query("raw_events", new String[]{"rowid", "name", "timestamp", "metadata_fingerprint", "data", "realtime", "elapsed_time"}, "app_id = ? and rowid > ?", new String[]{str, String.valueOf(this.a)}, null, null, "rowid", "1000");
                if (cursorQuery.moveToFirst()) {
                    do {
                        long j = cursorQuery.getLong(0);
                        long j2 = cursorQuery.getLong(3);
                        boolean z = cursorQuery.getLong(5) == 1;
                        long j3 = cursorQuery.getLong(6);
                        byte[] blob = cursorQuery.getBlob(4);
                        if (j > this.a) {
                            this.a = j;
                        }
                        try {
                            s35 s35Var = (s35) ub5.g0(u35.J(), blob);
                            String string = cursorQuery.getString(1);
                            if (string == null) {
                                string = "";
                            }
                            s35Var.n(string);
                            long j4 = cursorQuery.getLong(2);
                            s35Var.b();
                            ((u35) s35Var.o).Q(j4);
                            s35Var.b();
                            ((u35) s35Var.o).t(j3);
                            arrayList.add(new us4(j, j2, z, (u35) s35Var.d()));
                        } catch (IOException e) {
                            a25 a25Var = ((r45) at4Var.a).f;
                            r45.l(a25Var);
                            a25Var.f.c(a25.D(str), e, "Data loss. Failed to merge raw event. appId");
                        }
                    } while (cursorQuery.moveToNext());
                } else {
                    list = Collections.EMPTY_LIST;
                }
            } finally {
                if (0 != 0) {
                    cursorQuery.close();
                }
            }
        } catch (SQLiteException e2) {
            a25 a25Var2 = ((r45) at4Var.a).f;
            r45.l(a25Var2);
            a25Var2.f.c(a25.D(str), e2, "Data loss. Error querying raw events batch. appId");
            list = arrayList;
        }
        return list;
    }

    public t82(at4 at4Var, String str) {
        this.c = at4Var;
        Preconditions.checkNotEmpty(str);
        this.b = str;
        this.a = -1L;
    }

    public t82(long j, d90 d90Var) {
        this.a = j;
        this.b = d90Var;
        this.c = new x23(this, j);
    }

    public t82() {
        this.b = new ta4();
        this.c = new ta4();
    }
}
