package defpackage;

import android.os.Build;
import android.os.StrictMode;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ea0 implements n03 {
    public final /* synthetic */ int a;

    public /* synthetic */ ea0(int i) {
        this.a = i;
    }

    @Override // defpackage.n03
    public final Object get() {
        switch (this.a) {
            case 0:
                return Collections.EMPTY_SET;
            case 1:
                rz1 rz1Var = ExecutorsRegistrar.a;
                StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                builderDetectNetwork.detectResourceMismatches();
                if (Build.VERSION.SDK_INT >= 26) {
                    builderDetectNetwork.detectUnbufferedIo();
                }
                return new qr0(Executors.newFixedThreadPool(4, new gl0("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
            case 2:
                rz1 rz1Var2 = ExecutorsRegistrar.a;
                return new qr0(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new gl0("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
            case 3:
                rz1 rz1Var3 = ExecutorsRegistrar.a;
                return new qr0(Executors.newCachedThreadPool(new gl0("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
            case 4:
                rz1 rz1Var4 = ExecutorsRegistrar.a;
                return Executors.newSingleThreadScheduledExecutor(new gl0("Firebase Scheduler", 0, null));
            default:
                Clock clock = s53.j;
            case 5:
                return null;
        }
    }
}
