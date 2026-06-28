package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v02 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ w02 o;

    public /* synthetic */ v02(w02 w02Var, int i) {
        this.n = i;
        this.o = w02Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        w02 w02Var = this.o;
        switch (i) {
            case 0:
                n12 n12Var = w02Var.C.b;
                return Float.valueOf((n12Var.d() * 500) + n12Var.g());
            case 1:
                n12 n12Var2 = w02Var.C.b;
                int iD = n12Var2.d();
                int iG = n12Var2.g();
                return Float.valueOf(n12Var2.i() ? (iD * 500) + iG + 100.0f : (iD * 500) + iG);
            default:
                n12 n12Var3 = w02Var.C.b;
                int i2 = (int) (n12Var3.h().o == hr2.n ? n12Var3.h().i() & 4294967295L : n12Var3.h().i() >> 32);
                n12 n12Var4 = w02Var.C.b;
                return Float.valueOf(i2 - ((-n12Var4.h().l) + n12Var4.h().p));
        }
    }
}
