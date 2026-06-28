package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a61 {
    public final n03 a;
    public Integer b = null;

    public a61(n03 n03Var) {
        this.a = n03Var;
    }

    public static boolean a(ArrayList arrayList, n2 n2Var) {
        String str = n2Var.a;
        String str2 = n2Var.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            n2 n2Var2 = (n2) obj;
            if (n2Var2.a.equals(str) && n2Var2.b.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public final ArrayList b() {
        h8 h8Var = (h8) ((g8) this.a.get());
        h8Var.getClass();
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : h8Var.a.a.f("frc", "")) {
            np1 np1Var = gv4.a;
            Preconditions.checkNotNull(bundle);
            f8 f8Var = new f8();
            f8Var.a = (String) Preconditions.checkNotNull((String) il4.d(bundle, "origin", String.class, null));
            f8Var.b = (String) Preconditions.checkNotNull((String) il4.d(bundle, "name", String.class, null));
            f8Var.c = il4.d(bundle, "value", Object.class, null);
            f8Var.d = (String) il4.d(bundle, "trigger_event_name", String.class, null);
            f8Var.e = ((Long) il4.d(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            f8Var.f = (String) il4.d(bundle, "timed_out_event_name", String.class, null);
            f8Var.g = (Bundle) il4.d(bundle, "timed_out_event_params", Bundle.class, null);
            f8Var.h = (String) il4.d(bundle, "triggered_event_name", String.class, null);
            f8Var.i = (Bundle) il4.d(bundle, "triggered_event_params", Bundle.class, null);
            f8Var.j = ((Long) il4.d(bundle, "time_to_live", Long.class, 0L)).longValue();
            f8Var.k = (String) il4.d(bundle, "expired_event_name", String.class, null);
            f8Var.l = (Bundle) il4.d(bundle, "expired_event_params", Bundle.class, null);
            f8Var.n = ((Boolean) il4.d(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            f8Var.m = ((Long) il4.d(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            f8Var.o = ((Long) il4.d(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(f8Var);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0265 A[EDGE_INSN: B:211:0x0265->B:93:0x0265 BREAK  A[LOOP:9: B:112:0x02aa->B:212:?]] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0268  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.util.ArrayList r23) throws defpackage.m2 {
        /*
            Method dump skipped, instruction units count: 937
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a61.c(java.util.ArrayList):void");
    }
}
