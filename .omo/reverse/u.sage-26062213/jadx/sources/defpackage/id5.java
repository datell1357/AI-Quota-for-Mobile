package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class id5 implements wd5 {
    public final Context a;
    public String d;
    public final Object c = new Object();
    public final md5 b = new md5();

    public id5(di2 di2Var) {
        this.a = di2Var.o;
    }

    @Override // defpackage.wd5
    public final pd5 a(Uri uri) throws od5, c70 {
        if (h(uri)) {
            throw new od5("Android backend cannot perform remote operations without a remote backend");
        }
        File fileA = bt4.a(g(uri));
        return new pd5(new FileInputStream(fileA), fileA);
    }

    @Override // defpackage.wd5
    public final boolean b(Uri uri) throws od5 {
        if (h(uri)) {
            throw new od5("Android backend cannot perform remote operations without a remote backend");
        }
        return bt4.a(g(uri)).exists();
    }

    @Override // defpackage.wd5
    public final OutputStream c(Uri uri) {
        return this.b.c(g(uri));
    }

    @Override // defpackage.wd5
    public final void d(Uri uri) {
        this.b.d(g(uri));
    }

    @Override // defpackage.wd5
    public final void e(Uri uri, Uri uri2) throws IOException {
        this.b.e(g(uri), g(uri2));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010f  */
    @Override // defpackage.wd5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File f(android.net.Uri r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.id5.f(android.net.Uri):java.io.File");
    }

    public final Uri g(Uri uri) throws IOException {
        String strConcat;
        if (h(uri)) {
            throw new c70("Operation across authorities is not allowed.");
        }
        File fileF = f(uri);
        Uri.Builder builderPath = new Uri.Builder().scheme("file").authority("").path("/");
        hp1 hp1Var = lp1.o;
        ht4.i(4, "initialCapacity");
        builderPath.path(fileF.getAbsolutePath());
        z43 z43VarI = lp1.i(0, new Object[4]);
        Pattern pattern = td5.a;
        if (z43VarI.isEmpty()) {
            strConcat = null;
        } else {
            ev1 ev1Var = new ev1("+");
            Iterator it = z43VarI.iterator();
            StringBuilder sb = new StringBuilder();
            ev1Var.a(sb, it);
            strConcat = "transform=".concat(sb.toString());
        }
        return builderPath.encodedFragment(strConcat).build();
    }

    public final boolean h(Uri uri) {
        return (TextUtils.isEmpty(uri.getAuthority()) || this.a.getPackageName().equals(uri.getAuthority())) ? false : true;
    }

    @Override // defpackage.wd5
    public final String zzc() {
        return "android";
    }
}
