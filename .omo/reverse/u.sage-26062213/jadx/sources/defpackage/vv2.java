package defpackage;

import android.view.MotionEvent;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vv2 {
    public final List a;
    public final ft1 b;
    public int c;

    /* JADX WARN: Removed duplicated region for block: B:40:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public vv2(java.util.List r10, defpackage.ft1 r11) {
        /*
            r9 = this;
            r9.<init>()
            r9.a = r10
            r9.b = r11
            int r11 = android.os.Build.VERSION.SDK_INT
            r0 = 29
            if (r11 < r0) goto L16
            android.view.MotionEvent r1 = r9.a()
            if (r1 == 0) goto L16
            defpackage.fi1.w(r1)
        L16:
            android.view.MotionEvent r1 = r9.a()
            if (r1 == 0) goto L1f
            r1.getButtonState()
        L1f:
            android.view.MotionEvent r1 = r9.a()
            if (r1 == 0) goto L28
            r1.getMetaState()
        L28:
            android.view.MotionEvent r1 = r9.a()
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L93
            if (r11 < r0) goto L3c
            int r10 = defpackage.fi1.w(r1)
            if (r10 != r3) goto L3c
            r10 = r5
            goto L3d
        L3c:
            r10 = r2
        L3d:
            r6 = 5
            if (r11 < r0) goto L48
            int r11 = defpackage.fi1.w(r1)
            if (r11 != r6) goto L48
            r11 = r5
            goto L49
        L48:
            r11 = r2
        L49:
            int r0 = r1.getActionMasked()
            r1 = 10
            if (r0 == 0) goto L8c
            r7 = 12
            if (r0 == r5) goto L84
            r8 = 8
            if (r0 == r4) goto L7a
            switch(r0) {
                case 5: goto L71;
                case 6: goto L67;
                case 7: goto L7a;
                case 8: goto L64;
                case 9: goto L61;
                case 10: goto L5e;
                default: goto L5c;
            }
        L5c:
            goto Lb0
        L5e:
            r2 = r6
            goto Lb0
        L61:
            r2 = 4
            goto Lb0
        L64:
            r2 = 6
            goto Lb0
        L67:
            if (r10 == 0) goto L6b
        L69:
            r2 = r7
            goto Lb0
        L6b:
            if (r11 == 0) goto L6f
        L6d:
            r2 = r8
            goto Lb0
        L6f:
            r2 = r4
            goto Lb0
        L71:
            if (r10 == 0) goto L75
        L73:
            r2 = r1
            goto Lb0
        L75:
            if (r11 == 0) goto L78
            goto L6d
        L78:
            r2 = r5
            goto Lb0
        L7a:
            if (r10 == 0) goto L7f
            r2 = 11
            goto Lb0
        L7f:
            if (r11 == 0) goto L82
            goto L6d
        L82:
            r2 = r3
            goto Lb0
        L84:
            if (r10 == 0) goto L87
            goto L69
        L87:
            if (r11 == 0) goto L6f
            r2 = 9
            goto Lb0
        L8c:
            if (r10 == 0) goto L8f
            goto L73
        L8f:
            if (r11 == 0) goto L78
            r2 = 7
            goto Lb0
        L93:
            int r11 = r10.size()
        L97:
            if (r2 >= r11) goto L82
            java.lang.Object r0 = r10.get(r2)
            zv2 r0 = (defpackage.zv2) r0
            boolean r1 = defpackage.se0.f(r0)
            if (r1 == 0) goto La6
            goto L6f
        La6:
            boolean r0 = defpackage.se0.d(r0)
            if (r0 == 0) goto Lad
            goto L78
        Lad:
            int r2 = r2 + 1
            goto L97
        Lb0:
            r9.c = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vv2.<init>(java.util.List, ft1):void");
    }

    public final MotionEvent a() {
        ft1 ft1Var = this.b;
        if (ft1Var != null) {
            return (MotionEvent) ((xh1) ft1Var.q).o;
        }
        return null;
    }
}
