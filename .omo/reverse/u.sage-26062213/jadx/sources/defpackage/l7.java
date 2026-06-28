package defpackage;

import android.os.Build;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l7 implements Runnable {
    public final /* synthetic */ int n;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                int i = AlarmManagerSchedulerBroadcastReceiver.a;
                return;
            case 1:
                dg2 dg2Var = q9.Y0;
                synchronized (dg2Var) {
                    try {
                        int i2 = Build.VERSION.SDK_INT;
                        Object[] objArr = dg2Var.a;
                        int i3 = dg2Var.b;
                        int i4 = 0;
                        if (i2 < 30) {
                            while (i4 < i3) {
                                q9 q9Var = (q9) objArr[i4];
                                boolean showLayoutBounds = q9Var.getShowLayoutBounds();
                                qv3 qv3Var = q9.U0;
                                q9Var.setShowLayoutBounds(qv3.p());
                                if (showLayoutBounds != q9Var.getShowLayoutBounds()) {
                                    q9Var.post(new c9(q9Var, 2));
                                }
                                i4++;
                            }
                        } else {
                            while (i4 < i3) {
                                q9 q9Var2 = (q9) objArr[i4];
                                q9Var2.post(new c9(q9Var2, 3));
                                i4++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                return;
        }
    }

    private final void a() {
    }
}
