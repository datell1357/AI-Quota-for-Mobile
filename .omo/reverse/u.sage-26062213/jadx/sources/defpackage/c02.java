package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c02 {
    public final fc3 a;
    public final f02 b;
    public final kg2 c;

    public c02(fc3 fc3Var, f02 f02Var) {
        this.a = fc3Var;
        this.b = f02Var;
        long[] jArr = td3.a;
        this.c = new kg2();
    }

    public final df1 a(int i, Object obj, Object obj2) {
        kg2 kg2Var = this.c;
        b02 b02Var = (b02) kg2Var.g(obj);
        int i2 = 10;
        if (b02Var != null && b02Var.c == i && nt1.g(b02Var.b, obj2)) {
            ka0 ka0Var = b02Var.d;
            if (ka0Var != null) {
                return ka0Var;
            }
            ka0 ka0Var2 = new ka0(818252804, true, new l4(i2, b02Var.e, b02Var));
            b02Var.d = ka0Var2;
            return ka0Var2;
        }
        b02 b02Var2 = new b02(this, i, obj, obj2);
        kg2Var.m(obj, b02Var2);
        ka0 ka0Var3 = b02Var2.d;
        if (ka0Var3 != null) {
            return ka0Var3;
        }
        ka0 ka0Var4 = new ka0(818252804, true, new l4(i2, this, b02Var2));
        b02Var2.d = ka0Var4;
        return ka0Var4;
    }

    public final Object b(Object obj) {
        if (obj == null) {
            return null;
        }
        b02 b02Var = (b02) this.c.g(obj);
        if (b02Var != null) {
            return b02Var.b;
        }
        a12 a12Var = (a12) this.b.a();
        int iD = a12Var.d.d(obj);
        if (iD != -1) {
            return a12Var.b(iD);
        }
        return null;
    }
}
