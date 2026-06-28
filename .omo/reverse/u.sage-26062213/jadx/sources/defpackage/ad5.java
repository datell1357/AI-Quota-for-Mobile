package defpackage;

import android.os.StrictMode;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ad5 {
    public static final zc5 a;

    static {
        zc5 zc5Var;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                Iterator it = Arrays.asList(new zc5[0]).iterator();
                if (it.hasNext()) {
                    zc5Var = (zc5) it.next();
                    n44.b0(!it.hasNext(), "Expected at most one FlagsService");
                } else {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    zc5Var = new zc5();
                }
                a = zc5Var;
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }
}
