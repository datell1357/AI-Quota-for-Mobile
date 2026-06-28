package defpackage;

import android.graphics.Canvas;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nb {
    public final rb a;
    public final int b;
    public final long c;
    public final mx3 d;
    public final CharSequence e;
    public final List f;

    /* JADX WARN: Removed duplicated region for block: B:103:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public nb(defpackage.rb r21, int r22, int r23, long r24) {
        /*
            Method dump skipped, instruction units count: 848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nb.<init>(rb, int, int, long):void");
    }

    public final mx3 a(int i, int i2, TextUtils.TruncateAt truncateAt, int i3, int i4, int i5, int i6, int i7, CharSequence charSequence) {
        mv2 mv2Var;
        float fC = c();
        rb rbVar = this.a;
        jc jcVar = rbVar.g;
        int i8 = rbVar.l;
        my1 my1Var = rbVar.i;
        ay3 ay3Var = rbVar.b;
        ob obVar = pb.a;
        pv2 pv2Var = ay3Var.c;
        return new mx3(charSequence, fC, jcVar, i, truncateAt, i8, (pv2Var == null || (mv2Var = pv2Var.a) == null) ? false : mv2Var.a, i3, i5, i6, i7, i4, i2, my1Var);
    }

    public final float b() {
        return this.d.a();
    }

    public final float c() {
        return mf0.h(this.c);
    }

    public final void d(v20 v20Var) {
        Canvas canvasA = z8.a(v20Var);
        mx3 mx3Var = this.d;
        if (mx3Var.d) {
            canvasA.save();
            canvasA.clipRect(0.0f, 0.0f, c(), b());
        }
        int i = mx3Var.g;
        if (canvasA.getClipBounds(mx3Var.o)) {
            if (i != 0) {
                canvasA.translate(0.0f, i);
            }
            ThreadLocal threadLocal = px3.a;
            Object xw3Var = threadLocal.get();
            if (xw3Var == null) {
                xw3Var = new xw3();
                threadLocal.set(xw3Var);
            }
            xw3 xw3Var2 = (xw3) xw3Var;
            xw3Var2.a = canvasA;
            try {
                mx3Var.e.draw(xw3Var2);
                if (i != 0) {
                    canvasA.translate(0.0f, (-1.0f) * i);
                }
            } finally {
                xw3Var2.a = null;
            }
        }
        if (mx3Var.d) {
            canvasA.restore();
        }
    }
}
