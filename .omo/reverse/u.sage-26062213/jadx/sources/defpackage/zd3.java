package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zd3 {
    public static final String a = t72.i("Schedulers");

    public static void a(qg4 qg4Var, pr3 pr3Var, List list) {
        if (list.size() > 0) {
            pr3Var.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                qg4Var.e(jCurrentTimeMillis, ((og4) it.next()).a);
            }
        }
    }

    public static void b(md0 md0Var, WorkDatabase workDatabase, List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        qg4 qg4VarW = workDatabase.w();
        workDatabase.b();
        try {
            ga3 ga3Var = qg4VarW.a;
            ga3 ga3Var2 = qg4VarW.a;
            List list2 = (List) gg4.N(ga3Var, true, false, new ba4(15));
            a(qg4VarW, md0Var.d, list2);
            List list3 = (List) gg4.N(ga3Var2, true, false, new i12(md0Var.k));
            a(qg4VarW, md0Var.d, list3);
            list3.addAll(list2);
            List list4 = (List) gg4.N(ga3Var2, true, false, new ba4(18));
            workDatabase.p();
            workDatabase.l();
            if (list3.size() > 0) {
                og4[] og4VarArr = (og4[]) list3.toArray(new og4[list3.size()]);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    wd3 wd3Var = (wd3) it.next();
                    if (wd3Var.e()) {
                        wd3Var.c(og4VarArr);
                    }
                }
            }
            if (list4.size() > 0) {
                og4[] og4VarArr2 = (og4[]) list4.toArray(new og4[list4.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    wd3 wd3Var2 = (wd3) it2.next();
                    if (!wd3Var2.e()) {
                        wd3Var2.c(og4VarArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.l();
            throw th;
        }
    }
}
