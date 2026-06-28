package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a11 {
    public static final String a = t72.i("EnqueueRunnable");

    public static void a(tf4 tf4Var) {
        boolean z;
        eg4 eg4Var = tf4Var.a;
        HashSet hashSet = new HashSet();
        hashSet.addAll(tf4Var.e);
        HashSet hashSetB = tf4.b(tf4Var);
        Iterator it = hashSet.iterator();
        while (true) {
            if (!it.hasNext()) {
                hashSet.removeAll(tf4Var.e);
                z = false;
                break;
            } else if (hashSetB.contains((String) it.next())) {
                z = true;
                break;
            }
        }
        if (z) {
            mk0.f(tf4Var, ")", "WorkContinuation has cycles (");
            return;
        }
        WorkDatabase workDatabase = eg4Var.c;
        md0 md0Var = eg4Var.b;
        workDatabase.b();
        try {
            nt1.j(workDatabase, md0Var, tf4Var);
            boolean zB = b(tf4Var);
            workDatabase.p();
            if (zB) {
                zd3.b(md0Var, eg4Var.c, eg4Var.e);
            }
        } finally {
            workDatabase.l();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(defpackage.tf4 r25) {
        /*
            Method dump skipped, instruction units count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a11.b(tf4):boolean");
    }
}
