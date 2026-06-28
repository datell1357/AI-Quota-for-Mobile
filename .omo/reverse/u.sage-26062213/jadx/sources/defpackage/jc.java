package defpackage;

import android.graphics.Paint;
import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jc extends TextPaint {
    public lb a;
    public yw3 b;
    public int c;
    public hl3 d;
    public t70 e;
    public zf5 f;
    public os0 g;
    public mn3 h;
    public tv4 i;

    public final lb a() {
        lb lbVar = this.a;
        if (lbVar != null) {
            return lbVar;
        }
        lb lbVar2 = new lb(this);
        this.a = lbVar2;
        return lbVar2;
    }

    public final void b(int i) {
        if (i == this.c) {
            return;
        }
        a().e(i);
        this.c = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.zf5 r4, long r5, float r7) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto Ld
            r3.g = r0
            r3.f = r0
            r3.h = r0
            r3.setShader(r0)
            return
        Ld:
            boolean r1 = r4 instanceof defpackage.sp3
            if (r1 == 0) goto L1d
            sp3 r4 = (defpackage.sp3) r4
            long r4 = r4.h
            long r4 = defpackage.n44.y0(r7, r4)
            r3.d(r4)
            return
        L1d:
            boolean r1 = r4 instanceof defpackage.qy
            if (r1 == 0) goto L6d
            zf5 r1 = r3.f
            boolean r1 = defpackage.nt1.g(r1, r4)
            if (r1 == 0) goto L37
            mn3 r1 = r3.h
            if (r1 != 0) goto L2f
            r1 = 0
            goto L35
        L2f:
            long r1 = r1.a
            boolean r1 = defpackage.mn3.a(r1, r5)
        L35:
            if (r1 != 0) goto L54
        L37:
            r1 = 9205357640488583168(0x7fc000007fc00000, double:2.247117487993712E307)
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 == 0) goto L54
            r3.f = r4
            mn3 r1 = new mn3
            r1.<init>(r5)
            r3.h = r1
            cc r1 = new cc
            r1.<init>(r4, r5)
            os0 r4 = defpackage.ca.m(r1)
            r3.g = r4
        L54:
            lb r4 = r3.a()
            os0 r5 = r3.g
            if (r5 == 0) goto L63
            java.lang.Object r5 = r5.getValue()
            android.graphics.Shader r5 = (android.graphics.Shader) r5
            goto L64
        L63:
            r5 = r0
        L64:
            r4.h(r5)
            r3.e = r0
            defpackage.ht4.E(r3, r7)
            return
        L6d:
            defpackage.p61.x()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jc.c(zf5, long, float):void");
    }

    public final void d(long j) {
        t70 t70Var = this.e;
        if ((t70Var == null ? false : t70.c(t70Var.a, j)) || j == 16) {
            return;
        }
        this.e = new t70(j);
        setColor(c75.R(j));
        this.g = null;
        this.f = null;
        this.h = null;
        setShader(null);
    }

    public final void e(tv4 tv4Var) {
        if (tv4Var == null || nt1.g(this.i, tv4Var)) {
            return;
        }
        this.i = tv4Var;
        if (tv4Var.equals(t51.f)) {
            setStyle(Paint.Style.FILL);
            return;
        }
        if (!(tv4Var instanceof ht3)) {
            p61.x();
            return;
        }
        a().k(1);
        lb lbVarA = a();
        ht3 ht3Var = (ht3) tv4Var;
        ((Paint) lbVarA.o).setStrokeWidth(ht3Var.f);
        lb lbVarA2 = a();
        ((Paint) lbVarA2.o).setStrokeMiter(ht3Var.g);
        a().j(ht3Var.i);
        a().i(ht3Var.h);
        ((Paint) a().o).setPathEffect(null);
    }

    public final void f(hl3 hl3Var) {
        if (hl3Var == null || nt1.g(this.d, hl3Var)) {
            return;
        }
        this.d = hl3Var;
        if (hl3Var.equals(hl3.d)) {
            clearShadowLayer();
            return;
        }
        hl3 hl3Var2 = this.d;
        float f = hl3Var2.c;
        if (f == 0.0f) {
            f = Float.MIN_VALUE;
        }
        setShadowLayer(f, Float.intBitsToFloat((int) (hl3Var2.b >> 32)), Float.intBitsToFloat((int) (this.d.b & 4294967295L)), c75.R(this.d.a));
    }

    public final void g(yw3 yw3Var) {
        if (yw3Var == null || nt1.g(this.b, yw3Var)) {
            return;
        }
        this.b = yw3Var;
        int i = yw3Var.a;
        setUnderlineText((i | 1) == i);
        int i2 = this.b.a;
        setStrikeThruText((i2 | 2) == i2);
    }
}
