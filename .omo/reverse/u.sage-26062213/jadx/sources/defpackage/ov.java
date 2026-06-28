package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ov implements Iterator {
    public final jj1 n;
    public String o;
    public String p;
    public int q;

    public ov(jj1 jj1Var) {
        w80.L(jj1Var, "Header iterator");
        this.n = jj1Var;
        this.q = b(-1);
    }

    public static boolean c(char c) {
        if (Character.isLetterOrDigit(c)) {
            return true;
        }
        return !Character.isISOControl(c) && " ,;=()<>@:\\\"/[]?{}\t".indexOf(c) < 0;
    }

    public final int b(int i) {
        String str;
        jj1 jj1Var = this.n;
        if (i >= 0) {
            w80.J(i, "Search position");
            int length = this.o.length();
            boolean z = false;
            while (!z && i < length) {
                char cCharAt = this.o.charAt(i);
                if (cCharAt == ',') {
                    z = true;
                } else {
                    if (cCharAt != '\t' && !Character.isSpaceChar(cCharAt)) {
                        if (c(cCharAt)) {
                            StringBuilder sbU = xw1.u("Tokens without separator (pos ", i, "): ");
                            sbU.append(this.o);
                            throw new zs2(sbU.toString());
                        }
                        StringBuilder sbU2 = xw1.u("Invalid character after token (pos ", i, "): ");
                        sbU2.append(this.o);
                        throw new zs2(sbU2.toString());
                    }
                    i++;
                }
            }
        } else {
            if (!jj1Var.hasNext()) {
                return -1;
            }
            this.o = jj1Var.a().getValue();
            i = 0;
        }
        w80.J(i, "Search position");
        boolean z2 = false;
        while (!z2 && (str = this.o) != null) {
            int length2 = str.length();
            while (!z2 && i < length2) {
                char cCharAt2 = this.o.charAt(i);
                if (cCharAt2 == ',' || cCharAt2 == '\t' || Character.isSpaceChar(cCharAt2)) {
                    i++;
                } else {
                    if (!c(this.o.charAt(i))) {
                        StringBuilder sbU3 = xw1.u("Invalid character before token (pos ", i, "): ");
                        sbU3.append(this.o);
                        throw new zs2(sbU3.toString());
                    }
                    z2 = true;
                }
            }
            if (!z2) {
                if (jj1Var.hasNext()) {
                    this.o = jj1Var.a().getValue();
                    i = 0;
                } else {
                    this.o = null;
                }
            }
        }
        if (!z2) {
            i = -1;
        }
        if (i < 0) {
            this.p = null;
            return -1;
        }
        w80.J(i, "Search position");
        int length3 = this.o.length();
        int i2 = i + 1;
        while (i2 < length3 && c(this.o.charAt(i2))) {
            i2++;
        }
        this.p = this.o.substring(i, i2);
        return i2;
    }

    public final String d() {
        String str = this.p;
        if (str != null) {
            this.q = b(this.q);
            return str;
        }
        q73.l("Iteration already finished.");
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.p != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        return d();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
