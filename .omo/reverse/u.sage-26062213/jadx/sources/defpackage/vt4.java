package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vt4 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final zt4 g;

    public vt4(r45 r45Var, String str, String str2, String str3, long j, long j2, long j3, Bundle bundle) {
        zt4 zt4Var;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        this.f = j3;
        if (j3 != 0 && j3 > j) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.i.b(a25.D(str2), "Event created with reverse previous/current timestamps. appId");
        }
        if (bundle == null || bundle.isEmpty()) {
            zt4Var = new zt4(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    a25 a25Var2 = r45Var.f;
                    r45.l(a25Var2);
                    a25Var2.f.a("Param name can't be null");
                    it.remove();
                } else {
                    ac5 ac5Var = r45Var.i;
                    r45.j(ac5Var);
                    Object objE = ac5Var.E(bundle2.get(next), next);
                    if (objE == null) {
                        a25 a25Var3 = r45Var.f;
                        r45.l(a25Var3);
                        a25Var3.i.b(r45Var.j.b(next), "Param value can't be null");
                        it.remove();
                    } else {
                        ac5 ac5Var2 = r45Var.i;
                        r45.j(ac5Var2);
                        ac5Var2.M(bundle2, next, objE);
                    }
                }
            }
            zt4Var = new zt4(bundle2);
        }
        this.g = zt4Var;
    }

    public final vt4 a(r45 r45Var, long j) {
        return new vt4(r45Var, this.c, this.a, this.b, this.d, this.e, j, this.g);
    }

    public final String toString() {
        String string = this.g.toString();
        String str = this.a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        StringBuilder sb = new StringBuilder(length + 22 + String.valueOf(str2).length() + 10 + string.length() + 1);
        di0.E(sb, "Event{appId='", str, "', name='", str2);
        return di0.y(sb, "', params=", string, "}");
    }

    public vt4(r45 r45Var, String str, String str2, String str3, long j, long j2, long j3, zt4 zt4Var) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zt4Var);
        this.a = str2;
        this.b = str3;
        this.c = true == TextUtils.isEmpty(str) ? null : str;
        this.d = j;
        this.e = j2;
        this.f = j3;
        if (j3 != 0 && j3 > j) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.i.c(a25.D(str2), a25.D(str3), "Event created with reverse previous/current timestamps. appId, name");
        }
        this.g = zt4Var;
    }
}
