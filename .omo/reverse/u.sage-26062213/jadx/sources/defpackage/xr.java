package defpackage;

import android.content.Context;
import android.util.Base64;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class xr {
    public final Context a;
    public final qr b;
    public final String c;
    public final String d;
    public final s61 e;
    public final vq f;

    public xr(Context context, qr qrVar, String str, String str2, String str3) {
        context.getClass();
        this.a = context;
        this.b = qrVar;
        this.c = str;
        this.d = str2;
        e61 e61VarB = e61.b();
        e61VarB.a();
        s61 s61VarA = ((s53) e61VarB.d.a(s53.class)).a();
        s61VarA.getClass();
        this.e = s61VarA;
        int i = 1;
        this.f = new vq(i, new k81(qj0.D(new yq(qrVar.a().b(), i)), new sr(this, null, 0)), this);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.xr r11, java.lang.String r12, defpackage.fh0 r13) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xr.a(xr, java.lang.String, fh0):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|2|(2:4|(1:6)(1:7))(0)|8|(1:(1:(6:12|37|43|38|41|42)(2:13|14))(1:15))(3:16|(1:19)|35)|20|(1:22)|(1:24)|25|(3:33|(2:36|37)|35)|43|38|41|42) */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0112, code lost:
    
        defpackage.ez3.a.getClass();
        defpackage.ra3.g(new java.lang.Object[0]);
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(defpackage.xr r14, defpackage.fh0 r15) {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xr.b(xr, fh0):java.lang.Object");
    }

    public final String c() {
        String strEncodeToString;
        ra3 ra3Var = ez3.a;
        String str = this.d;
        ra3Var.getClass();
        ra3.c(new Object[0]);
        try {
            InputStream inputStreamOpen = this.a.getAssets().open(str);
            try {
                inputStreamOpen.getClass();
                byte[] bArrD = qn0.D(inputStreamOpen);
                if (bArrD.length == 0) {
                    ra3.m(new Object[0]);
                    strEncodeToString = null;
                } else {
                    strEncodeToString = Base64.encodeToString(bArrD, 2);
                    strEncodeToString.length();
                    ra3.c(new Object[0]);
                }
                inputStreamOpen.close();
                return strEncodeToString;
            } finally {
            }
        } catch (Exception unused) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
            return null;
        }
    }
}
