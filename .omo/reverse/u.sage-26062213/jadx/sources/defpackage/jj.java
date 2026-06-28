package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jj {
    public final AtomicInteger a;

    public jj(int i) {
        switch (i) {
            case 1:
                this.a = new AtomicInteger();
                break;
            default:
                this.a = new AtomicInteger(0);
                break;
        }
    }
}
