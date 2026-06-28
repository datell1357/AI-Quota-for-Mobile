package defpackage;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class di2 implements rx4, cu3 {
    public final /* synthetic */ int n;
    public final Context o;

    public di2(Context context) {
        this.n = 6;
        new ConcurrentHashMap();
        qt4.a(context != null, "Context cannot be null", new Object[0]);
        this.o = context.getApplicationContext();
    }

    @Override // defpackage.cu3
    public Object get() {
        int i = this.n;
        Context context = this.o;
        switch (i) {
            case 3:
                Object obj = o75.j;
                hg hgVar = new hg();
                hgVar.a = context;
                context.getClass();
                if (((cu3) hgVar.b) == null) {
                    hgVar.b = o75.m;
                }
                if (((cu3) hgVar.c) == null) {
                    hgVar.c = c75.M(new di2((Context) hgVar.a, 4));
                }
                if (((gt4) hgVar.d) == null) {
                    hgVar.d = new gt4(9, hgVar);
                }
                if (((cu3) hgVar.e) == null) {
                    Context context2 = (Context) hgVar.a;
                    ArrayList arrayList = new ArrayList();
                    id5 id5Var = new id5(new di2(context2));
                    new ConcurrentHashMap();
                    Collections.addAll(arrayList, id5Var, new md5());
                    hgVar.e = c75.M(new ct2(arrayList));
                }
                if (((ra3) hgVar.f) == null) {
                    hgVar.f = new ra3(21, hgVar);
                }
                return new o75((Context) hgVar.a, (cu3) hgVar.b, (cu3) hgVar.c, (gt4) hgVar.d, (cu3) hgVar.e, (ra3) hgVar.f);
            case 4:
                Object obj2 = o75.j;
                Api api = l65.a;
                return new x85(new w65(context, l65.a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS));
            default:
                Object obj3 = y75.a;
                return k75.Q(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, all -> 0x0067, blocks: (B:4:0x0007, B:6:0x000b, B:8:0x0017, B:18:0x0034, B:71:0x016f, B:13:0x0023, B:15:0x002b, B:19:0x0039, B:21:0x003f, B:22:0x0043, B:70:0x016b, B:72:0x0172, B:73:0x0175, B:74:0x0176, B:23:0x0047, B:25:0x004b, B:26:0x0058, B:28:0x005e, B:34:0x0074, B:36:0x007a, B:37:0x007e, B:57:0x013d, B:58:0x0140, B:66:0x0162, B:65:0x014d, B:67:0x0163, B:68:0x0168, B:69:0x0169, B:29:0x0064, B:33:0x006b), top: B:79:0x0007 }] */
    @Override // defpackage.rx4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object zza() {
        /*
            Method dump skipped, instruction units count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.di2.zza():java.lang.Object");
    }

    public /* synthetic */ di2(Context context, int i) {
        this.n = i;
        this.o = context;
    }
}
