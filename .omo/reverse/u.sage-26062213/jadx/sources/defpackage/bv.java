package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bv {
    public static final bv b;
    public final g03 a = dn1.s;

    static {
        new bv();
        b = new bv();
    }

    public final dn1 a(b40 b40Var, ky0 ky0Var) {
        w80.L(b40Var, "Char array buffer");
        g03 g03Var = this.a;
        String str = g03Var.n;
        int length = str.length();
        int i = ky0Var.d;
        int i2 = ky0Var.c;
        int i3 = i;
        while (i3 < i2 && vi1.a(b40Var.n[i3])) {
            i3++;
        }
        ky0Var.b(i3);
        int i4 = ky0Var.d;
        int i5 = i4 + length;
        if (i5 + 4 > i2) {
            throw new zs2("Not a valid protocol version: ".concat(b40Var.h(i, i2)));
        }
        boolean z = true;
        for (int i6 = 0; z && i6 < length; i6++) {
            z = b40Var.n[i4 + i6] == str.charAt(i6);
        }
        if (z) {
            z = b40Var.n[i5] == '/';
        }
        if (!z) {
            throw new zs2("Not a valid protocol version: ".concat(b40Var.h(i, i2)));
        }
        int i7 = length + 1 + i4;
        int iG = b40Var.g(46, i7, i2);
        if (iG == -1) {
            throw new zs2("Invalid protocol version number: ".concat(b40Var.h(i, i2)));
        }
        try {
            int i8 = Integer.parseInt(b40Var.i(i7, iG));
            int i9 = iG + 1;
            int iG2 = b40Var.g(32, i9, i2);
            if (iG2 == -1) {
                iG2 = i2;
            }
            try {
                int i10 = Integer.parseInt(b40Var.i(i9, iG2));
                ky0Var.b(iG2);
                dn1 dn1Var = (dn1) g03Var;
                if (i8 == dn1Var.o && i10 == dn1Var.p) {
                    return dn1Var;
                }
                if (i8 == 1) {
                    if (i10 == 0) {
                        return dn1.r;
                    }
                    if (i10 == 1) {
                        return dn1.s;
                    }
                }
                return (i8 == 0 && i10 == 9) ? dn1.q : new dn1(i8, i10);
            } catch (NumberFormatException unused) {
                throw new zs2("Invalid protocol minor version number: ".concat(b40Var.h(i, i2)));
            }
        } catch (NumberFormatException unused2) {
            throw new zs2("Invalid protocol major version number: ".concat(b40Var.h(i, i2)));
        }
    }

    public final kv b(b40 b40Var, ky0 ky0Var) {
        w80.L(b40Var, "Char array buffer");
        int i = ky0Var.d;
        int i2 = ky0Var.c;
        try {
            dn1 dn1VarA = a(b40Var, ky0Var);
            int i3 = ky0Var.d;
            while (i3 < i2 && vi1.a(b40Var.n[i3])) {
                i3++;
            }
            ky0Var.b(i3);
            int i4 = ky0Var.d;
            int iG = b40Var.g(32, i4, i2);
            if (iG < 0) {
                iG = i2;
            }
            String strI = b40Var.i(i4, iG);
            for (int i5 = 0; i5 < strI.length(); i5++) {
                if (!Character.isDigit(strI.charAt(i5))) {
                    throw new zs2("Status line contains invalid status code: " + b40Var.h(i, i2));
                }
            }
            try {
                return new kv(dn1VarA, Integer.parseInt(strI), iG < i2 ? b40Var.i(iG, i2) : "");
            } catch (NumberFormatException unused) {
                throw new zs2("Status line contains invalid status code: " + b40Var.h(i, i2));
            }
        } catch (IndexOutOfBoundsException unused2) {
            throw new zs2("Invalid status line: ".concat(b40Var.h(i, i2)));
        }
    }
}
