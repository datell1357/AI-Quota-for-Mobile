package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e50 {
    public int a;
    public int b;
    public int c = 0;
    public Object d;

    public e50(b70 b70Var) {
        Charset charset = dt1.a;
        this.d = b70Var;
        b70Var.o = this;
    }

    public static final void W(int i) throws fo4 {
        if ((i & 3) == 0) {
            return;
        }
        q73.t("Failed to parse the message.");
    }

    public static final void X(int i) throws fo4 {
        if ((i & 7) == 0) {
            return;
        }
        q73.t("Failed to parse the message.");
    }

    public boolean A() {
        int i;
        b70 b70Var = (b70) this.d;
        if (b70Var.j() || (i = this.a) == this.b) {
            return false;
        }
        return b70Var.J(i);
    }

    public void B(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof jo4;
        int i = this.a;
        if (z) {
            jo4 jo4Var = (jo4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    jo4Var.e(cn4Var.r());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                jo4Var.e(cn4Var.r());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Long.valueOf(cn4Var.r()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Long.valueOf(cn4Var.r()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void C(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof sn4;
        int i = this.a;
        if (z) {
            sn4 sn4Var = (sn4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    sn4Var.e(cn4Var.s());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                sn4Var.e(cn4Var.s());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Integer.valueOf(cn4Var.s()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Integer.valueOf(cn4Var.s()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void D(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof jo4;
        int i = this.a;
        if (z) {
            jo4 jo4Var = (jo4) do4Var;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iA = cn4Var.A();
                X(iA);
                int iE = cn4Var.e() + iA;
                do {
                    jo4Var.e(cn4Var.t());
                } while (cn4Var.e() < iE);
                return;
            }
            do {
                jo4Var.e(cn4Var.t());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iA2 = cn4Var.A();
                X(iA2);
                int iE2 = cn4Var.e() + iA2;
                do {
                    do4Var.add(Long.valueOf(cn4Var.t()));
                } while (cn4Var.e() < iE2);
                return;
            }
            do {
                do4Var.add(Long.valueOf(cn4Var.t()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void E(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof sn4;
        int i = this.a;
        if (z) {
            sn4 sn4Var = (sn4) do4Var;
            int i2 = i & 7;
            if (i2 == 2) {
                int iA = cn4Var.A();
                W(iA);
                int iE = cn4Var.e() + iA;
                do {
                    sn4Var.e(cn4Var.u());
                } while (cn4Var.e() < iE);
                return;
            }
            if (i2 != 5) {
                q73.p();
                return;
            }
            do {
                sn4Var.e(cn4Var.u());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                int iA2 = cn4Var.A();
                W(iA2);
                int iE2 = cn4Var.e() + iA2;
                do {
                    do4Var.add(Integer.valueOf(cn4Var.u()));
                } while (cn4Var.e() < iE2);
                return;
            }
            if (i3 != 5) {
                q73.p();
                return;
            }
            do {
                do4Var.add(Integer.valueOf(cn4Var.u()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void F(do4 do4Var) throws fo4 {
        int iL;
        cn4 cn4Var = (cn4) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                do4Var.add(Boolean.valueOf(cn4Var.v()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            this.c = iL;
            return;
        }
        if (i != 2) {
            q73.p();
            return;
        }
        int iE = cn4Var.e() + cn4Var.A();
        do {
            do4Var.add(Boolean.valueOf(cn4Var.v()));
        } while (cn4Var.e() < iE);
        V(iE);
    }

    public void G(do4 do4Var, boolean z) throws eo4 {
        String strW;
        int iL;
        cn4 cn4Var = (cn4) this.d;
        if ((this.a & 7) != 2) {
            q73.p();
            return;
        }
        do {
            if (z) {
                R(2);
                strW = cn4Var.x();
            } else {
                R(2);
                strW = cn4Var.w();
            }
            do4Var.add(strW);
            if (cn4Var.d()) {
                return;
            } else {
                iL = cn4Var.l();
            }
        } while (iL == this.a);
        this.c = iL;
    }

    public void H(do4 do4Var, cp4 cp4Var, kn4 kn4Var) throws fo4 {
        int iL;
        int i = this.a;
        if ((i & 7) != 2) {
            q73.p();
            return;
        }
        do {
            rn4 rn4VarZza = cp4Var.zza();
            S(rn4VarZza, cp4Var, kn4Var);
            cp4Var.h(rn4VarZza);
            do4Var.add(rn4VarZza);
            cn4 cn4Var = (cn4) this.d;
            if (cn4Var.d() || this.c != 0) {
                return;
            } else {
                iL = cn4Var.l();
            }
        } while (iL == i);
        this.c = iL;
    }

    public void I(do4 do4Var, cp4 cp4Var, kn4 kn4Var) throws eo4 {
        int iL;
        int i = this.a;
        if ((i & 7) != 3) {
            q73.p();
            return;
        }
        do {
            rn4 rn4VarZza = cp4Var.zza();
            T(rn4VarZza, cp4Var, kn4Var);
            cp4Var.h(rn4VarZza);
            do4Var.add(rn4VarZza);
            cn4 cn4Var = (cn4) this.d;
            if (cn4Var.d() || this.c != 0) {
                return;
            } else {
                iL = cn4Var.l();
            }
        } while (iL == i);
        this.c = iL;
    }

    public void J(do4 do4Var) throws eo4 {
        int iL;
        if ((this.a & 7) != 2) {
            q73.p();
            return;
        }
        do {
            do4Var.add(Z());
            cn4 cn4Var = (cn4) this.d;
            if (cn4Var.d()) {
                return;
            } else {
                iL = cn4Var.l();
            }
        } while (iL == this.a);
        this.c = iL;
    }

    public void K(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof sn4;
        int i = this.a;
        if (z) {
            sn4 sn4Var = (sn4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    sn4Var.e(cn4Var.A());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                sn4Var.e(cn4Var.A());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Integer.valueOf(cn4Var.A()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Integer.valueOf(cn4Var.A()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void L(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof sn4;
        int i = this.a;
        if (z) {
            sn4 sn4Var = (sn4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    sn4Var.e(cn4Var.B());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                sn4Var.e(cn4Var.B());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Integer.valueOf(cn4Var.B()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Integer.valueOf(cn4Var.B()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void M(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof sn4;
        int i = this.a;
        if (z) {
            sn4 sn4Var = (sn4) do4Var;
            int i2 = i & 7;
            if (i2 == 2) {
                int iA = cn4Var.A();
                W(iA);
                int iE = cn4Var.e() + iA;
                do {
                    sn4Var.e(cn4Var.C());
                } while (cn4Var.e() < iE);
                return;
            }
            if (i2 != 5) {
                q73.p();
                return;
            }
            do {
                sn4Var.e(cn4Var.C());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 == 2) {
                int iA2 = cn4Var.A();
                W(iA2);
                int iE2 = cn4Var.e() + iA2;
                do {
                    do4Var.add(Integer.valueOf(cn4Var.C()));
                } while (cn4Var.e() < iE2);
                return;
            }
            if (i3 != 5) {
                q73.p();
                return;
            }
            do {
                do4Var.add(Integer.valueOf(cn4Var.C()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void N(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof jo4;
        int i = this.a;
        if (z) {
            jo4 jo4Var = (jo4) do4Var;
            int i2 = i & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iA = cn4Var.A();
                X(iA);
                int iE = cn4Var.e() + iA;
                do {
                    jo4Var.e(cn4Var.D());
                } while (cn4Var.e() < iE);
                return;
            }
            do {
                jo4Var.e(cn4Var.D());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iA2 = cn4Var.A();
                X(iA2);
                int iE2 = cn4Var.e() + iA2;
                do {
                    do4Var.add(Long.valueOf(cn4Var.D()));
                } while (cn4Var.e() < iE2);
                return;
            }
            do {
                do4Var.add(Long.valueOf(cn4Var.D()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void O(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof sn4;
        int i = this.a;
        if (z) {
            sn4 sn4Var = (sn4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    sn4Var.e(cn4Var.E());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                sn4Var.e(cn4Var.E());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Integer.valueOf(cn4Var.E()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Integer.valueOf(cn4Var.E()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public void P(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof jo4;
        int i = this.a;
        if (z) {
            jo4 jo4Var = (jo4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    jo4Var.e(cn4Var.F());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                jo4Var.e(cn4Var.F());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Long.valueOf(cn4Var.F()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Long.valueOf(cn4Var.F()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
    
        r12.put(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        r1.b(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0084, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Q(defpackage.lo4 r12, defpackage.ui3 r13, defpackage.kn4 r14) {
        /*
            r11 = this;
            r0 = 2
            r11.R(r0)
            java.lang.Object r1 = r11.d
            cn4 r1 = (defpackage.cn4) r1
            int r2 = r1.A()
            int r2 = r1.a(r2)
            java.lang.Object r3 = r13.q
            java.lang.String r4 = ""
            r5 = r3
        L15:
            int r6 = r11.Y()     // Catch: java.lang.Throwable -> L49
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r7) goto L7e
            boolean r7 = r1.d()     // Catch: java.lang.Throwable -> L49
            if (r7 == 0) goto L25
            goto L7e
        L25:
            r7 = 1
            r8 = 0
            java.lang.String r9 = "Unable to parse map entry."
            if (r6 == r7) goto L5a
            if (r6 == r0) goto L4d
            boolean r6 = r1.d()     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            if (r6 != 0) goto L3f
            int r6 = r11.a     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            int r7 = r11.b     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            if (r6 != r7) goto L3a
            goto L3f
        L3a:
            boolean r6 = r1.n(r6)     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            goto L40
        L3f:
            r6 = r8
        L40:
            if (r6 == 0) goto L43
            goto L15
        L43:
            fo4 r6 = new fo4     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            r6.<init>(r9)     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            throw r6     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
        L49:
            r11 = move-exception
            goto L85
        L4b:
            r6 = move-exception
            goto L64
        L4d:
            java.lang.Object r6 = r13.p     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            up4 r6 = (defpackage.up4) r6     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            java.lang.Class r7 = r3.getClass()     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            java.lang.Object r5 = r11.U(r6, r7, r14)     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            goto L15
        L5a:
            java.lang.Object r6 = r13.o     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            up4 r6 = (defpackage.up4) r6     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            r7 = 0
            java.lang.Object r4 = r11.U(r6, r7, r7)     // Catch: java.lang.Throwable -> L49 defpackage.eo4 -> L4b
            goto L15
        L64:
            boolean r7 = r1.d()     // Catch: java.lang.Throwable -> L49
            if (r7 != 0) goto L75
            int r7 = r11.a     // Catch: java.lang.Throwable -> L49
            int r10 = r11.b     // Catch: java.lang.Throwable -> L49
            if (r7 != r10) goto L71
            goto L75
        L71:
            boolean r8 = r1.n(r7)     // Catch: java.lang.Throwable -> L49
        L75:
            if (r8 == 0) goto L78
            goto L15
        L78:
            fo4 r11 = new fo4     // Catch: java.lang.Throwable -> L49
            r11.<init>(r9, r6)     // Catch: java.lang.Throwable -> L49
            throw r11     // Catch: java.lang.Throwable -> L49
        L7e:
            r12.put(r4, r5)     // Catch: java.lang.Throwable -> L49
            r1.b(r2)
            return
        L85:
            r1.b(r2)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e50.Q(lo4, ui3, kn4):void");
    }

    public void R(int i) {
        if ((this.a & 7) == i) {
            return;
        }
        q73.p();
    }

    public void S(Object obj, cp4 cp4Var, kn4 kn4Var) throws fo4 {
        cn4 cn4Var = (cn4) this.d;
        int iA = cn4Var.A();
        if (cn4Var.a + cn4Var.b >= 100) {
            q73.t("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return;
        }
        int iA2 = cn4Var.a(iA);
        cn4Var.a++;
        cp4Var.f(obj, this, kn4Var);
        cn4Var.m(0);
        cn4Var.a--;
        cn4Var.b(iA2);
    }

    public void T(Object obj, cp4 cp4Var, kn4 kn4Var) {
        int i = this.b;
        this.b = ((this.a >>> 3) << 3) | 4;
        try {
            cp4Var.f(obj, this, kn4Var);
            if (this.a == this.b) {
            } else {
                throw new fo4("Failed to parse the message.");
            }
        } finally {
            this.b = i;
        }
    }

    public Object U(up4 up4Var, Class cls, kn4 kn4Var) throws fo4 {
        cn4 cn4Var = (cn4) this.d;
        up4 up4Var2 = up4.p;
        switch (up4Var.ordinal()) {
            case 0:
                R(1);
                return Double.valueOf(cn4Var.o());
            case 1:
                R(5);
                return Float.valueOf(cn4Var.p());
            case 2:
                R(0);
                return Long.valueOf(cn4Var.r());
            case 3:
                R(0);
                return Long.valueOf(cn4Var.q());
            case 4:
                R(0);
                return Integer.valueOf(cn4Var.s());
            case 5:
                R(1);
                return Long.valueOf(cn4Var.t());
            case 6:
                R(5);
                return Integer.valueOf(cn4Var.u());
            case 7:
                R(0);
                return Boolean.valueOf(cn4Var.v());
            case 8:
                R(2);
                return cn4Var.x();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
            default:
                k21.f("unsupported field type.");
                return null;
            case 10:
                R(2);
                cp4 cp4VarA = zo4.c.a(cls);
                rn4 rn4VarZza = cp4VarA.zza();
                S(rn4VarZza, cp4VarA, kn4Var);
                cp4VarA.h(rn4VarZza);
                return rn4VarZza;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return Z();
            case 12:
                R(0);
                return Integer.valueOf(cn4Var.A());
            case 13:
                R(0);
                return Integer.valueOf(cn4Var.B());
            case 14:
                R(5);
                return Integer.valueOf(cn4Var.C());
            case 15:
                R(1);
                return Long.valueOf(cn4Var.D());
            case 16:
                R(0);
                return Integer.valueOf(cn4Var.E());
            case 17:
                R(0);
                return Long.valueOf(cn4Var.F());
        }
    }

    public void V(int i) throws fo4 {
        if (((cn4) this.d).e() == i) {
            return;
        }
        q73.t("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public int Y() {
        int iL = this.c;
        if (iL != 0) {
            this.a = iL;
            this.c = 0;
        } else {
            iL = ((cn4) this.d).l();
            this.a = iL;
        }
        return (iL == 0 || iL == this.b) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : iL >>> 3;
    }

    public zm4 Z() {
        R(2);
        return ((cn4) this.d).y();
    }

    public void a(oe0 oe0Var) {
        Object[] objArr = (Object[]) this.d;
        int i = this.b;
        objArr[i] = oe0Var;
        int i2 = this.c & (i + 1);
        this.b = i2;
        int i3 = this.a;
        if (i2 == i3) {
            int length = objArr.length;
            int i4 = length - i3;
            int i5 = length << 1;
            if (i5 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            Object[] objArr2 = new Object[i5];
            ji.O(0, i3, length, objArr, objArr2);
            ji.O(i4, 0, this.a, (Object[]) this.d, objArr2);
            this.d = objArr2;
            this.a = 0;
            this.b = length;
            this.c = i5 - 1;
        }
    }

    public void a0(do4 do4Var) throws fo4 {
        int iL;
        cn4 cn4Var = (cn4) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                do4Var.add(Double.valueOf(cn4Var.o()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            this.c = iL;
            return;
        }
        if (i != 2) {
            q73.p();
            return;
        }
        int iA = cn4Var.A();
        X(iA);
        int iE = cn4Var.e() + iA;
        do {
            do4Var.add(Double.valueOf(cn4Var.o()));
        } while (cn4Var.e() < iE);
    }

    public int b() {
        int i = this.c;
        if (i != 0) {
            this.a = i;
            this.c = 0;
        } else {
            this.a = ((b70) this.d).G();
        }
        int i2 = this.a;
        return (i2 == 0 || i2 == this.b) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i2 >>> 3;
    }

    public void b0(do4 do4Var) throws fo4 {
        int iL;
        cn4 cn4Var = (cn4) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iA = cn4Var.A();
            W(iA);
            int iE = cn4Var.e() + iA;
            do {
                do4Var.add(Float.valueOf(cn4Var.p()));
            } while (cn4Var.e() < iE);
            return;
        }
        if (i != 5) {
            q73.p();
            return;
        }
        do {
            do4Var.add(Float.valueOf(cn4Var.p()));
            if (cn4Var.d()) {
                return;
            } else {
                iL = cn4Var.l();
            }
        } while (iL == this.a);
        this.c = iL;
    }

    public int c(int i) {
        return ((br2) this.d).i[this.b + i];
    }

    public void c0(do4 do4Var) throws fo4 {
        int iL;
        int iL2;
        cn4 cn4Var = (cn4) this.d;
        boolean z = do4Var instanceof jo4;
        int i = this.a;
        if (z) {
            jo4 jo4Var = (jo4) do4Var;
            int i2 = i & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    q73.p();
                    return;
                }
                int iE = cn4Var.e() + cn4Var.A();
                do {
                    jo4Var.e(cn4Var.q());
                } while (cn4Var.e() < iE);
                V(iE);
                return;
            }
            do {
                jo4Var.e(cn4Var.q());
                if (cn4Var.d()) {
                    return;
                } else {
                    iL2 = cn4Var.l();
                }
            } while (iL2 == this.a);
        } else {
            int i3 = i & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    q73.p();
                    return;
                }
                int iE2 = cn4Var.e() + cn4Var.A();
                do {
                    do4Var.add(Long.valueOf(cn4Var.q()));
                } while (cn4Var.e() < iE2);
                V(iE2);
                return;
            }
            do {
                do4Var.add(Long.valueOf(cn4Var.q()));
                if (cn4Var.d()) {
                    return;
                } else {
                    iL = cn4Var.l();
                }
            } while (iL == this.a);
            iL2 = iL;
        }
        this.c = iL2;
    }

    public Object d(int i) {
        return ((br2) this.d).k[this.c + i];
    }

    public void e(Object obj, be3 be3Var, b41 b41Var) {
        int i = this.b;
        this.b = ((this.a >>> 3) << 3) | 4;
        try {
            be3Var.c(obj, this, b41Var);
            if (this.a == this.b) {
            } else {
                throw new wt1("Failed to parse the message.");
            }
        } finally {
            this.b = i;
        }
    }

    public void f(Object obj, be3 be3Var, b41 b41Var) throws wt1 {
        b70 b70Var = (b70) this.d;
        int iH = b70Var.H();
        if (b70Var.n >= 100) {
            throw new wt1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iP = b70Var.p(iH);
        b70Var.n++;
        be3Var.c(obj, this, b41Var);
        b70Var.f(0);
        b70Var.n--;
        b70Var.o(iP);
    }

    public void g(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Boolean.valueOf(b70Var.q()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Boolean.valueOf(b70Var.q()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public f00 h() throws vt1 {
        z(2);
        return ((b70) this.d).r();
    }

    public void i(ct1 ct1Var) throws vt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        if ((this.a & 7) != 2) {
            throw wt1.b();
        }
        do {
            ((a03) ct1Var).add(h());
            if (b70Var.j()) {
                return;
            } else {
                iG = b70Var.G();
            }
        } while (iG == this.a);
        this.c = iG;
    }

    public void j(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                ((a03) ct1Var).add(Double.valueOf(b70Var.s()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int iH = b70Var.H();
        if ((iH & 7) != 0) {
            throw new wt1("Failed to parse the message.");
        }
        int i2 = b70Var.i() + iH;
        do {
            ((a03) ct1Var).add(Double.valueOf(b70Var.s()));
        } while (b70Var.i() < i2);
    }

    public void k(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Integer.valueOf(b70Var.t()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Integer.valueOf(b70Var.t()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public Object l(pf4 pf4Var, Class cls, b41 b41Var) throws wt1 {
        b70 b70Var = (b70) this.d;
        switch (pf4Var.ordinal()) {
            case 0:
                z(1);
                return Double.valueOf(b70Var.s());
            case 1:
                z(5);
                return Float.valueOf(b70Var.w());
            case 2:
                z(0);
                return Long.valueOf(b70Var.y());
            case 3:
                z(0);
                return Long.valueOf(b70Var.I());
            case 4:
                z(0);
                return Integer.valueOf(b70Var.x());
            case 5:
                z(1);
                return Long.valueOf(b70Var.v());
            case 6:
                z(5);
                return Integer.valueOf(b70Var.u());
            case 7:
                z(0);
                return Boolean.valueOf(b70Var.q());
            case 8:
                z(2);
                return b70Var.F();
            case ConnectionResult.SERVICE_INVALID /* 9 */:
            default:
                k21.f("unsupported field type.");
                return null;
            case 10:
                z(2);
                be3 be3VarA = zz2.c.a(cls);
                sg1 sg1VarI = be3VarA.i();
                f(sg1VarI, be3VarA, b41Var);
                be3VarA.d(sg1VarI);
                return sg1VarI;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return h();
            case 12:
                z(0);
                return Integer.valueOf(b70Var.H());
            case 13:
                z(0);
                return Integer.valueOf(b70Var.t());
            case 14:
                z(5);
                return Integer.valueOf(b70Var.z());
            case 15:
                z(1);
                return Long.valueOf(b70Var.A());
            case 16:
                z(0);
                return Integer.valueOf(b70Var.B());
            case 17:
                z(0);
                return Long.valueOf(b70Var.C());
        }
    }

    public void m(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iH = b70Var.H();
            if ((iH & 3) != 0) {
                throw new wt1("Failed to parse the message.");
            }
            int i2 = b70Var.i() + iH;
            do {
                ((a03) ct1Var).add(Integer.valueOf(b70Var.u()));
            } while (b70Var.i() < i2);
            return;
        }
        if (i != 5) {
            throw wt1.b();
        }
        do {
            ((a03) ct1Var).add(Integer.valueOf(b70Var.u()));
            if (b70Var.j()) {
                return;
            } else {
                iG = b70Var.G();
            }
        } while (iG == this.a);
        this.c = iG;
    }

    public void n(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                ((a03) ct1Var).add(Long.valueOf(b70Var.v()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int iH = b70Var.H();
        if ((iH & 7) != 0) {
            throw new wt1("Failed to parse the message.");
        }
        int i2 = b70Var.i() + iH;
        do {
            ((a03) ct1Var).add(Long.valueOf(b70Var.v()));
        } while (b70Var.i() < i2);
    }

    public void o(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iH = b70Var.H();
            if ((iH & 3) != 0) {
                throw new wt1("Failed to parse the message.");
            }
            int i2 = b70Var.i() + iH;
            do {
                ((a03) ct1Var).add(Float.valueOf(b70Var.w()));
            } while (b70Var.i() < i2);
            return;
        }
        if (i != 5) {
            throw wt1.b();
        }
        do {
            ((a03) ct1Var).add(Float.valueOf(b70Var.w()));
            if (b70Var.j()) {
                return;
            } else {
                iG = b70Var.G();
            }
        } while (iG == this.a);
        this.c = iG;
    }

    public void p(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Integer.valueOf(b70Var.x()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Integer.valueOf(b70Var.x()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public void q(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Long.valueOf(b70Var.y()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Long.valueOf(b70Var.y()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public void r(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 2) {
            int iH = b70Var.H();
            if ((iH & 3) != 0) {
                throw new wt1("Failed to parse the message.");
            }
            int i2 = b70Var.i() + iH;
            do {
                ((a03) ct1Var).add(Integer.valueOf(b70Var.z()));
            } while (b70Var.i() < i2);
            return;
        }
        if (i != 5) {
            throw wt1.b();
        }
        do {
            ((a03) ct1Var).add(Integer.valueOf(b70Var.z()));
            if (b70Var.j()) {
                return;
            } else {
                iG = b70Var.G();
            }
        } while (iG == this.a);
        this.c = iG;
    }

    public void s(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 1) {
            do {
                ((a03) ct1Var).add(Long.valueOf(b70Var.A()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int iH = b70Var.H();
        if ((iH & 7) != 0) {
            throw new wt1("Failed to parse the message.");
        }
        int i2 = b70Var.i() + iH;
        do {
            ((a03) ct1Var).add(Long.valueOf(b70Var.A()));
        } while (b70Var.i() < i2);
    }

    public void t(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Integer.valueOf(b70Var.B()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Integer.valueOf(b70Var.B()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public void u(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Long.valueOf(b70Var.C()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Long.valueOf(b70Var.C()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public void v(ct1 ct1Var, boolean z) throws vt1 {
        String strE;
        int iG;
        b70 b70Var = (b70) this.d;
        if ((this.a & 7) != 2) {
            throw wt1.b();
        }
        do {
            if (z) {
                z(2);
                strE = b70Var.F();
            } else {
                z(2);
                strE = b70Var.E();
            }
            ((a03) ct1Var).add(strE);
            if (b70Var.j()) {
                return;
            } else {
                iG = b70Var.G();
            }
        } while (iG == this.a);
        this.c = iG;
    }

    public void w(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Integer.valueOf(b70Var.H()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Integer.valueOf(b70Var.H()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public void x(ct1 ct1Var) throws wt1 {
        int iG;
        b70 b70Var = (b70) this.d;
        int i = this.a & 7;
        if (i == 0) {
            do {
                ((a03) ct1Var).add(Long.valueOf(b70Var.I()));
                if (b70Var.j()) {
                    return;
                } else {
                    iG = b70Var.G();
                }
            } while (iG == this.a);
            this.c = iG;
            return;
        }
        if (i != 2) {
            throw wt1.b();
        }
        int i2 = b70Var.i() + b70Var.H();
        do {
            ((a03) ct1Var).add(Long.valueOf(b70Var.I()));
        } while (b70Var.i() < i2);
        y(i2);
    }

    public void y(int i) throws wt1 {
        if (((b70) this.d).i() != i) {
            throw wt1.e();
        }
    }

    public void z(int i) throws vt1 {
        if ((this.a & 7) != i) {
            throw wt1.b();
        }
    }

    public e50(cn4 cn4Var) {
        this.d = cn4Var;
        cn4Var.c = this;
    }
}
