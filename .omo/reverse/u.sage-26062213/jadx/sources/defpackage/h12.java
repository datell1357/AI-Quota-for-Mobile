package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h12 implements jf3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h12(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj2;
        this.b = obj;
    }

    public static int b(h12 h12Var, int i) {
        Object obj;
        n12 n12Var = (n12) h12Var.c;
        f12 f12VarH = n12Var.h();
        if (!f12VarH.k.isEmpty()) {
            int iD = n12Var.d();
            if (i > h12Var.c() || iD > i) {
                return ((i - n12Var.d()) * bi4.O(f12VarH)) - n12Var.g();
            }
            List list = f12VarH.k;
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    obj = null;
                    break;
                }
                obj = list.get(i2);
                if (((g12) obj).a == i) {
                    break;
                }
                i2++;
            }
            g12 g12Var = (g12) obj;
            if (g12Var != null) {
                return g12Var.l;
            }
        }
        return 0;
    }

    @Override // defpackage.jf3
    public final float a(float f) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return ((jf3) obj).a(f);
            default:
                dg3 dg3Var = (dg3) obj;
                if (Math.abs(f) == 0.0f || ((Boolean) dg3Var.h.a()).booleanValue()) {
                    return dg3Var.e(dg3Var.h(((bg3) this.c).a(2, dg3Var.f(dg3Var.i(f)))));
                }
                throw new q71("The fling animation was cancelled", 0);
        }
    }

    public int c() {
        g12 g12Var = (g12) o70.p0(((n12) this.c).h().k);
        if (g12Var != null) {
            return g12Var.a;
        }
        return 0;
    }
}
