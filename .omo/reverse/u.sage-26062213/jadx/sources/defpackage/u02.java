package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u02 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ w02 o;

    public /* synthetic */ u02(w02 w02Var, int i) {
        this.n = i;
        this.o = w02Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        w02 w02Var = this.o;
        switch (i) {
            case 0:
                a12 a12Var = (a12) w02Var.B.a();
                int iC = a12Var.c();
                int i2 = 0;
                while (true) {
                    if (i2 >= iC) {
                        i2 = -1;
                    } else if (!a12Var.d(i2).equals(obj)) {
                        i2++;
                    }
                }
                return Integer.valueOf(i2);
            default:
                int iIntValue = ((Integer) obj).intValue();
                a12 a12Var2 = (a12) w02Var.B.a();
                if (iIntValue < 0 || iIntValue >= a12Var2.c()) {
                    dr1.a("Can't scroll to index " + iIntValue + ", it is out of bounds [0, " + a12Var2.c() + ")");
                }
                ca.y(w02Var.u0(), null, null, new ut(w02Var, iIntValue, null, 1), 3);
                return Boolean.TRUE;
        }
    }
}
