package defpackage;

import java.net.Socket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ie3 extends le3 implements ge3 {
    public final rb3 o;

    public ie3(rb3 rb3Var) {
        super(rb3Var);
        this.o = rb3Var;
    }

    @Override // defpackage.ge3
    public final Socket createLayeredSocket(Socket socket, String str, int i, km1 km1Var) {
        return this.o.createSocket(socket, str, i, true);
    }
}
