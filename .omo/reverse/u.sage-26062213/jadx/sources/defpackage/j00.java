package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j00 extends d0 {
    public static final AtomicLong p = new AtomicLong();
    public final Log m;
    public final long n;
    public final TimeUnit o;

    public j00(xh1 xh1Var, TimeUnit timeUnit) {
        super(xh1Var);
        this.m = LogFactory.getLog(j00.class);
        this.n = -1L;
        this.o = timeUnit;
    }
}
