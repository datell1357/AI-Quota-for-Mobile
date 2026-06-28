package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class oj {
    public int n;

    public abstract gj1 a(yk0 yk0Var, om1 om1Var);

    public gj1 b(yk0 yk0Var, om1 om1Var, ul1 ul1Var) {
        return a(yk0Var, om1Var);
    }

    public abstract String c();

    public abstract String d();

    public abstract boolean e();

    public abstract boolean f();

    public final boolean g() {
        int i = this.n;
        return i != 0 && i == 2;
    }

    public abstract void h(b40 b40Var, int i, int i2);

    public void i(gj1 gj1Var) throws o92 {
        b40 b40Var;
        int i;
        w80.L(gj1Var, "Header");
        String name = gj1Var.getName();
        if (name.equalsIgnoreCase("WWW-Authenticate")) {
            this.n = 1;
        } else {
            if (!name.equalsIgnoreCase("Proxy-Authenticate")) {
                throw new o92(cm1.a("Unexpected header name: ".concat(name)));
            }
            this.n = 2;
        }
        if (gj1Var instanceof cz) {
            cz czVar = (cz) gj1Var;
            b40Var = czVar.o;
            i = czVar.p;
        } else {
            String value = gj1Var.getValue();
            if (value == null) {
                throw new o92(cm1.a("Header value is null"));
            }
            b40Var = new b40(value.length());
            b40Var.b(value);
            i = 0;
        }
        while (i < b40Var.o && vi1.a(b40Var.n[i])) {
            i++;
        }
        int i2 = i;
        while (i2 < b40Var.o && !vi1.a(b40Var.n[i2])) {
            i2++;
        }
        String strH = b40Var.h(i, i2);
        if (!strH.equalsIgnoreCase(d())) {
            throw new o92(cm1.a("Invalid scheme identifier: ".concat(strH)));
        }
        h(b40Var, i2, b40Var.o);
    }

    public String toString() {
        return d().toUpperCase(Locale.ROOT);
    }
}
