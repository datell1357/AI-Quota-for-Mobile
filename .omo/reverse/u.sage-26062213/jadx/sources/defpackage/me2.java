package defpackage;

import android.os.Build;
import android.view.ViewConfiguration;
import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class me2 extends wm2 {
    public final wu4 f;
    public final zy g;
    public ir3 h;

    public me2(dg3 dg3Var, wu4 wu4Var, ja0 ja0Var, as0 as0Var) {
        super(dg3Var, ja0Var, as0Var);
        this.f = wu4Var;
        this.g = ix.c(Api.BaseClientBuilder.API_PRIORITY_OTHER, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(defpackage.me2 r19, defpackage.dg3 r20, defpackage.ie2 r21, float r22, float r23, defpackage.fh0 r24) {
        /*
            Method dump skipped, instruction units count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.me2.c(me2, dg3, ie2, float, float, fh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(defpackage.me2 r11, defpackage.w33 r12, defpackage.t33 r13, defpackage.dg3 r14, defpackage.w33 r15, long r16, defpackage.fh0 r18) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.me2.d(me2, w33, t33, dg3, w33, long, fh0):java.lang.Object");
    }

    public static ie2 g(zy zyVar) {
        ie2 ie2Var = null;
        bi3 bi3VarY = se0.y(new tb1(new he2(zyVar, 0), null));
        while (bi3VarY.hasNext()) {
            ie2 ie2VarA = (ie2) bi3VarY.next();
            if (ie2Var != null) {
                ie2VarA = ie2Var.a(ie2VarA);
            }
            ie2Var = ie2VarA;
        }
        return ie2Var;
    }

    public final float e(bg3 bg3Var, float f) {
        dg3 dg3Var = this.a;
        long jI = dg3Var.i(dg3Var.e(f));
        dg3 dg3Var2 = bg3Var.a;
        return dg3Var.h(dg3Var.f(dg3Var2.d(dg3Var2.k, jI, 1)));
    }

    public final boolean f(vv2 vv2Var) {
        long j;
        as0 as0Var = this.c;
        ViewConfiguration viewConfiguration = (ViewConfiguration) this.f.o;
        int i = Build.VERSION.SDK_INT;
        float f = -(i > 26 ? sf.h(viewConfiguration) : as0Var.v(64.0f));
        float f2 = -(i > 26 ? sf.e(viewConfiguration) : as0Var.v(64.0f));
        List list = vv2Var.a;
        go2 go2Var = new go2(0L);
        int size = list.size();
        boolean zI = false;
        int i2 = 0;
        while (true) {
            j = go2Var.a;
            if (i2 >= size) {
                break;
            }
            go2Var = new go2(go2.e(j, ((zv2) list.get(i2)).j));
            i2++;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32)) * f2)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L)) * f)) & 4294967295L);
        dg3 dg3Var = this.a;
        float fJ = dg3Var.j(dg3Var.f(jFloatToRawIntBits));
        if (fJ != 0.0f) {
            xf3 xf3Var = dg3Var.a;
            zI = fJ > 0.0f ? xf3Var.i() : xf3Var.c();
        }
        if (zI) {
            return !(this.g.n(new ie2(jFloatToRawIntBits, ((zv2) o70.h0(vv2Var.a)).b, false)) instanceof y30);
        }
        return this.d;
    }
}
