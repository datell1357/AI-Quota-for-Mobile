package defpackage;

import java.net.URI;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class pm1 extends j0 implements an1, ld0 {
    private v63 config;
    private URI uri;
    private g03 version;

    @Override // defpackage.ld0
    public v63 getConfig() {
        return this.config;
    }

    public abstract String getMethod();

    @Override // defpackage.im1
    public g03 getProtocolVersion() {
        g03 g03Var = this.version;
        return g03Var != null ? g03Var : is0.D(getParams());
    }

    @Override // defpackage.om1
    public d73 getRequestLine() {
        String method = getMethod();
        g03 protocolVersion = getProtocolVersion();
        URI uri = getURI();
        String aSCIIString = uri != null ? uri.toASCIIString() : null;
        if (aSCIIString == null || aSCIIString.isEmpty()) {
            aSCIIString = "/";
        }
        return new hv(method, aSCIIString, protocolVersion);
    }

    @Override // defpackage.an1
    public URI getURI() {
        return this.uri;
    }

    public void releaseConnection() {
        reset();
    }

    public void setConfig(v63 v63Var) {
        this.config = v63Var;
    }

    public void setProtocolVersion(g03 g03Var) {
        this.version = g03Var;
    }

    public void setURI(URI uri) {
        this.uri = uri;
    }

    public String toString() {
        return getMethod() + " " + getURI() + " " + getProtocolVersion();
    }

    public void started() {
    }
}
