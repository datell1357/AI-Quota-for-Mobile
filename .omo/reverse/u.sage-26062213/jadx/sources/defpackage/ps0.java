package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ps0 {
    public final ConcurrentHashMap a;

    public ps0(int i) {
        switch (i) {
            case 1:
                this.a = new ConcurrentHashMap();
                break;
            default:
                this.a = new ConcurrentHashMap(16);
                break;
        }
    }
}
