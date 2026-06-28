package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Process;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dx4 implements qo4 {
    public final /* synthetic */ int n;
    public final gt4 o;

    public /* synthetic */ dx4(gt4 gt4Var, int i) {
        this.n = i;
        this.o = gt4Var;
    }

    @Override // defpackage.qo4
    public final Object zza() {
        int i = this.n;
        gt4 gt4Var = this.o;
        switch (i) {
            case 0:
                Context context = ((di2) gt4Var.o).o;
                ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat("AppUpdateListenerRegistry");
                new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS");
                ev4 ev4Var = new ev4();
                new HashSet();
                context.getApplicationContext();
                return ev4Var;
            default:
                return new yd5(((di2) gt4Var.o).o);
        }
    }
}
