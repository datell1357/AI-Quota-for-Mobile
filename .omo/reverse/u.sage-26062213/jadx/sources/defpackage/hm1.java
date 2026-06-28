package defpackage;

import java.net.InetAddress;
import java.net.InetSocketAddress;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hm1 extends InetSocketAddress {
    public final em1 n;

    public hm1(em1 em1Var, InetAddress inetAddress, int i) {
        super(inetAddress, i);
        w80.L(em1Var, "HTTP host");
        this.n = em1Var;
    }

    @Override // java.net.InetSocketAddress
    public final String toString() {
        return this.n.n + ":" + getPort();
    }
}
