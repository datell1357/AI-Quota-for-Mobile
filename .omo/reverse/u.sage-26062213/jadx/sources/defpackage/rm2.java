package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class rm2 {
    public final ug2 a = new ug2(new gm2[16]);
    public final dg2 b = new dg2(10);

    public boolean a(e82 e82Var, gy1 gy1Var, ft1 ft1Var, boolean z) {
        ug2 ug2Var = this.a;
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        boolean z2 = false;
        for (int i2 = 0; i2 < i; i2++) {
            z2 = ((gm2) objArr[i2]).a(e82Var, gy1Var, ft1Var, z) || z2;
        }
        return z2;
    }

    public void b(ft1 ft1Var) {
        ug2 ug2Var = this.a;
        int i = ug2Var.p;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            }
            if (((gm2) ug2Var.n[i]).d.o == 0) {
                ug2Var.l(i);
            }
        }
    }
}
