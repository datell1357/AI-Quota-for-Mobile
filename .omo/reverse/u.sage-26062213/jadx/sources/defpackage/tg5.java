package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tg5 extends sg5 {
    public static final xf5 d = new xf5(3);
    public static final lc e = new lc(6);
    public final AtomicInteger c = new AtomicInteger();

    @Override // defpackage.sg5
    public final void a() {
        this.c.decrementAndGet();
    }
}
