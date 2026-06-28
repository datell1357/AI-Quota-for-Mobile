package defpackage;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ou1 extends g34 {
    public final /* synthetic */ int a;
    public final Object b;
    public final g34 c;
    public final Object d;

    public ou1(n70 n70Var, ou1 ou1Var, ou1 ou1Var2, on2 on2Var) {
        this.a = 1;
        this.b = ou1Var;
        this.c = ou1Var2;
        this.d = on2Var;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        LocalDateTime localDateTimeJ = null;
        Map map = null;
        switch (this.a) {
            case 0:
                ww1Var.j();
                ZoneOffset zoneOffsetS = null;
                ZoneId zoneIdP = null;
                while (ww1Var.s0() != 4) {
                    switch (ww1Var.j0()) {
                        case "offset":
                            zoneOffsetS = ku1.s(this.c.b(ww1Var));
                            break;
                        case "zone":
                            zoneIdP = ku1.p(((g34) this.d).b(ww1Var));
                            break;
                        case "dateTime":
                            localDateTimeJ = ku1.j(((f34) this.b).b(ww1Var));
                            break;
                        default:
                            ww1Var.y0();
                            break;
                    }
                }
                ww1Var.B();
                mu1.a(localDateTimeJ, "dateTime", ww1Var);
                LocalDateTime localDateTimeZ = ku1.z(localDateTimeJ);
                mu1.a(zoneOffsetS, "offset", ww1Var);
                ZoneOffset zoneOffsetB = ku1.B(zoneOffsetS);
                mu1.a(zoneIdP, "zone", ww1Var);
                return ZonedDateTime.ofInstant(localDateTimeZ, zoneOffsetB, ku1.A(zoneIdP));
            case 1:
                int iS0 = ww1Var.s0();
                if (iS0 == 9) {
                    ww1Var.o0();
                } else {
                    map = (Map) ((on2) this.d).d();
                    if (iS0 == 1) {
                        ww1Var.b();
                        while (ww1Var.L()) {
                            ww1Var.b();
                            Object objB = ((ou1) this.b).c.b(ww1Var);
                            Object objB2 = ((ou1) this.c).c.b(ww1Var);
                            if (map.containsKey(objB)) {
                                throw new fw1("duplicate key: " + objB, 5);
                            }
                            map.put(objB, objB2);
                            ww1Var.A();
                        }
                        ww1Var.A();
                    } else {
                        ww1Var.j();
                        while (ww1Var.L()) {
                            b21.o.getClass();
                            int iZ = ww1Var.t;
                            if (iZ == 0) {
                                iZ = ww1Var.z();
                            }
                            if (iZ == 13) {
                                ww1Var.t = 9;
                            } else if (iZ == 12) {
                                ww1Var.t = 8;
                            } else {
                                if (iZ != 14) {
                                    throw ww1Var.A0("a name");
                                }
                                ww1Var.t = 10;
                            }
                            Object objB3 = ((ou1) this.b).c.b(ww1Var);
                            Object objB4 = ((ou1) this.c).c.b(ww1Var);
                            if (map.containsKey(objB3)) {
                                throw new fw1("duplicate key: " + objB3, 5);
                            }
                            map.put(objB3, objB4);
                        }
                        ww1Var.B();
                    }
                }
                return map;
            default:
                return this.c.b(ww1Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    @Override // defpackage.g34
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.bx1 r4, java.lang.Object r5) throws java.io.IOException {
        /*
            r3 = this;
            int r0 = r3.a
            java.lang.Object r1 = r3.b
            java.lang.Object r2 = r3.d
            g34 r3 = r3.c
            switch(r0) {
                case 0: goto L83;
                case 1: goto L4a;
                default: goto Lb;
            }
        Lb:
            java.lang.reflect.Type r2 = (java.lang.reflect.Type) r2
            if (r5 == 0) goto L1c
            boolean r0 = r2 instanceof java.lang.Class
            if (r0 != 0) goto L17
            boolean r0 = r2 instanceof java.lang.reflect.TypeVariable
            if (r0 == 0) goto L1c
        L17:
            java.lang.Class r0 = r5.getClass()
            goto L1d
        L1c:
            r0 = r2
        L1d:
            if (r0 == r2) goto L46
            pi1 r1 = (defpackage.pi1) r1
            q44 r2 = new q44
            r2.<init>(r0)
            g34 r0 = r1.b(r2)
            boolean r1 = r0 instanceof defpackage.f43
            if (r1 != 0) goto L2f
            goto L45
        L2f:
            r1 = r3
        L30:
            boolean r2 = r1 instanceof defpackage.li3
            if (r2 == 0) goto L40
            r2 = r1
            li3 r2 = (defpackage.li3) r2
            g34 r2 = r2.d()
            if (r2 != r1) goto L3e
            goto L40
        L3e:
            r1 = r2
            goto L30
        L40:
            boolean r1 = r1 instanceof defpackage.f43
            if (r1 != 0) goto L45
            goto L46
        L45:
            r3 = r0
        L46:
            r3.c(r4, r5)
            return
        L4a:
            java.util.Map r5 = (java.util.Map) r5
            if (r5 != 0) goto L52
            r4.L()
            goto L82
        L52:
            r4.r()
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L5d:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L7f
            java.lang.Object r0 = r5.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r4.F(r1)
            r1 = r3
            ou1 r1 = (defpackage.ou1) r1
            java.lang.Object r0 = r0.getValue()
            r1.c(r4, r0)
            goto L5d
        L7f:
            r4.B()
        L82:
            return
        L83:
            java.time.ZonedDateTime r5 = defpackage.ku1.u(r5)
            if (r5 != 0) goto L8d
            r4.L()
            goto Lbb
        L8d:
            r4.r()
            java.lang.String r0 = "dateTime"
            r4.F(r0)
            f34 r1 = (defpackage.f34) r1
            java.time.LocalDateTime r0 = defpackage.ku1.k(r5)
            r1.c(r4, r0)
            java.lang.String r0 = "offset"
            r4.F(r0)
            java.time.ZoneOffset r0 = defpackage.ku1.t(r5)
            r3.c(r4, r0)
            java.lang.String r3 = "zone"
            r4.F(r3)
            g34 r2 = (defpackage.g34) r2
            java.time.ZoneId r3 = defpackage.nu1.n(r5)
            r2.c(r4, r3)
            r4.B()
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ou1.c(bx1, java.lang.Object):void");
    }

    public /* synthetic */ ou1(Object obj, g34 g34Var, Object obj2, int i) {
        this.a = i;
        this.b = obj;
        this.c = g34Var;
        this.d = obj2;
    }
}
