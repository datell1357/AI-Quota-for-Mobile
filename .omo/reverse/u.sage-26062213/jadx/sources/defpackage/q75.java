package defpackage;

import android.app.Service;
import android.content.Intent;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q75 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ int o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Cloneable r;

    public /* synthetic */ q75(ra3 ra3Var, int i, a25 a25Var, Intent intent) {
        this.p = ra3Var;
        this.o = i;
        this.q = a25Var;
        this.r = intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Object obj = this.r;
        Object obj2 = this.q;
        int i2 = this.o;
        Object obj3 = this.p;
        switch (i) {
            case 0:
                ((p75) ((g25) obj3).s).b(i2, (Exception) obj2, (byte[]) obj);
                break;
            default:
                a25 a25Var = (a25) obj2;
                Intent intent = (Intent) obj;
                Service service = (Service) ((ra3) obj3).o;
                u95 u95Var = (u95) service;
                if (u95Var.a(i2)) {
                    a25Var.n.b(Integer.valueOf(i2), "Local AppMeasurementService processed last upload request. StartId");
                    a25 a25Var2 = r45.r(service, null, null, null).f;
                    r45.l(a25Var2);
                    a25Var2.n.a("Completed wakeful intent.");
                    u95Var.b(intent);
                }
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ q75(g25 g25Var, int i, Exception exc, byte[] bArr, Map map) {
        this.p = g25Var;
        this.o = i;
        this.q = exc;
        this.r = bArr;
    }
}
