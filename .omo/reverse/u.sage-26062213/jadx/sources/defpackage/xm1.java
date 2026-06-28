package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xm1 implements t60 {
    public final vm1 n;
    public final ae0 o;

    public xm1(vm1 vm1Var, ae0 ae0Var) {
        this.n = vm1Var;
        this.o = ae0Var;
        xl1 entity = vm1Var.getEntity();
        if (entity == null || !entity.isStreaming() || ae0Var == null) {
            return;
        }
        vm1Var.setEntity(new dz(entity, ae0Var));
    }

    @Override // defpackage.im1
    public final void addHeader(gj1 gj1Var) {
        this.n.addHeader(gj1Var);
    }

    @Override // defpackage.vm1
    public final kv b() {
        return this.n.b();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ae0 ae0Var = this.o;
        if (ae0Var != null) {
            ae0Var.A(false);
        }
    }

    @Override // defpackage.im1
    public final boolean containsHeader(String str) {
        return this.n.containsHeader(str);
    }

    @Override // defpackage.im1
    public final gj1[] getAllHeaders() {
        return this.n.getAllHeaders();
    }

    @Override // defpackage.vm1
    public final xl1 getEntity() {
        return this.n.getEntity();
    }

    @Override // defpackage.im1
    public final gj1 getFirstHeader(String str) {
        return this.n.getFirstHeader(str);
    }

    @Override // defpackage.im1
    public final gj1[] getHeaders(String str) {
        return this.n.getHeaders(str);
    }

    @Override // defpackage.im1
    public final gj1 getLastHeader(String str) {
        return this.n.getLastHeader(str);
    }

    @Override // defpackage.im1
    public final km1 getParams() {
        return this.n.getParams();
    }

    @Override // defpackage.im1
    public final g03 getProtocolVersion() {
        return this.n.getProtocolVersion();
    }

    @Override // defpackage.im1
    public final jj1 headerIterator() {
        return this.n.headerIterator();
    }

    @Override // defpackage.im1
    public final void removeHeaders(String str) {
        this.n.removeHeaders(str);
    }

    @Override // defpackage.vm1
    public final void setEntity(xl1 xl1Var) {
        this.n.setEntity(xl1Var);
    }

    @Override // defpackage.im1
    public final void setHeader(String str, String str2) {
        this.n.setHeader(str, str2);
    }

    @Override // defpackage.im1
    public final void setHeaders(gj1[] gj1VarArr) {
        this.n.setHeaders(gj1VarArr);
    }

    @Override // defpackage.im1
    public final void setParams(km1 km1Var) {
        this.n.setParams(km1Var);
    }

    public final String toString() {
        return "HttpResponseProxy{" + this.n + '}';
    }

    @Override // defpackage.im1
    public final void addHeader(String str, String str2) {
        this.n.addHeader(str, str2);
    }

    @Override // defpackage.im1
    public final jj1 headerIterator(String str) {
        return this.n.headerIterator(str);
    }
}
