package defpackage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ju1 {
    public static final /* synthetic */ kx1[] d;
    public final String a;
    public final ThreadLocal b;
    public final lm0 c;

    static {
        uz2 uz2Var = new uz2(w10.n, ju1.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0);
        y33.a.getClass();
        d = new kx1[]{uz2Var};
    }

    public ju1(Context context, String str) {
        context.getClass();
        this.a = str;
        this.b = new ThreadLocal();
        final int i = 0;
        dd1 dd1Var = new dd1(13, new pe1(this) { // from class: iu1
            public final /* synthetic */ ju1 o;

            {
                this.o = this;
            }

            @Override // defpackage.pe1
            public final Object k(Object obj) {
                int i2 = i;
                int i3 = 1;
                ju1 ju1Var = this.o;
                switch (i2) {
                    case 0:
                        xi0 xi0Var = (xi0) obj;
                        xi0Var.getClass();
                        Log.w(y33.a(ju1.class).c(), "CorruptionException in " + ju1Var.a + " DataStore running in process " + Process.myPid(), xi0Var);
                        return new hg2(true);
                    default:
                        Context context2 = (Context) obj;
                        context2.getClass();
                        String str2 = ju1Var.a;
                        LinkedHashSet linkedHashSet = dm3.a;
                        linkedHashSet.getClass();
                        dh0 dh0Var = null;
                        return tv4.E(new cm3(context2, str2, em3.a, new p4(linkedHashSet, dh0Var, 11), new u4(3, dh0Var, i3)));
                }
            }
        });
        final int i2 = 1;
        this.c = on4.H(str, dd1Var, new pe1(this) { // from class: iu1
            public final /* synthetic */ ju1 o;

            {
                this.o = this;
            }

            @Override // defpackage.pe1
            public final Object k(Object obj) {
                int i22 = i2;
                int i3 = 1;
                ju1 ju1Var = this.o;
                switch (i22) {
                    case 0:
                        xi0 xi0Var = (xi0) obj;
                        xi0Var.getClass();
                        Log.w(y33.a(ju1.class).c(), "CorruptionException in " + ju1Var.a + " DataStore running in process " + Process.myPid(), xi0Var);
                        return new hg2(true);
                    default:
                        Context context2 = (Context) obj;
                        context2.getClass();
                        String str2 = ju1Var.a;
                        LinkedHashSet linkedHashSet = dm3.a;
                        linkedHashSet.getClass();
                        dh0 dh0Var = null;
                        return tv4.E(new cm3(context2, str2, em3.a, new p4(linkedHashSet, dh0Var, 11), new u4(3, dh0Var, i3)));
                }
            }
        }, 8).a(context, d[0]);
    }
}
