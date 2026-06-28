package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f85 extends j05 {
    public volatile w75 c;
    public volatile w75 d;
    public w75 e;
    public final ConcurrentHashMap f;
    public jx4 g;
    public volatile boolean h;
    public volatile w75 i;
    public w75 j;
    public boolean k;
    public final Object l;

    public f85(r45 r45Var) {
        super(r45Var);
        this.l = new Object();
        this.f = new ConcurrentHashMap();
    }

    public final String A(String str) {
        if (str == null) {
            return "Activity";
        }
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : "";
        r45 r45Var = (r45) this.a;
        int length2 = str2.length();
        r45Var.d.getClass();
        if (length2 <= 500) {
            return str2;
        }
        r45Var.d.getClass();
        return str2.substring(0, 500);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(defpackage.w75 r20, defpackage.w75 r21, long r22, boolean r24, android.os.Bundle r25) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f85.B(w75, w75, long, boolean, android.os.Bundle):void");
    }

    public final void C(jx4 jx4Var, Bundle bundle) {
        Bundle bundle2;
        if (!((r45) this.a).d.K() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f.put(Integer.valueOf(jx4Var.n), new w75(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void D(String str, w75 w75Var, boolean z) {
        w75 w75Var2;
        w75 w75Var3 = this.c == null ? this.d : this.c;
        if (w75Var.b == null) {
            w75Var2 = new w75(w75Var.a, str != null ? A(str) : null, w75Var.c, w75Var.e, w75Var.f, w75Var.g);
        } else {
            w75Var2 = w75Var;
        }
        this.d = this.c;
        this.c = w75Var2;
        r45 r45Var = (r45) this.a;
        long jElapsedRealtime = r45Var.k.elapsedRealtime();
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.E(new x75(this, w75Var2, w75Var3, jElapsedRealtime, z));
    }

    public final void E(w75 w75Var, boolean z, long j) {
        r45 r45Var = (r45) this.a;
        bx4 bx4Var = r45Var.n;
        r45.i(bx4Var);
        bx4Var.y(r45Var.k.elapsedRealtime());
        boolean z2 = w75Var != null && w75Var.d;
        ia5 ia5Var = r45Var.h;
        r45.k(ia5Var);
        if (!ia5Var.f.i(z2, z, j) || w75Var == null) {
            return;
        }
        w75Var.d = false;
    }

    public final w75 F(jx4 jx4Var) {
        Preconditions.checkNotNull(jx4Var);
        Integer numValueOf = Integer.valueOf(jx4Var.n);
        ConcurrentHashMap concurrentHashMap = this.f;
        w75 w75Var = (w75) concurrentHashMap.get(numValueOf);
        if (w75Var == null) {
            String strA = A(jx4Var.o);
            ac5 ac5Var = ((r45) this.a).i;
            r45.j(ac5Var);
            w75 w75Var2 = new w75(null, strA, ac5Var.s0());
            concurrentHashMap.put(numValueOf, w75Var2);
            w75Var = w75Var2;
        }
        return this.i != null ? this.i : w75Var;
    }

    @Override // defpackage.j05
    public final boolean y() {
        return false;
    }

    public final w75 z(boolean z) {
        w();
        v();
        w75 w75Var = this.e;
        return (z && w75Var == null) ? this.j : w75Var;
    }
}
