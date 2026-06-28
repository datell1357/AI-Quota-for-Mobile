package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iv extends l13 {
    public boolean q;

    public iv(Charset charset) {
        super(charset);
        this.q = false;
    }

    @Override // defpackage.oj
    public final gj1 a(yk0 yk0Var, om1 om1Var) {
        return b(yk0Var, om1Var, new vu());
    }

    @Override // defpackage.oj
    public final gj1 b(yk0 yk0Var, om1 om1Var, ul1 ul1Var) {
        w80.L(yk0Var, "Credentials");
        StringBuilder sb = new StringBuilder();
        sb.append(yk0Var.b().getName());
        sb.append(":");
        sb.append(yk0Var.a() == null ? "null" : yk0Var.a());
        oq oqVar = new oq();
        String string = sb.toString();
        String strName = (String) om1Var.getParams().c("http.auth.credential-charset");
        if (strName == null) {
            Charset charset = this.p;
            if (charset == null) {
                charset = uf0.b;
            }
            strName = charset.name();
        }
        byte[] bArrB = oqVar.b(qn0.s(string, strName));
        b40 b40Var = new b40(32);
        if (g()) {
            b40Var.b("Proxy-Authorization");
        } else {
            b40Var.b("Authorization");
        }
        b40Var.b(": Basic ");
        b40Var.c(bArrB, 0, bArrB.length);
        return new cz(b40Var);
    }

    @Override // defpackage.oj
    public final String d() {
        return "basic";
    }

    @Override // defpackage.oj
    public final boolean e() {
        return this.q;
    }

    @Override // defpackage.oj
    public final boolean f() {
        return false;
    }

    @Override // defpackage.oj
    public final void i(gj1 gj1Var) throws o92 {
        super.i(gj1Var);
        this.q = true;
    }

    @Override // defpackage.oj
    public final String toString() {
        return "BASIC [complete=" + this.q + "]";
    }

    public iv() {
        this(uf0.b);
    }
}
