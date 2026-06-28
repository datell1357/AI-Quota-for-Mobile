package defpackage;

import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lz1 implements ya0 {
    public int A;
    public int B;
    public final String C;
    public final xy1 n;
    public zb0 o;
    public st3 p;
    public int q;
    public int r;
    public final kg2 s;
    public final kg2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final fz1 f194u;
    public final cz1 v;
    public final kg2 w;
    public final rt3 x;
    public final kg2 y;
    public final ug2 z;

    public lz1(xy1 xy1Var, st3 st3Var) {
        this.n = xy1Var;
        this.p = st3Var;
        long[] jArr = td3.a;
        this.s = new kg2();
        this.t = new kg2();
        this.f194u = new fz1(this);
        this.v = new cz1(this);
        this.w = new kg2();
        this.x = new rt3();
        this.y = new kg2();
        this.z = new ug2(new Object[16]);
        this.C = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";
    }

    public static final void a(lz1 lz1Var, Object obj) {
        xy1 xy1Var = lz1Var.n;
        lz1Var.g();
        xy1 xy1Var2 = (xy1) lz1Var.w.k(obj);
        if (xy1Var2 != null) {
            if (lz1Var.B <= 0) {
                ar1.b("No pre-composed items to dispose");
            }
            int iJ = ((rg2) xy1Var.o()).n.j(xy1Var2);
            if (iJ < ((rg2) xy1Var.o()).n.p - lz1Var.B) {
                ar1.b("Item is not in pre-composed item range");
            }
            lz1Var.A++;
            lz1Var.B--;
            dz1 dz1Var = (dz1) lz1Var.s.g(xy1Var2);
            if (dz1Var != null) {
                c(dz1Var);
            }
            int i = (((rg2) xy1Var.o()).n.p - lz1Var.B) - lz1Var.A;
            lz1Var.j(iJ, i);
            lz1Var.e(i);
        }
        if (lz1Var.z.i(obj)) {
            xy1.X(xy1Var, true, 6);
        }
    }

    public static void c(dz1 dz1Var) {
        lg2 lg2Var;
        zt2 zt2Var = dz1Var.f;
        if (zt2Var != null) {
            zt2Var.h.set(bu2.o);
            l53 l53Var = zt2Var.k;
            if (l53Var.d.h()) {
                lg2Var = l53Var.d;
                lg2 lg2Var2 = ud3.a;
                l53Var.d = new lg2();
                l53Var.c.h();
            } else {
                lg2Var = null;
            }
            l53Var.b();
            ec0 ec0Var = zt2Var.a;
            ec0Var.D = null;
            if (lg2Var != null) {
                ec0Var.H.k = lg2Var;
                ec0Var.J = 2;
            }
            dz1Var.f = null;
            ec0 ec0Var2 = dz1Var.c;
            if (ec0Var2 != null) {
                ec0Var2.m();
            }
            dz1Var.c = null;
        }
    }

    public final void b(dz1 dz1Var, boolean z) {
        zt2 zt2Var = dz1Var.f;
        if (zt2Var != null) {
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            try {
                xy1 xy1Var = this.n;
                xy1Var.D = true;
                if (z) {
                    while (!zt2Var.c()) {
                        try {
                            zt2Var.e(new p61(15));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                zt2Var.a();
                dz1Var.f = null;
                xy1Var.D = false;
            } finally {
                k75.L(po3VarX, po3VarE, pe1VarE);
            }
        }
    }

    public final nt3 d(Object obj) {
        return !this.n.H() ? new iz1() : new jz1(this, obj);
    }

    public final void e(int i) {
        boolean z;
        boolean z2 = false;
        this.A = 0;
        List listO = this.n.o();
        rg2 rg2Var = (rg2) listO;
        int i2 = (rg2Var.n.p - this.B) - 1;
        if (i <= i2) {
            this.x.clear();
            if (i <= i2) {
                int i3 = i;
                while (true) {
                    Object objG = this.s.g((xy1) rg2Var.get(i3));
                    objG.getClass();
                    ((eg2) this.x.o).a(((dz1) objG).a);
                    if (i3 == i2) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.p.e(this.x);
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            z = false;
            while (i2 >= i) {
                try {
                    xy1 xy1Var = (xy1) ((rg2) listO).get(i2);
                    Object objG2 = this.s.g(xy1Var);
                    objG2.getClass();
                    dz1 dz1Var = (dz1) objG2;
                    Object obj = dz1Var.a;
                    if (((eg2) this.x.o).c(obj)) {
                        this.A++;
                        if (((Boolean) dz1Var.g.getValue()).booleanValue()) {
                            bz1 bz1Var = xy1Var.T;
                            cb2 cb2Var = bz1Var.p;
                            vy1 vy1Var = vy1.p;
                            cb2Var.y = vy1Var;
                            q82 q82Var = bz1Var.q;
                            if (q82Var != null) {
                                q82Var.w = vy1Var;
                            }
                            l(dz1Var, false);
                            if (dz1Var.h) {
                                z = true;
                            }
                        }
                    } else {
                        xy1 xy1Var2 = this.n;
                        xy1Var2.D = true;
                        this.s.k(xy1Var);
                        ec0 ec0Var = dz1Var.c;
                        if (ec0Var != null) {
                            ec0Var.m();
                        }
                        this.n.S(i2, 1);
                        xy1Var2.D = false;
                    }
                    this.t.k(obj);
                    i2--;
                } catch (Throwable th) {
                    k75.L(po3VarX, po3VarE, pe1VarE);
                    throw th;
                }
            }
            k75.L(po3VarX, po3VarE, pe1VarE);
        } else {
            z = false;
        }
        if (z) {
            synchronized (wo3.c) {
                lg2 lg2Var = wo3.j.h;
                if (lg2Var != null) {
                    if (lg2Var.h()) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                wo3.a();
            }
        }
        g();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    @Override // defpackage.ya0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            r17 = this;
            r0 = r17
            r1 = 1
            xy1 r2 = r0.n
            r2.D = r1
            kg2 r1 = r0.s
            java.lang.Object[] r3 = r1.c
            long[] r4 = r1.a
            int r5 = r4.length
            int r5 = r5 + (-2)
            r6 = 0
            if (r5 < 0) goto L52
            r7 = r6
        L14:
            r8 = r4[r7]
            long r10 = ~r8
            r12 = 7
            long r10 = r10 << r12
            long r10 = r10 & r8
            r12 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r10 = r10 & r12
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 == 0) goto L4d
            int r10 = r7 - r5
            int r10 = ~r10
            int r10 = r10 >>> 31
            r11 = 8
            int r10 = 8 - r10
            r12 = r6
        L2e:
            if (r12 >= r10) goto L4b
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r8
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L47
            int r13 = r7 << 3
            int r13 = r13 + r12
            r13 = r3[r13]
            dz1 r13 = (defpackage.dz1) r13
            ec0 r13 = r13.c
            if (r13 == 0) goto L47
            r13.m()
        L47:
            long r8 = r8 >> r11
            int r12 = r12 + 1
            goto L2e
        L4b:
            if (r10 != r11) goto L52
        L4d:
            if (r7 == r5) goto L52
            int r7 = r7 + 1
            goto L14
        L52:
            r2.R()
            r2.D = r6
            r1.a()
            kg2 r1 = r0.t
            r1.a()
            r0.B = r6
            r0.A = r6
            kg2 r1 = r0.w
            r1.a()
            r0.g()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lz1.f():void");
    }

    public final void g() {
        int i = ((rg2) this.n.o()).n.p;
        int i2 = this.s.e;
        if (i2 != i) {
            ar1.a("Inconsistency between the count of nodes tracked by the state (" + i2 + ") and the children count on the SubcomposeLayout (" + i + "). Are you trying to use the state of the disposed SubcomposeLayout?");
        }
        int i3 = this.A;
        int i4 = this.B;
        if ((i - i3) - i4 < 0) {
            StringBuilder sbV = xw1.v("Incorrect state. Total children ", i, ". Reusable children ", i3, ". Precomposed children ");
            sbV.append(i4);
            ar1.a(sbV.toString());
        }
        int i5 = this.w.e;
        int i6 = this.B;
        if (i5 == i6) {
            return;
        }
        ar1.a("Incorrect state. Precomposed children " + i6 + ". Map size " + i5);
    }

    @Override // defpackage.ya0
    public final void h() {
        i(true);
    }

    public final void i(boolean z) {
        this.B = 0;
        this.w.a();
        List listO = this.n.o();
        int i = ((rg2) listO).n.p;
        if (this.A != i) {
            this.A = i;
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    xy1 xy1Var = (xy1) ((rg2) listO).get(i2);
                    dz1 dz1Var = (dz1) this.s.g(xy1Var);
                    if (dz1Var != null && ((Boolean) dz1Var.g.getValue()).booleanValue()) {
                        bz1 bz1Var = xy1Var.T;
                        cb2 cb2Var = bz1Var.p;
                        vy1 vy1Var = vy1.p;
                        cb2Var.y = vy1Var;
                        q82 q82Var = bz1Var.q;
                        if (q82Var != null) {
                            q82Var.w = vy1Var;
                        }
                        l(dz1Var, z);
                        dz1Var.a = mt3.a;
                    }
                } catch (Throwable th) {
                    k75.L(po3VarX, po3VarE, pe1VarE);
                    throw th;
                }
            }
            k75.L(po3VarX, po3VarE, pe1VarE);
            this.t.a();
        }
        g();
    }

    public final void j(int i, int i2) {
        xy1 xy1Var = this.n;
        xy1Var.D = true;
        xy1Var.L(i, i2, 1);
        xy1Var.D = false;
    }

    public final void k(Object obj, df1 df1Var, boolean z) {
        xy1 xy1Var = this.n;
        if (xy1Var.H()) {
            g();
            if (this.t.c(obj)) {
                return;
            }
            this.y.k(obj);
            kg2 kg2Var = this.w;
            Object objG = kg2Var.g(obj);
            if (objG == null) {
                objG = n(obj);
                if (objG != null) {
                    j(((rg2) xy1Var.o()).n.j(objG), ((rg2) xy1Var.o()).n.p);
                    this.B++;
                } else {
                    int i = ((rg2) xy1Var.o()).n.p;
                    xy1 xy1Var2 = new xy1(2);
                    xy1Var.D = true;
                    xy1Var.B(i, xy1Var2);
                    xy1Var.D = false;
                    this.B++;
                    objG = xy1Var2;
                }
                kg2Var.m(obj, objG);
            }
            m((xy1) objG, obj, z, df1Var);
        }
    }

    public final void l(dz1 dz1Var, boolean z) {
        ec0 ec0Var;
        if (z || !dz1Var.h) {
            dz1Var.g = ca.A(Boolean.FALSE);
        } else {
            dz1Var.g.setValue(Boolean.FALSE);
        }
        if (dz1Var.f != null) {
            c(dz1Var);
            return;
        }
        if (z) {
            ec0 ec0Var2 = dz1Var.c;
            if (ec0Var2 != null) {
                ec0Var2.l();
                return;
            }
            return;
        }
        ir2 outOfFrameExecutor = ((q9) az1.a(this.n)).getOutOfFrameExecutor();
        if (outOfFrameExecutor != null) {
            ((q9) outOfFrameExecutor).H(new je(7, dz1Var));
        } else {
            if (dz1Var.h || (ec0Var = dz1Var.c) == null) {
                return;
            }
            ec0Var.l();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void m(xy1 xy1Var, Object obj, boolean z, df1 df1Var) {
        boolean z2;
        ec0 ec0Var;
        kg2 kg2Var = this.s;
        Object objG = kg2Var.g(xy1Var);
        Object obj2 = objG;
        if (objG == null) {
            ka0 ka0Var = pa0.a;
            dz1 dz1Var = new dz1();
            dz1Var.a = obj;
            dz1Var.b = ka0Var;
            dz1Var.c = null;
            dz1Var.g = ca.A(Boolean.TRUE);
            kg2Var.m(xy1Var, dz1Var);
            obj2 = dz1Var;
        }
        dz1 dz1Var2 = (dz1) obj2;
        boolean z3 = dz1Var2.b != df1Var;
        if (dz1Var2.f != null) {
            if (z3) {
                c(dz1Var2);
            } else if (z) {
                return;
            } else {
                b(dz1Var2, true);
            }
        }
        ec0 ec0Var2 = dz1Var2.c;
        if (ec0Var2 != null) {
            synchronized (ec0Var2.q) {
                z2 = ec0Var2.A.e > 0;
            }
        } else {
            z2 = true;
        }
        if (z3 || z2 || dz1Var2.d) {
            dz1Var2.b = df1Var;
            if (dz1Var2.f != null) {
                ar1.a("new subcompose call while paused composition is still active");
            }
            po3 po3VarX = k75.x();
            pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
            po3 po3VarE = k75.E(po3VarX);
            try {
                xy1 xy1Var2 = this.n;
                xy1Var2.D = true;
                ec0 ec0Var3 = dz1Var2.c;
                zb0 zb0Var = this.o;
                if (zb0Var == null) {
                    ar1.c("parent composition reference not set");
                    throw new v00(6);
                }
                if (ec0Var3 == null || ec0Var3.v()) {
                    if (z) {
                        ViewGroup.LayoutParams layoutParams = ph4.a;
                        ec0Var = new ec0(zb0Var, new g64(xy1Var));
                    } else {
                        ViewGroup.LayoutParams layoutParams2 = ph4.a;
                        ec0Var = new ec0(zb0Var, new g64(xy1Var));
                    }
                    ec0Var3 = ec0Var;
                }
                dz1Var2.c = ec0Var3;
                df1 ka0Var2 = dz1Var2.b;
                if (((q9) az1.a(this.n)).getOutOfFrameExecutor() != null) {
                    dz1Var2.h = false;
                } else {
                    dz1Var2.h = true;
                    ka0Var2 = new ka0(1524156494, true, new ga(2, dz1Var2, ka0Var2));
                }
                if (z) {
                    if (dz1Var2.e) {
                        ec0Var3.i();
                        ec0Var3.q();
                        dz1Var2.f = ec0Var3.k(true, ka0Var2);
                    } else {
                        dz1Var2.f = ec0Var3.k(ec0Var3.i(), ka0Var2);
                    }
                } else if (dz1Var2.e) {
                    ec0Var3.i();
                    ec0Var3.q();
                    ag1 ag1Var = ec0Var3.I;
                    ag1Var.z = 0;
                    ag1Var.y = true;
                    ec0Var3.n.a(ec0Var3, ka0Var2);
                    if (ag1Var.F || ag1Var.z != 0) {
                        ix2.a("Cannot disable reuse from root if it was caused by other groups");
                    }
                    ag1Var.z = -1;
                    ag1Var.y = false;
                } else {
                    ec0Var3.B(ka0Var2);
                }
                dz1Var2.e = false;
                xy1Var2.D = false;
                k75.L(po3VarX, po3VarE, pe1VarE);
                dz1Var2.d = false;
            } catch (Throwable th) {
                k75.L(po3VarX, po3VarE, pe1VarE);
                throw th;
            }
        }
    }

    public final xy1 n(Object obj) {
        kg2 kg2Var;
        int i;
        if (this.A == 0) {
            return null;
        }
        rg2 rg2Var = (rg2) this.n.o();
        int i2 = rg2Var.n.p - this.B;
        int i3 = i2 - this.A;
        int i4 = i2 - 1;
        int i5 = i4;
        while (true) {
            kg2Var = this.s;
            if (i5 < i3) {
                i = -1;
                break;
            }
            Object objG = kg2Var.g((xy1) rg2Var.get(i5));
            objG.getClass();
            if (((dz1) objG).a.equals(obj)) {
                i = i5;
                break;
            }
            i5--;
        }
        if (i == -1) {
            while (i4 >= i3) {
                Object objG2 = kg2Var.g((xy1) rg2Var.get(i4));
                objG2.getClass();
                dz1 dz1Var = (dz1) objG2;
                Object obj2 = dz1Var.a;
                if (obj2 == mt3.a || this.p.l(obj, obj2)) {
                    dz1Var.a = obj;
                    i5 = i4;
                    i = i5;
                    break;
                }
                i4--;
            }
            i5 = i4;
        }
        if (i == -1) {
            return null;
        }
        if (i5 != i3) {
            j(i5, i3);
        }
        this.A--;
        xy1 xy1Var = (xy1) rg2Var.get(i3);
        Object objG3 = kg2Var.g(xy1Var);
        objG3.getClass();
        dz1 dz1Var2 = (dz1) objG3;
        dz1Var2.g = ca.A(Boolean.TRUE);
        dz1Var2.e = true;
        dz1Var2.d = true;
        return xy1Var;
    }
}
