package defpackage;

import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class g73 extends e1 implements an1 {
    public final om1 n;
    public URI o;
    public final String p;
    public g03 q;
    public int r;

    public g73(om1 om1Var) throws e03 {
        w80.L(om1Var, "HTTP request");
        this.n = om1Var;
        setParams(om1Var.getParams());
        setHeaders(om1Var.getAllHeaders());
        if (om1Var instanceof an1) {
            an1 an1Var = (an1) om1Var;
            this.o = an1Var.getURI();
            this.p = an1Var.getMethod();
            this.q = null;
        } else {
            d73 requestLine = om1Var.getRequestLine();
            try {
                this.o = new URI(((hv) requestLine).p);
                this.p = ((hv) requestLine).o;
                this.q = om1Var.getProtocolVersion();
            } catch (URISyntaxException e) {
                throw new e03("Invalid request URI: " + ((hv) requestLine).p, e);
            }
        }
        this.r = 0;
    }

    public boolean a() {
        return true;
    }

    public final void c() {
        this.headergroup.n.clear();
        setHeaders(this.n.getAllHeaders());
    }

    @Override // defpackage.an1
    public final String getMethod() {
        return this.p;
    }

    @Override // defpackage.im1
    public final g03 getProtocolVersion() {
        if (this.q == null) {
            this.q = is0.D(getParams());
        }
        return this.q;
    }

    @Override // defpackage.om1
    public final d73 getRequestLine() {
        g03 protocolVersion = getProtocolVersion();
        URI uri = this.o;
        String aSCIIString = uri != null ? uri.toASCIIString() : null;
        if (aSCIIString == null || aSCIIString.isEmpty()) {
            aSCIIString = "/";
        }
        return new hv(this.p, aSCIIString, protocolVersion);
    }

    @Override // defpackage.an1
    public final URI getURI() {
        return this.o;
    }

    @Override // defpackage.an1
    public final boolean isAborted() {
        return false;
    }
}
