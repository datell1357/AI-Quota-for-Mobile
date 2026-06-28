package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lw4 {
    public static final di a = new di(0);

    public static synchronized Uri a() {
        di diVar = a;
        Uri uri = (Uri) diVar.get("com.google.android.gms.auth_account");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.auth_account"))));
        diVar.put("com.google.android.gms.auth_account", uri2);
        return uri2;
    }
}
