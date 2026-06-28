package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tv extends cr {
    public final /* synthetic */ int b;
    public final int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tv(cf0 cf0Var, int i) {
        super(cf0Var);
        this.b = i;
        cf0Var.getClass();
        switch (i) {
            case 4:
                super(cf0Var);
                this.c = 9;
                break;
            default:
                this.c = 6;
                break;
        }
    }

    @Override // defpackage.bf0
    public final boolean a(og4 og4Var) {
        int i = this.b;
        og4Var.getClass();
        switch (i) {
            case 0:
                return og4Var.j.c;
            case 1:
                return og4Var.j.e;
            case 2:
                return og4Var.j.a == zl2.o;
            case 3:
                return og4Var.j.a == zl2.p;
            default:
                return og4Var.j.f;
        }
    }

    @Override // defpackage.cr
    public final int d() {
        switch (this.b) {
        }
        return this.c;
    }

    @Override // defpackage.cr
    public final boolean e(Object obj) {
        boolean zBooleanValue;
        switch (this.b) {
            case 0:
                zBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case 1:
                zBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case 2:
                wl2 wl2Var = (wl2) obj;
                wl2Var.getClass();
                return wl2Var.e || !wl2Var.a || (Build.VERSION.SDK_INT >= 26 && !wl2Var.b);
            case 3:
                wl2 wl2Var2 = (wl2) obj;
                wl2Var2.getClass();
                return !wl2Var2.a || wl2Var2.c || wl2Var2.e;
            default:
                zBooleanValue = ((Boolean) obj).booleanValue();
                break;
        }
        return !zBooleanValue;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tv(uv uvVar) {
        super(uvVar);
        this.b = 1;
        uvVar.getClass();
        this.c = 5;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tv(yl2 yl2Var, int i) {
        super(yl2Var);
        this.b = i;
        yl2Var.getClass();
        switch (i) {
            case 3:
                super(yl2Var);
                this.c = 7;
                break;
            default:
                this.c = 7;
                break;
        }
    }
}
