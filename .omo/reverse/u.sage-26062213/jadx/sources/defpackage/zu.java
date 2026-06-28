package defpackage;

import com.google.api.client.http.HttpMethods;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zu extends e1 implements om1 {
    public final String n;
    public final String o;
    public hv p;

    public zu(String str, g03 g03Var) {
        hv hvVar = new hv(HttpMethods.CONNECT, str, g03Var);
        this.p = hvVar;
        this.n = hvVar.o;
        this.o = hvVar.p;
    }

    @Override // defpackage.im1
    public final g03 getProtocolVersion() {
        return ((hv) getRequestLine()).n;
    }

    @Override // defpackage.om1
    public final d73 getRequestLine() {
        if (this.p == null) {
            this.p = new hv(this.n, this.o, dn1.s);
        }
        return this.p;
    }

    public final String toString() {
        return this.n + ' ' + this.o + ' ' + this.headergroup;
    }
}
