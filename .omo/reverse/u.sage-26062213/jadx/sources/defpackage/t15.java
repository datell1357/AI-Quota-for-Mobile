package defpackage;

import android.content.Context;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t15 {
    public static t15 d;
    public final r45 a;
    public final TelemetryLoggingClient b;
    public final AtomicLong c = new AtomicLong(-1);

    public t15(Context context, r45 r45Var) {
        this.b = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("measurement:api").build());
        this.a = r45Var;
    }

    public final synchronized void a(int i, int i2, long j, long j2) {
        long jElapsedRealtime = this.a.k.elapsedRealtime();
        AtomicLong atomicLong = this.c;
        if (atomicLong.get() != -1 && jElapsedRealtime - atomicLong.get() <= 1800000) {
            return;
        }
        ow3 ow3VarLog = this.b.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(36301, i, 0, j, j2, null, null, 0, i2))));
        lj1 lj1Var = new lj1();
        lj1Var.o = this;
        lj1Var.n = jElapsedRealtime;
        ef5 ef5Var = (ef5) ow3VarLog;
        ef5Var.getClass();
        ef5Var.b(qw3.a, lj1Var);
    }
}
