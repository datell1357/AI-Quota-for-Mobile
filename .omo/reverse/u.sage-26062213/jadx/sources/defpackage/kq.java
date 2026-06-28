package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kq extends md2 implements oy1, jx0, eh3, cw2, pd2, xs2, ey1, fh1, da1, tr2, iz, jr0 {
    public ld2 B;

    @Override // defpackage.cw2
    public final void F(vv2 vv2Var, wv2 wv2Var, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        qd1 qd1Var = ((fw2) ld2Var).e;
        fw2 fw2Var = (fw2) qd1Var.r;
        List list = vv2Var.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            zv2 zv2Var = (zv2) list.get(i);
            if (se0.d(zv2Var) || se0.f(zv2Var)) {
                z = false;
                break;
            }
        }
        z = true;
        if (!z) {
            z2 = false;
            break;
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (((zv2) list.get(i2)).c()) {
                z2 = false;
                break;
            }
        }
        z2 = true;
        if (fw2Var.d) {
            z3 = true;
        } else {
            int size3 = list.size();
            int i3 = 0;
            while (true) {
                if (i3 < size3) {
                    zv2 zv2Var2 = (zv2) list.get(i3);
                    if (se0.d(zv2Var2) || se0.f(zv2Var2)) {
                        break;
                    } else {
                        i3++;
                    }
                } else if (z2) {
                    break;
                } else {
                    z3 = false;
                }
            }
            z3 = true;
        }
        ew2 ew2Var = (ew2) qd1Var.p;
        ew2 ew2Var2 = ew2.p;
        wv2 wv2Var2 = wv2.p;
        if (ew2Var != ew2Var2) {
            if (wv2Var == wv2.n && z3) {
                qd1Var.q = vv2Var;
                qd1Var.l(vv2Var, !z || fw2Var.d);
            }
            if (wv2Var == wv2.o && z && vv2Var == ((vv2) qd1Var.q) && fw2Var.d) {
                int size4 = list.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    ((zv2) list.get(i4)).a();
                }
            }
            if (wv2Var == wv2Var2 && !z3 && vv2Var != ((vv2) qd1Var.q)) {
                qd1Var.l(vv2Var, true);
            }
        }
        if (wv2Var == wv2Var2) {
            int size5 = list.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size5) {
                    qd1Var.p = ew2.n;
                    ((fw2) qd1Var.r).d = false;
                    qd1Var.q = null;
                    break;
                } else if (!se0.f((zv2) list.get(i5))) {
                    break;
                } else {
                    i5++;
                }
            }
            if (vv2Var == ((vv2) qd1Var.q) && z) {
                int size6 = list.size();
                int i6 = 0;
                while (true) {
                    if (i6 >= size6) {
                        break;
                    }
                    if (!((zv2) list.get(i6)).c()) {
                        i6++;
                    } else if (!fw2Var.d) {
                        qd1Var.H(vv2Var);
                        return;
                    }
                }
                int size7 = list.size();
                for (int i7 = 0; i7 < size7; i7++) {
                    ((zv2) list.get(i7)).a();
                }
            }
        }
    }

    public final void G0(boolean z) {
        if (!this.A) {
            ar1.b("initializeModifier called on unattached node");
        }
        ld2 ld2Var = this.B;
        if ((this.p & 4) != 0 && !z) {
            w80.P(this, 2).V0();
        }
        if ((this.p & 2) != 0) {
            gw3 gw3Var = (gw3) w80.R(this).S.f;
            gw3Var.getClass();
            if (gw3Var.B) {
                mm2 mm2Var = this.f206u;
                mm2Var.getClass();
                ((qy1) mm2Var).n1(this);
                rr2 rr2Var = mm2Var.c0;
                if (rr2Var != null) {
                    ((ci1) rr2Var).c();
                }
            }
            if (!z) {
                w80.P(this, 2).V0();
                w80.R(this).E();
            }
        }
        if (ld2Var instanceof l12) {
            ((l12) ld2Var).b.l = w80.R(this);
        }
        int i = this.p;
        if ((i & 16) != 0 && (ld2Var instanceof fw2)) {
            ((fw2) ld2Var).e.o = this.f206u;
        }
        if ((i & 8) != 0) {
            ((q9) w80.S(this)).y();
        }
    }

    public final void H0(fa1 fa1Var) {
        ld2 ld2Var = this.B;
        ar1.b("onFocusEvent called on wrong node");
        ld2Var.getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        zy1Var.a();
    }

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        return ((pf0) ld2Var).f(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, nb2.n, ob2.n, 1), nf0.b(0, i, 7)).b();
    }

    @Override // defpackage.da1
    public final void Q(ba1 ba1Var) {
        ld2 ld2Var = this.B;
        ar1.b("applyFocusProperties called on wrong node");
        ld2Var.getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.cw2
    public final boolean V() {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        ((fw2) ld2Var).e.getClass();
        return true;
    }

    @Override // defpackage.jr0
    public final void a() {
        if (this.B instanceof fw2) {
            c0();
        }
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        bh3 bh3VarD = ((ch3) ld2Var).d();
        ph3Var.getClass();
        bh3 bh3Var = (bh3) ph3Var;
        kg2 kg2Var = bh3Var.n;
        if (bh3VarD.p) {
            bh3Var.p = true;
        }
        if (bh3VarD.q) {
            bh3Var.q = true;
        }
        kg2 kg2Var2 = bh3VarD.n;
        Object[] objArr = kg2Var2.b;
        Object[] objArr2 = kg2Var2.c;
        long[] jArr = kg2Var2.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj = objArr[i4];
                        Object obj2 = objArr2[i4];
                        oh3 oh3Var = (oh3) obj;
                        if (!kg2Var.b(oh3Var)) {
                            kg2Var.m(oh3Var, obj2);
                        } else if (obj2 instanceof o2) {
                            Object objG = kg2Var.g(oh3Var);
                            objG.getClass();
                            o2 o2Var = (o2) objG;
                            String str = o2Var.a;
                            if (str == null) {
                                str = ((o2) obj2).a;
                            }
                            ef1 ef1Var = o2Var.b;
                            if (ef1Var == null) {
                                ef1Var = ((o2) obj2).b;
                            }
                            kg2Var.m(oh3Var, new o2(str, ef1Var));
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    @Override // defpackage.iz
    public final as0 b() {
        return w80.R(this).L;
    }

    @Override // defpackage.cw2
    public final void c0() {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        qd1 qd1Var = ((fw2) ld2Var).e;
        ew2 ew2Var = (ew2) qd1Var.p;
        fw2 fw2Var = (fw2) qd1Var.r;
        if (ew2Var == ew2.o) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            motionEventObtain.setSource(0);
            ((wc) fw2Var.e()).k(motionEventObtain);
            motionEventObtain.recycle();
            qd1Var.p = ew2.n;
            fw2Var.d = false;
            qd1Var.q = null;
        }
    }

    @Override // defpackage.iz
    public final long d() {
        return se0.H(w80.P(this, 128).p);
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        return ((pf0) ld2Var).f(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, nb2.o, ob2.n, 1), nf0.b(0, i, 7)).b();
    }

    @Override // defpackage.iz
    public final hy1 getLayoutDirection() {
        return w80.R(this).M;
    }

    @Override // defpackage.pd2
    public final w13 h() {
        return w13.z;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        return ((pf0) ld2Var).f(gb2Var, ya2Var, j);
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        return ((pf0) ld2Var).f(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, nb2.o, ob2.o, 1), nf0.b(i, 0, 13)).a();
    }

    @Override // defpackage.xs2
    public final Object l0(Object obj) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        return (ce) ld2Var;
    }

    @Override // defpackage.jx0
    public final void m0() {
        kt4.Q(this);
    }

    @Override // defpackage.cw2
    public final void n0() {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        ((fw2) ld2Var).e.getClass();
    }

    @Override // defpackage.fh1
    public final void r(mm2 mm2Var) {
        this.B.getClass();
        throw new ClassCastException();
    }

    public final String toString() {
        return this.B.toString();
    }

    @Override // defpackage.tr2
    public final boolean w() {
        return this.A;
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        ld2 ld2Var = this.B;
        ld2Var.getClass();
        return ((pf0) ld2Var).f(new tt1(k82Var, k82Var.getLayoutDirection()), new kp0(ya2Var, nb2.n, ob2.o, 1), nf0.b(i, 0, 13)).a();
    }

    @Override // defpackage.md2
    public final void y0() {
        G0(true);
    }

    @Override // defpackage.md2
    public final void z0() {
        if (!this.A) {
            ar1.b("unInitializeModifier called on unattached node");
        }
        if ((this.p & 8) != 0) {
            ((q9) w80.S(this)).y();
        }
    }

    @Override // defpackage.ey1, defpackage.jb2
    public final void c(long j) {
    }

    @Override // defpackage.ey1
    public final void m(gy1 gy1Var) {
    }
}
