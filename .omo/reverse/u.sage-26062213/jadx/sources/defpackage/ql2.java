package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ql2 extends cr {
    public static final String c = t72.i("NetworkMeteredCtrlr");
    public final int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ql2(yl2 yl2Var) {
        super(yl2Var);
        yl2Var.getClass();
        this.b = 7;
    }

    @Override // defpackage.bf0
    public final boolean a(og4 og4Var) {
        og4Var.getClass();
        return og4Var.j.a == zl2.r;
    }

    @Override // defpackage.cr
    public final int d() {
        return this.b;
    }

    @Override // defpackage.cr
    public final boolean e(Object obj) {
        wl2 wl2Var = (wl2) obj;
        wl2Var.getClass();
        boolean z = wl2Var.e;
        boolean z2 = wl2Var.a;
        if (Build.VERSION.SDK_INT >= 26) {
            return (z2 && wl2Var.c && !z) ? false : true;
        }
        t72.g().c(c, "Metered network constraint is not supported before API 26, only checking for connected state.");
        return !z2 || z;
    }
}
