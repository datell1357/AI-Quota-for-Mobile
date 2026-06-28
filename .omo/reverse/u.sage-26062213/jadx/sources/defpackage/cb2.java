package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cb2 extends dv2 implements ya2, d8, de2 {
    public pe1 B;
    public float C;
    public Object E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean N;
    public float R;
    public boolean S;
    public pe1 T;
    public float V;
    public boolean X;
    public final bz1 s;
    public boolean t;
    public boolean w;
    public boolean x;
    public boolean z;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f45u = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public int v = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public vy1 y = vy1.p;
    public long A = 0;
    public boolean D = true;
    public final yy1 K = new yy1(this, 0);
    public final ug2 L = new ug2(new cb2[16]);
    public boolean M = true;
    public long O = nf0.b(0, 0, 15);
    public final bb2 P = new bb2(this, 1);
    public final bb2 Q = new bb2(this, 0);
    public long U = 0;
    public final bb2 W = new bb2(this, 2);

    public cb2(bz1 bz1Var) {
        this.s = bz1Var;
    }

    @Override // defpackage.ya2
    public final int K(int i) {
        bz1 bz1Var = this.s;
        if (!ix.C(bz1Var.a)) {
            m0();
            return bz1Var.a().K(i);
        }
        q82 q82Var = bz1Var.q;
        q82Var.getClass();
        return q82Var.K(i);
    }

    @Override // defpackage.d8
    public final int O() {
        return this.v;
    }

    @Override // defpackage.d8
    public final void Q() {
        xy1.X(this.s.a, false, 7);
    }

    @Override // defpackage.ya2
    public final int R(int i) {
        bz1 bz1Var = this.s;
        if (!ix.C(bz1Var.a)) {
            m0();
            return bz1Var.a().R(i);
        }
        q82 q82Var = bz1Var.q;
        q82Var.getClass();
        return q82Var.R(i);
    }

    @Override // defpackage.ya2
    public final int T(int i) {
        bz1 bz1Var = this.s;
        if (!ix.C(bz1Var.a)) {
            m0();
            return bz1Var.a().T(i);
        }
        q82 q82Var = bz1Var.q;
        q82Var.getClass();
        return q82Var.T(i);
    }

    @Override // defpackage.dv2
    public final int V(y7 y7Var) {
        bz1 bz1Var = this.s;
        xy1 xy1VarU = bz1Var.a.u();
        ty1 ty1Var = xy1VarU != null ? xy1VarU.T.d : null;
        ty1 ty1Var2 = ty1.n;
        yy1 yy1Var = this.K;
        if (ty1Var == ty1Var2) {
            yy1Var.c = true;
        } else {
            xy1 xy1VarU2 = bz1Var.a.u();
            if ((xy1VarU2 != null ? xy1VarU2.T.d : null) == ty1.p) {
                yy1Var.d = true;
            }
        }
        this.z = true;
        int iV = bz1Var.a().V(y7Var);
        this.z = false;
        return iV;
    }

    @Override // defpackage.dv2
    public final int Y() {
        return this.s.a().Y();
    }

    @Override // defpackage.dv2
    public final int a0() {
        return this.s.a().a0();
    }

    @Override // defpackage.d8
    public final yy1 c() {
        return this.K;
    }

    @Override // defpackage.dv2
    public final void d0(long j, float f, pe1 pe1Var) {
        cv2 placementScope;
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        xy1 xy1Var2 = bz1Var.a;
        try {
            this.G = true;
            if (!js1.a(j, this.A) || pe1Var != this.B || this.X) {
                if (bz1Var.k || bz1Var.j || this.X) {
                    this.I = true;
                    this.X = false;
                }
            }
            q82 q82Var = bz1Var.q;
            if (q82Var != null) {
                bz1 bz1Var2 = q82Var.s;
                if (q82Var.D == o82.p && !ix.C(bz1Var2.a)) {
                    bz1Var2.c = true;
                }
            }
            q82 q82Var2 = bz1Var.q;
            if (q82Var2 != null && q82Var2.j0()) {
                mm2 mm2Var = bz1Var.a().H;
                if (mm2Var == null || (placementScope = mm2Var.C) == null) {
                    placementScope = ((q9) az1.a(xy1Var2)).getPlacementScope();
                }
                q82 q82Var3 = bz1Var.q;
                q82Var3.getClass();
                xy1 xy1VarU = xy1Var2.u();
                if (xy1VarU != null) {
                    xy1VarU.T.h = 0;
                }
                q82Var3.v = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                cv2.h(placementScope, q82Var3, (int) (j >> 32), (int) (4294967295L & j));
            }
            q82 q82Var4 = bz1Var.q;
            if (q82Var4 != null && !q82Var4.y) {
                ar1.b("Error: Placement happened before lookahead.");
            }
            o0(j, f, pe1Var);
        } catch (Throwable th) {
            xy1Var.a0(th);
            throw null;
        }
    }

    @Override // defpackage.ya2
    public final dv2 e(long j) {
        vy1 vy1Var;
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        xy1 xy1Var2 = bz1Var.a;
        vy1 vy1Var2 = xy1Var.P;
        vy1 vy1Var3 = vy1.p;
        if (vy1Var2 == vy1Var3) {
            xy1Var.c();
        }
        if (ix.C(xy1Var2)) {
            q82 q82Var = bz1Var.q;
            q82Var.getClass();
            q82Var.w = vy1Var3;
            q82Var.e(j);
        }
        xy1 xy1VarU = xy1Var2.u();
        if (xy1VarU != null) {
            bz1 bz1Var2 = xy1VarU.T;
            if (this.y != vy1Var3 && !xy1Var2.R) {
                ar1.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int iOrdinal = bz1Var2.d.ordinal();
            if (iOrdinal == 0) {
                vy1Var = vy1.n;
            } else {
                if (iOrdinal != 2) {
                    p61.w(bz1Var2.d, "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                    return null;
                }
                vy1Var = vy1.o;
            }
            this.y = vy1Var;
        } else {
            this.y = vy1Var3;
        }
        q0(j);
        return this;
    }

    @Override // defpackage.ya2
    public final int g(int i) {
        bz1 bz1Var = this.s;
        if (!ix.C(bz1Var.a)) {
            m0();
            return bz1Var.a().g(i);
        }
        q82 q82Var = bz1Var.q;
        q82Var.getClass();
        return q82Var.g(i);
    }

    @Override // defpackage.dv2, defpackage.ya2
    public final Object i() {
        return this.E;
    }

    public final List j0() {
        bz1 bz1Var = this.s;
        bz1Var.a.h0();
        boolean z = this.M;
        ug2 ug2Var = this.L;
        if (!z) {
            return ug2Var.g();
        }
        xy1 xy1Var = bz1Var.a;
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            if (ug2Var.p <= i2) {
                ug2Var.c(xy1Var2.T.p);
            } else {
                cb2 cb2Var = xy1Var2.T.p;
                Object[] objArr2 = ug2Var.n;
                Object obj = objArr2[i2];
                objArr2[i2] = cb2Var;
            }
        }
        ug2Var.m(((rg2) xy1Var.n()).n.p, ug2Var.p);
        this.M = false;
        return ug2Var.g();
    }

    public final void k0() {
        boolean z = this.F;
        this.F = true;
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        bo boVar = xy1Var.S;
        if (!z) {
            ((gr1) boVar.d).Z0();
            ((q9) az1.a(xy1Var)).getRectManager().h(bz1Var.a);
            if (xy1Var.q()) {
                xy1.X(xy1Var, true, 6);
            } else if (xy1Var.T.e) {
                xy1.V(xy1Var, true, 6);
            }
        }
        mm2 mm2Var = ((gr1) boVar.d).G;
        for (mm2 mm2Var2 = (mm2) boVar.e; !nt1.g(mm2Var2, mm2Var) && mm2Var2 != null; mm2Var2 = mm2Var2.G) {
            if (mm2Var2.b0) {
                mm2Var2.V0();
            }
        }
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            xy1 xy1Var2 = (xy1) objArr[i2];
            if (xy1Var2.v() != Integer.MAX_VALUE) {
                xy1Var2.T.p.k0();
                xy1.Y(xy1Var2);
            }
        }
    }

    @Override // defpackage.d8
    public final void l(c8 c8Var) {
        ug2 ug2VarZ = this.s.a.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            c8Var.k(((xy1) objArr[i2]).T.p);
        }
    }

    public final void l0() {
        if (this.F) {
            this.F = false;
            bz1 bz1Var = this.s;
            xy1 xy1Var = bz1Var.a;
            xy1 xy1Var2 = bz1Var.a;
            ((q9) az1.a(xy1Var)).getRectManager().i(xy1Var2);
            bo boVar = xy1Var2.S;
            mm2 mm2Var = ((gr1) boVar.d).G;
            for (mm2 mm2Var2 = (mm2) boVar.e; !nt1.g(mm2Var2, mm2Var) && mm2Var2 != null; mm2Var2 = mm2Var2.G) {
                mm2Var2.b1();
                mm2Var2.g1();
            }
            ug2 ug2VarZ = xy1Var2.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                ((xy1) objArr[i2]).T.p.l0();
            }
        }
    }

    @Override // defpackage.de2
    public final void m(boolean z) {
        bz1 bz1Var = this.s;
        if (z != bz1Var.a().y) {
            bz1Var.a().y = z;
            this.X = true;
        }
    }

    public final void m0() {
        bz1 bz1Var = this.s;
        xy1.X(bz1Var.a, false, 7);
        xy1 xy1Var = bz1Var.a;
        xy1 xy1VarU = xy1Var.u();
        if (xy1VarU == null || xy1Var.P != vy1.p) {
            return;
        }
        int iOrdinal = xy1VarU.T.d.ordinal();
        xy1Var.P = iOrdinal != 0 ? iOrdinal != 2 ? xy1VarU.P : vy1.o : vy1.n;
    }

    @Override // defpackage.d8
    public final gr1 n() {
        return (gr1) this.s.a.S.d;
    }

    public final void n0() {
        this.S = true;
        bz1 bz1Var = this.s;
        xy1 xy1VarU = bz1Var.a.u();
        float f = n().R;
        xy1 xy1Var = bz1Var.a;
        bo boVar = xy1Var.S;
        mm2 mm2Var = (mm2) boVar.e;
        gr1 gr1Var = (gr1) boVar.d;
        while (mm2Var != gr1Var) {
            mm2Var.getClass();
            qy1 qy1Var = (qy1) mm2Var;
            f += qy1Var.R;
            mm2Var = qy1Var.G;
        }
        if (f != this.R) {
            this.R = f;
            if (xy1VarU != null) {
                xy1VarU.O();
            }
            if (xy1VarU != null) {
                xy1VarU.C();
            }
        }
        if (!n().B) {
            boolean z = this.F;
            if (!z || this.K.d()) {
                k0();
            }
            if (z) {
                ((gr1) xy1Var.S.d).Z0();
            } else {
                if (xy1VarU != null) {
                    xy1VarU.C();
                }
                if (this.t && xy1VarU != null) {
                    xy1VarU.W(false);
                }
            }
        }
        if (xy1VarU != null) {
            bz1 bz1Var2 = xy1VarU.T;
            if (!this.t && bz1Var2.d == ty1.p) {
                if (this.v != Integer.MAX_VALUE) {
                    ar1.b("Place was called on a node which was placed already");
                }
                int i = bz1Var2.i;
                this.v = i;
                bz1Var2.i = i + 1;
            }
        } else {
            this.v = 0;
        }
        x();
    }

    public final void o0(long j, float f, pe1 pe1Var) {
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        xy1 xy1Var2 = bz1Var.a;
        if (xy1Var.d0) {
            ar1.a("place is called on a deactivated node");
        }
        bz1Var.d = ty1.p;
        this.A = j;
        this.C = f;
        this.B = pe1Var;
        this.S = false;
        sr2 sr2VarA = az1.a(xy1Var2);
        if (this.I || !this.F) {
            this.K.g = false;
            bz1Var.f(false);
            this.T = pe1Var;
            this.U = j;
            this.V = f;
            ur2 snapshotObserver = ((q9) sr2VarA).getSnapshotObserver();
            snapshotObserver.a.c(xy1Var2, snapshotObserver.f, this.W);
        } else {
            mm2 mm2VarA = bz1Var.a();
            mm2VarA.e1(js1.c(j, mm2VarA.r), f, pe1Var);
            n0();
        }
        bz1Var.d = ty1.r;
        if (bz1Var.a().B && (bz1Var.k || bz1Var.j)) {
            requestLayout();
        }
        this.x = true;
    }

    public final boolean q0(long j) {
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        xy1 xy1Var2 = bz1Var.a;
        try {
            if (xy1Var.d0) {
                ar1.a("measure is called on a deactivated node");
            }
            sr2 sr2VarA = az1.a(xy1Var2);
            xy1 xy1VarU = xy1Var2.u();
            boolean z = true;
            xy1Var2.R = xy1Var2.R || (xy1VarU != null && xy1VarU.R);
            if (!xy1Var2.q() && mf0.b(this.q, j)) {
                ((q9) sr2VarA).g(xy1Var2, false);
                xy1Var2.Z();
                return false;
            }
            this.K.f = false;
            ug2 ug2VarZ = xy1Var2.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                ((xy1) objArr[i2]).T.p.K.c = false;
            }
            this.w = true;
            long j2 = bz1Var.a().p;
            h0(j);
            ty1 ty1Var = bz1Var.d;
            ty1 ty1Var2 = ty1.r;
            if (ty1Var != ty1Var2) {
                ar1.b("layout state is not idle before measure starts");
            }
            this.O = j;
            ty1 ty1Var3 = ty1.n;
            bz1Var.d = ty1Var3;
            this.H = false;
            ur2 snapshotObserver = ((q9) az1.a(xy1Var2)).getSnapshotObserver();
            snapshotObserver.a.c(xy1Var2, snapshotObserver.c, this.P);
            if (bz1Var.d == ty1Var3) {
                this.I = true;
                this.J = true;
                bz1Var.d = ty1Var2;
            }
            if (rs1.a(bz1Var.a().p, j2) && bz1Var.a().n == this.n && bz1Var.a().o == this.o) {
                z = false;
            }
            g0((((long) bz1Var.a().o) & 4294967295L) | (((long) bz1Var.a().n) << 32));
            return z;
        } catch (Throwable th) {
            xy1Var.a0(th);
            throw null;
        }
    }

    @Override // defpackage.d8
    public final d8 r() {
        bz1 bz1Var;
        xy1 xy1VarU = this.s.a.u();
        if (xy1VarU == null || (bz1Var = xy1VarU.T) == null) {
            return null;
        }
        return bz1Var.p;
    }

    @Override // defpackage.d8
    public final void requestLayout() {
        this.s.a.W(false);
    }

    public final void u0() {
        bz1 bz1Var = this.s;
        xy1 xy1Var = bz1Var.a;
        xy1 xy1Var2 = bz1Var.a;
        if (!xy1Var.I() || bz1Var.l <= 0) {
            return;
        }
        bz1 bz1Var2 = xy1Var2.T;
        if ((bz1Var2.j || bz1Var2.k) && !bz1Var2.p.I) {
            xy1Var2.W(false);
        }
        ug2 ug2VarZ = xy1Var2.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            ((xy1) objArr[i2]).T.p.u0();
        }
    }

    @Override // defpackage.d8
    public final void x() {
        this.N = true;
        yy1 yy1Var = this.K;
        yy1Var.h();
        boolean z = this.I;
        bz1 bz1Var = this.s;
        if (z) {
            ug2 ug2VarZ = bz1Var.a.z();
            Object[] objArr = ug2VarZ.n;
            int i = ug2VarZ.p;
            for (int i2 = 0; i2 < i; i2++) {
                xy1 xy1Var = (xy1) objArr[i2];
                if (xy1Var.q() && xy1Var.r() == vy1.n && xy1.Q(xy1Var)) {
                    xy1.X(bz1Var.a, false, 7);
                }
            }
        }
        if (this.J || (!this.z && !n().B && this.I)) {
            this.I = false;
            ty1 ty1Var = bz1Var.d;
            bz1Var.d = ty1.p;
            bz1Var.g(false);
            xy1 xy1Var2 = bz1Var.a;
            ur2 snapshotObserver = ((q9) az1.a(xy1Var2)).getSnapshotObserver();
            snapshotObserver.a.c(xy1Var2, snapshotObserver.e, this.Q);
            bz1Var.d = ty1Var;
            this.J = false;
        }
        if (yy1Var.d) {
            yy1Var.e = true;
        }
        if (yy1Var.b && yy1Var.e()) {
            yy1Var.g();
        }
        this.N = false;
    }
}
