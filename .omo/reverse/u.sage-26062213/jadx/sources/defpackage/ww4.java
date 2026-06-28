package defpackage;

import android.os.Bundle;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ww4 implements c65 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ww4(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.c65
    public final void a(String str, String str2, Bundle bundle, long j) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                pc4 pc4Var = (pc4) obj;
                if (((HashSet) pc4Var.o).contains(str2)) {
                    Bundle bundle2 = new Bundle();
                    np1 np1Var = gv4.a;
                    String strE = vm4.e(str2, ca.l, ca.g);
                    if (strE != null) {
                        str2 = strE;
                    }
                    bundle2.putString("events", str2);
                    ((gw4) pc4Var.p).B(2, bundle2);
                    break;
                }
                break;
            default:
                if (str != null && !gv4.a.contains(str2)) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("name", str2);
                    bundle3.putLong("timestampInMillis", j);
                    bundle3.putBundle("params", bundle);
                    ((gw4) ((gt4) obj).o).B(3, bundle3);
                    break;
                }
                break;
        }
    }
}
