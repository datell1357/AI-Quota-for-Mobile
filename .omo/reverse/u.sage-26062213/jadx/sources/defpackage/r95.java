package defpackage;

import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r95 extends ab5 {
    public final HashMap d;
    public final y25 e;
    public final y25 f;
    public final y25 g;
    public final y25 h;
    public final y25 i;
    public final y25 j;

    public r95(pb5 pb5Var) {
        super(pb5Var);
        this.d = new HashMap();
        f35 f35Var = ((r45) this.a).e;
        r45.j(f35Var);
        this.e = new y25(f35Var, "last_delete_stale", 0L);
        f35 f35Var2 = ((r45) this.a).e;
        r45.j(f35Var2);
        this.f = new y25(f35Var2, "last_delete_stale_batch", 0L);
        f35 f35Var3 = ((r45) this.a).e;
        r45.j(f35Var3);
        this.g = new y25(f35Var3, "backoff", 0L);
        f35 f35Var4 = ((r45) this.a).e;
        r45.j(f35Var4);
        this.h = new y25(f35Var4, "last_upload", 0L);
        f35 f35Var5 = ((r45) this.a).e;
        r45.j(f35Var5);
        this.i = new y25(f35Var5, "last_upload_attempt", 0L);
        f35 f35Var6 = ((r45) this.a).e;
        r45.j(f35Var6);
        this.j = new y25(f35Var6, "midnight_offset", 0L);
    }

    public final Pair A(String str) {
        f7 f7VarA;
        p95 p95Var;
        v();
        r45 r45Var = (r45) this.a;
        Clock clock = r45Var.k;
        ds4 ds4Var = r45Var.d;
        long jElapsedRealtime = clock.elapsedRealtime();
        HashMap map = this.d;
        p95 p95Var2 = (p95) map.get(str);
        if (p95Var2 != null && jElapsedRealtime < p95Var2.c) {
            return new Pair(p95Var2.a, Boolean.valueOf(p95Var2.b));
        }
        long jD = ds4Var.D(str, e05.b) + jElapsedRealtime;
        try {
            try {
                f7VarA = g7.a(r45Var.a);
            } catch (PackageManager.NameNotFoundException unused) {
                if (p95Var2 != null && jElapsedRealtime < p95Var2.c + ds4Var.D(str, e05.c)) {
                    return new Pair(p95Var2.a, Boolean.valueOf(p95Var2.b));
                }
                f7VarA = null;
            }
        } catch (Exception e) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.m.b(e, "Unable to get advertising id");
            p95Var = new p95("", jD, false);
        }
        if (f7VarA == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String str2 = f7VarA.c;
        p95Var = str2 != null ? new p95(str2, jD, f7VarA.b) : new p95("", jD, f7VarA.b);
        map.put(str, p95Var);
        return new Pair(p95Var.a, Boolean.valueOf(p95Var.b));
    }

    public final String B(vc5 vc5Var, y55 y55Var) {
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        if (!y55Var.i(x55.AD_STORAGE) || !vc5Var.A) {
            return "";
        }
        v();
        String str2 = (String) A(str).first;
        MessageDigest messageDigestO = ac5.O();
        if (messageDigestO == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestO.digest(str2.getBytes())));
    }

    public final Pair z(vc5 vc5Var, y55 y55Var) {
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        return (y55Var.i(x55.AD_STORAGE) && vc5Var.A) ? A(str) : new Pair("", Boolean.FALSE);
    }

    @Override // defpackage.ab5
    public final void y() {
    }
}
