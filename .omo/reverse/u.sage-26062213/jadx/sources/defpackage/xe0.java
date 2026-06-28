package defpackage;

import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xe0 implements cr0 {
    @Override // defpackage.cr0
    public final boolean c(SSLSocket sSLSocket) {
        return ze0.b && Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // defpackage.cr0
    public final kp3 f(SSLSocket sSLSocket) {
        return new ze0();
    }
}
