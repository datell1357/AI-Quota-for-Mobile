package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h8 implements g8 {
    public static volatile h8 c;
    public final AppMeasurementSdk a;
    public final ConcurrentHashMap b;

    public h8(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.a = appMeasurementSdk;
        this.b = new ConcurrentHashMap();
    }

    public final void a(String str, String str2, Bundle bundle) {
        if (!gv4.c.contains(str) && gv4.a(str2, bundle) && gv4.b(str, str2, bundle)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.a.logEvent(str, str2, bundle);
        }
    }

    public final qv3 b(String str, gw4 gw4Var) {
        Preconditions.checkNotNull(gw4Var);
        if (!gv4.c.contains(str)) {
            boolean zIsEmpty = str.isEmpty();
            ConcurrentHashMap concurrentHashMap = this.b;
            if (zIsEmpty || !concurrentHashMap.containsKey(str) || concurrentHashMap.get(str) == null) {
                boolean zEquals = "fiam".equals(str);
                AppMeasurementSdk appMeasurementSdk = this.a;
                cu3 pc4Var = zEquals ? new pc4(appMeasurementSdk, gw4Var) : "clx".equals(str) ? new gt4(appMeasurementSdk, gw4Var) : null;
                if (pc4Var != null) {
                    concurrentHashMap.put(str, pc4Var);
                    return new qv3(7);
                }
            }
        }
        return null;
    }
}
