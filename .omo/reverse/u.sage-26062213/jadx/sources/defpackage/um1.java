package defpackage;

import java.net.URI;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class um1 extends e1 implements an1 {
    public final om1 n;
    public final em1 o;
    public final String p;
    public hv q;
    public final g03 r;
    public URI s;

    public um1(em1 em1Var, om1 om1Var) {
        w80.L(om1Var, "HTTP request");
        this.n = om1Var;
        this.o = em1Var;
        this.r = ((hv) om1Var.getRequestLine()).n;
        this.p = ((hv) om1Var.getRequestLine()).o;
        if (om1Var instanceof an1) {
            this.s = ((an1) om1Var).getURI();
        } else {
            this.s = null;
        }
        setHeaders(om1Var.getAllHeaders());
    }

    public final om1 a() {
        return this.n;
    }

    @Override // defpackage.an1
    public final String getMethod() {
        return this.p;
    }

    @Override // defpackage.e1, defpackage.im1
    public final km1 getParams() {
        if (this.params == null) {
            this.params = this.n.getParams().b();
        }
        return this.params;
    }

    @Override // defpackage.im1
    public final g03 getProtocolVersion() {
        g03 g03Var = this.r;
        return g03Var != null ? g03Var : this.n.getProtocolVersion();
    }

    @Override // defpackage.om1
    public final d73 getRequestLine() {
        if (this.q == null) {
            URI uri = this.s;
            String aSCIIString = uri != null ? uri.toASCIIString() : ((hv) this.n.getRequestLine()).p;
            if (aSCIIString == null || aSCIIString.isEmpty()) {
                aSCIIString = "/";
            }
            this.q = new hv(this.p, aSCIIString, getProtocolVersion());
        }
        return this.q;
    }

    @Override // defpackage.an1
    public final URI getURI() {
        return this.s;
    }

    @Override // defpackage.an1
    public final boolean isAborted() {
        return false;
    }

    public final String toString() {
        return getRequestLine() + " " + this.headergroup;
    }
}
