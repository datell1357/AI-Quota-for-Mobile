package defpackage;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m45 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ mw4 o;
    public final /* synthetic */ AppMeasurementDynamiteService p;

    public /* synthetic */ m45(AppMeasurementDynamiteService appMeasurementDynamiteService, mw4 mw4Var, int i) {
        this.n = i;
        this.o = mw4Var;
        this.p = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = false;
        switch (this.n) {
            case 0:
                o95 o95VarO = this.p.c.o();
                mw4 mw4Var = this.o;
                o95VarO.v();
                o95VarO.w();
                o95VarO.J(new i63(o95VarO, o95VarO.L(false), mw4Var, 8));
                break;
            default:
                AppMeasurementDynamiteService appMeasurementDynamiteService = this.p;
                ac5 ac5Var = appMeasurementDynamiteService.c.i;
                r45.j(ac5Var);
                r45 r45Var = appMeasurementDynamiteService.c;
                if (r45Var.y != null && r45Var.y.booleanValue()) {
                    z = true;
                }
                ac5Var.l0(this.o, z);
                break;
        }
    }
}
