package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qh2 extends oj {
    public final ph2 o = new ph2();
    public int p = 1;
    public String q = null;

    @Override // defpackage.oj
    public final gj1 a(yk0 yk0Var, om1 om1Var) throws uj {
        String str;
        String strH;
        try {
            jh2 jh2Var = (jh2) yk0Var;
            int i = this.p;
            if (i == 6) {
                throw new uj(cm1.a("NTLM authentication failed"));
            }
            ph2 ph2Var = this.o;
            if (i == 2) {
                String str2 = jh2Var.n.o;
                ph2Var.getClass();
                strH = ph2.e;
                this.p = 3;
            } else {
                if (i != 4) {
                    switch (this.p) {
                        case 1:
                            str = "UNINITIATED";
                            break;
                        case 2:
                            str = "CHALLENGE_RECEIVED";
                            break;
                        case 3:
                            str = "MSG_TYPE1_GENERATED";
                            break;
                        case 4:
                            str = "MSG_TYPE2_RECEVIED";
                            break;
                        case 5:
                            str = "MSG_TYPE3_GENERATED";
                            break;
                        case 6:
                            str = "FAILED";
                            break;
                        default:
                            str = "null";
                            break;
                    }
                    throw new uj(cm1.a("Unexpected state: ".concat(str)));
                }
                rh2 rh2Var = jh2Var.n;
                String str3 = rh2Var.n;
                String str4 = jh2Var.o;
                String str5 = rh2Var.o;
                String str6 = jh2Var.p;
                String str7 = this.q;
                ph2Var.getClass();
                nh2 nh2Var = new nh2(str7);
                strH = new oh2(str5, str6, str3, str4, nh2Var.p, nh2Var.s, nh2Var.q, nh2Var.r).h();
                this.p = 5;
            }
            b40 b40Var = new b40(32);
            if (g()) {
                b40Var.b("Proxy-Authorization");
            } else {
                b40Var.b("Authorization");
            }
            b40Var.b(": NTLM ");
            b40Var.b(strH);
            return new cz(b40Var);
        } catch (ClassCastException unused) {
            throw new ut1(cm1.a("Credentials cannot be used for NTLM authentication: ".concat(yk0Var.getClass().getName())));
        }
    }

    @Override // defpackage.oj
    public final String c() {
        return null;
    }

    @Override // defpackage.oj
    public final String d() {
        return "ntlm";
    }

    @Override // defpackage.oj
    public final boolean e() {
        int i = this.p;
        return i == 5 || i == 6;
    }

    @Override // defpackage.oj
    public final boolean f() {
        return true;
    }

    @Override // defpackage.oj
    public final void h(b40 b40Var, int i, int i2) throws o92 {
        String strI = b40Var.i(i, i2);
        this.q = strI;
        boolean zIsEmpty = strI.isEmpty();
        int i3 = this.p;
        if (zIsEmpty) {
            if (i3 == 1) {
                this.p = 2;
                return;
            } else {
                this.p = 6;
                return;
            }
        }
        if (di0.h(i3, 3) < 0) {
            this.p = 6;
            throw new o92(cm1.a("Out of sequence NTLM response message"));
        }
        if (this.p == 3) {
            this.p = 4;
        }
    }
}
