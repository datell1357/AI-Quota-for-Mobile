package defpackage;

import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eb5 extends ta5 {
    public static final boolean y(String str) {
        String str2 = (String) e05.t.a(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(",")) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0092, code lost:
    
        if (java.lang.Math.abs(r7.hashCode() % 100) < r9.I().t()) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.cb5 w(java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eb5.w(java.lang.String):cb5");
    }

    public final String x(String str) {
        w35 w35Var = this.b.a;
        pb5.T(w35Var);
        String strI = w35Var.I(str);
        if (TextUtils.isEmpty(strI)) {
            return (String) e05.r.a(null);
        }
        Uri uri = Uri.parse((String) e05.r.a(null));
        Uri.Builder builderBuildUpon = uri.buildUpon();
        String authority = uri.getAuthority();
        StringBuilder sb = new StringBuilder(String.valueOf(strI).length() + 1 + String.valueOf(authority).length());
        sb.append(strI);
        sb.append(".");
        sb.append(authority);
        builderBuildUpon.authority(sb.toString());
        return builderBuildUpon.build().toString();
    }
}
