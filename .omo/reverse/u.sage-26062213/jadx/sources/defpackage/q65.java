package defpackage;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q65 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public q65(m75 m75Var, AtomicReference atomicReference, String str, String str2, boolean z) {
        this.r = atomicReference;
        this.o = str;
        this.p = str2;
        this.q = z;
        Objects.requireNonNull(m75Var);
        this.s = m75Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0157 A[Catch: RuntimeException -> 0x00e8, TryCatch #1 {RuntimeException -> 0x00e8, blocks: (B:55:0x010c, B:57:0x0117, B:60:0x0124, B:62:0x012a, B:64:0x0144, B:67:0x0151, B:69:0x0157, B:72:0x016e, B:74:0x017d, B:73:0x0175, B:75:0x018e, B:77:0x0194, B:79:0x019a, B:81:0x01a0, B:83:0x01a8, B:85:0x01b0, B:87:0x01b8, B:89:0x01be, B:90:0x01cd, B:29:0x009f, B:31:0x00a7, B:33:0x00ad, B:35:0x00b3, B:37:0x00b9, B:39:0x00c1, B:41:0x00c9, B:43:0x00d1, B:45:0x00d9, B:49:0x00ef, B:51:0x00fd), top: B:104:0x009f }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q65.run():void");
    }

    public q65(ty4 ty4Var, boolean z, Uri uri, String str, String str2) {
        this.q = z;
        this.r = uri;
        this.o = str;
        this.p = str2;
        this.s = ty4Var;
    }

    public q65(AppMeasurementDynamiteService appMeasurementDynamiteService, mw4 mw4Var, String str, String str2, boolean z) {
        this.r = mw4Var;
        this.o = str;
        this.p = str2;
        this.q = z;
        this.s = appMeasurementDynamiteService;
    }

    public q65(o95 o95Var, vc5 vc5Var, boolean z, zt4 zt4Var, Bundle bundle) {
        this.r = vc5Var;
        this.q = z;
        this.o = zt4Var;
        this.p = bundle;
        Objects.requireNonNull(o95Var);
        this.s = o95Var;
    }
}
