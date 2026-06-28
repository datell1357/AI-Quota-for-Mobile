package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dc extends md2 implements fc0, jx0, ey1 {
    public final xs1 B;
    public final boolean C;
    public final float D;
    public final ur0 E;
    public final tr0 F;
    public float G;
    public boolean I;
    public ws1 M;
    public b21 P;
    public y83 Q;
    public z83 R;
    public long H = 0;
    public final dg2 J = new dg2();
    public final pd K = dm0.a(0.0f);
    public final ArrayList L = new ArrayList();
    public final pd N = dm0.a(0.0f);
    public final ws2 O = ca.A(Boolean.FALSE);

    public dc(xs1 xs1Var, boolean z, float f, ur0 ur0Var, tr0 tr0Var) {
        this.B = xs1Var;
        this.C = z;
        this.D = f;
        this.E = ur0Var;
        this.F = tr0Var;
    }

    public final void G0(jy2 jy2Var) {
        z83 z83Var;
        if (!(jy2Var instanceof hy2)) {
            if (jy2Var instanceof iy2) {
                z83 z83Var2 = this.R;
                if (z83Var2 != null) {
                    z83Var2.d();
                    return;
                }
                return;
            }
            if (!(jy2Var instanceof gy2) || (z83Var = this.R) == null) {
                return;
            }
            z83Var.d();
            return;
        }
        hy2 hy2Var = (hy2) jy2Var;
        long j = this.H;
        float f = this.G;
        y83 y83Var = this.Q;
        int i = 0;
        if (y83Var == null) {
            Object obj = (View) n44.g0(this, ea.f);
            while (!(obj instanceof ViewGroup)) {
                ViewParent parent = ((View) obj).getParent();
                if (!(parent instanceof View)) {
                    p61.h(obj, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?", "Couldn't find a valid parent for ");
                    return;
                }
                obj = parent;
            }
            ViewGroup viewGroup = (ViewGroup) obj;
            int childCount = viewGroup.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    y83 y83Var2 = new y83(viewGroup.getContext());
                    viewGroup.addView(y83Var2);
                    y83Var = y83Var2;
                    break;
                } else {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt instanceof y83) {
                        y83Var = (y83) childAt;
                        break;
                    }
                    i2++;
                }
            }
            this.Q = y83Var;
        }
        ArrayList arrayList = y83Var.o;
        xh1 xh1Var = y83Var.q;
        LinkedHashMap linkedHashMap = (LinkedHashMap) xh1Var.n;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) xh1Var.n;
        LinkedHashMap linkedHashMap3 = (LinkedHashMap) xh1Var.o;
        z83 z83Var3 = (z83) linkedHashMap.get(this);
        if (z83Var3 == null) {
            ArrayList arrayList2 = y83Var.p;
            arrayList2.getClass();
            z83Var3 = (z83) (arrayList2.isEmpty() ? null : arrayList2.remove(0));
            if (z83Var3 == null) {
                if (y83Var.r > tv4.v(arrayList)) {
                    z83Var3 = new z83(y83Var.getContext());
                    y83Var.addView(z83Var3);
                    arrayList.add(z83Var3);
                } else {
                    z83Var3 = (z83) arrayList.get(y83Var.r);
                    dc dcVar = (dc) linkedHashMap3.get(z83Var3);
                    if (dcVar != null) {
                        dcVar.R = null;
                        kt4.Q(dcVar);
                        z83 z83Var4 = (z83) linkedHashMap2.get(dcVar);
                        if (z83Var4 != null) {
                        }
                        linkedHashMap2.remove(dcVar);
                        z83Var3.c();
                    }
                }
                int i3 = y83Var.r;
                if (i3 < y83Var.n - 1) {
                    y83Var.r = i3 + 1;
                } else {
                    y83Var.r = 0;
                }
            }
            linkedHashMap2.put(this, z83Var3);
            linkedHashMap3.put(z83Var3, this);
        }
        z83 z83Var5 = z83Var3;
        z83Var5.b(hy2Var, this.C, j, is0.V(f), this.E.a(), ((m93) this.F.a()).a instanceof l93 ? 0.1f : 0.0f, new cc(i, this));
        this.R = z83Var5;
        kt4.Q(this);
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        zy1Var.a();
        x20 x20Var = zy1Var.n;
        v20 v20VarU = x20Var.o.u();
        z83 z83Var = this.R;
        if (z83Var != null) {
            z83Var.e(this.H, is0.V(this.G), this.E.a(), ((m93) this.F.a()).a instanceof l93 ? 0.1f : 0.0f);
            z83Var.draw(z8.a(v20VarU));
        }
        float fFloatValue = ((Number) this.K.d()).floatValue();
        if (fFloatValue > 0.0f) {
            long jB = t70.b(fFloatValue, this.E.a());
            if (this.C) {
                float fIntBitsToFloat = Float.intBitsToFloat((int) (x20Var.d() >> 32));
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (x20Var.d() & 4294967295L));
                eh ehVar = x20Var.o;
                long jZ = ehVar.z();
                ehVar.u().j();
                try {
                    ((eh) ((dh1) ehVar.o).n).u().e(0.0f, 0.0f, fIntBitsToFloat, fIntBitsToFloat2, 1);
                    kx0.f0(zy1Var, jB, this.G);
                } finally {
                    ehVar.u().h();
                    ehVar.K(jZ);
                }
            } else {
                kx0.f0(zy1Var, jB, this.G);
            }
        }
        if (((Number) this.N.d()).floatValue() > 0.0f) {
            b21 b21Var = this.P;
            if (b21Var == null) {
                b21Var = new b21(25);
            }
            this.P = b21Var;
            this.F.a();
        }
    }

    @Override // defpackage.ey1, defpackage.jb2
    public final void c(long j) {
        float fV;
        this.I = true;
        as0 as0Var = w80.R(this).L;
        this.H = se0.H(j);
        float f = this.D;
        if (Float.isNaN(f)) {
            long j2 = this.H;
            float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            fV = go2.c((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & 4294967295L)))) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32)) / 2.0f;
            if (this.C) {
                fV += as0Var.v(10.0f);
            }
        } else {
            fV = as0Var.v(f);
        }
        this.G = fV;
        dg2 dg2Var = this.J;
        Object[] objArr = dg2Var.a;
        int i = dg2Var.b;
        for (int i2 = 0; i2 < i; i2++) {
            G0((jy2) objArr[i2]);
        }
        dg2Var.d();
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.md2
    public final void y0() {
        ca.y(u0(), null, null, new d93(this, null), 3);
    }

    @Override // defpackage.md2
    public final void z0() {
        y83 y83Var = this.Q;
        if (y83Var != null) {
            this.R = null;
            kt4.Q(this);
            xh1 xh1Var = y83Var.q;
            z83 z83Var = (z83) ((LinkedHashMap) xh1Var.n).get(this);
            if (z83Var != null) {
                z83Var.c();
                LinkedHashMap linkedHashMap = (LinkedHashMap) xh1Var.n;
                z83 z83Var2 = (z83) linkedHashMap.get(this);
                if (z83Var2 != null) {
                }
                linkedHashMap.remove(this);
                y83Var.p.add(z83Var);
            }
        }
    }
}
