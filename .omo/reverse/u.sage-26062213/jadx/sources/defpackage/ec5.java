package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ec5 implements c65 {
    public final tw4 a;
    public final /* synthetic */ AppMeasurementDynamiteService b;

    public ec5(AppMeasurementDynamiteService appMeasurementDynamiteService, tw4 tw4Var) {
        this.b = appMeasurementDynamiteService;
        this.a = tw4Var;
    }

    @Override // defpackage.c65
    public final void a(String str, String str2, Bundle bundle, long j) {
        try {
            this.a.d(str, str2, bundle, j);
        } catch (RemoteException e) {
            r45 r45Var = this.b.c;
            if (r45Var != null) {
                a25 a25Var = r45Var.f;
                r45.l(a25Var);
                a25Var.i.b(e, "Event listener threw exception");
            }
        }
    }
}
