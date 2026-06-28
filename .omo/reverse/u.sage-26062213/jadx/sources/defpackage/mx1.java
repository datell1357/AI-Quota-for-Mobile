package defpackage;

import org.ietf.jgss.Oid;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mx1 extends uf1 {
    @Override // defpackage.oj
    public final String c() {
        return null;
    }

    @Override // defpackage.oj
    public final String d() {
        return "Kerberos";
    }

    @Override // defpackage.oj
    public final boolean f() {
        return true;
    }

    @Override // defpackage.uf1
    public final byte[] l(byte[] bArr, String str, yk0 yk0Var) {
        return uf1.k(bArr, new Oid("1.2.840.113554.1.2.2"), str);
    }
}
