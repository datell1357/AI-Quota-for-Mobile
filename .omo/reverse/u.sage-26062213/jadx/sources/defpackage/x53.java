package defpackage;

import android.net.Uri;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x53 {
    public final jh a;
    public final hi0 b;

    public x53(jh jhVar, hi0 hi0Var) {
        jhVar.getClass();
        hi0Var.getClass();
        this.a = jhVar;
        this.b = hi0Var;
    }

    public static final URL a(x53 x53Var) {
        x53Var.getClass();
        Uri.Builder builderAppendPath = new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp");
        jh jhVar = x53Var.a;
        Uri.Builder builderAppendPath2 = builderAppendPath.appendPath(jhVar.a).appendPath("settings");
        u8 u8Var = jhVar.b;
        return new URL(builderAppendPath2.appendQueryParameter("build_version", u8Var.c).appendQueryParameter("display_version", u8Var.b).build().toString());
    }
}
