package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static final g00 a;
    public static final g00 b;
    public static final g00 c;
    public static final g00 d;
    public static final g00 e;

    static {
        g00 g00Var = g00.q;
        a = bx3.o("/");
        b = bx3.o("\\");
        c = bx3.o("/\\");
        d = bx3.o(".");
        e = bx3.o("..");
    }

    public static final int a(bt2 bt2Var) {
        g00 g00Var = bt2Var.n;
        if (g00Var.c() != 0) {
            if (g00Var.h(0) != 47) {
                if (g00Var.h(0) == 92) {
                    if (g00Var.c() > 2 && g00Var.h(1) == 92) {
                        g00 g00Var2 = b;
                        g00Var2.getClass();
                        int iE = g00Var.e(2, g00Var2.g());
                        return iE == -1 ? g00Var.c() : iE;
                    }
                } else if (g00Var.c() > 2 && g00Var.h(1) == 58 && g00Var.h(2) == 92) {
                    char cH = (char) g00Var.h(0);
                    if ('a' <= cH && cH < '{') {
                        return 3;
                    }
                    if ('A' <= cH && cH < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    public static final bt2 b(bt2 bt2Var, bt2 bt2Var2, boolean z) {
        bt2Var2.getClass();
        if (a(bt2Var2) != -1 || bt2Var2.f() != null) {
            return bt2Var2;
        }
        g00 g00VarC = c(bt2Var);
        if (g00VarC == null && (g00VarC = c(bt2Var2)) == null) {
            g00VarC = f(bt2.o);
        }
        sy syVar = new sy();
        syVar.j0(bt2Var.n);
        if (syVar.o > 0) {
            syVar.j0(g00VarC);
        }
        syVar.j0(bt2Var2.n);
        return d(syVar, z);
    }

    public static final g00 c(bt2 bt2Var) {
        g00 g00Var = bt2Var.n;
        g00 g00Var2 = a;
        if (g00.f(g00Var, g00Var2) != -1) {
            return g00Var2;
        }
        g00 g00Var3 = bt2Var.n;
        g00 g00Var4 = b;
        if (g00.f(g00Var3, g00Var4) != -1) {
            return g00Var4;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0110 A[EDGE_INSN: B:98:0x0110->B:81:0x0110 BREAK  A[LOOP:1: B:53:0x00ab->B:112:0x00ab], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.bt2 d(defpackage.sy r17, boolean r18) throws java.io.EOFException {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c.d(sy, boolean):bt2");
    }

    public static final g00 e(byte b2) {
        if (b2 == 47) {
            return a;
        }
        if (b2 == 92) {
            return b;
        }
        k21.f(di0.q(b2, "not a directory separator: "));
        return null;
    }

    public static final g00 f(String str) {
        if (nt1.g(str, "/")) {
            return a;
        }
        if (nt1.g(str, "\\")) {
            return b;
        }
        k21.f(di0.u("not a directory separator: ", str));
        return null;
    }
}
