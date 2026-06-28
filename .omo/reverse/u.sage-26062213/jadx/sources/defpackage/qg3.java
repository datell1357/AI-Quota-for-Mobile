package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qg3 {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public final boolean e;
    public qg3 f;
    public qg3 g;

    public qg3(byte[] bArr, int i, int i2, boolean z) {
        bArr.getClass();
        this.a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = false;
    }

    public final qg3 a() {
        qg3 qg3Var = this.f;
        if (qg3Var == this) {
            qg3Var = null;
        }
        qg3 qg3Var2 = this.g;
        qg3Var2.getClass();
        qg3Var2.f = this.f;
        qg3 qg3Var3 = this.f;
        qg3Var3.getClass();
        qg3Var3.g = this.g;
        this.f = null;
        this.g = null;
        return qg3Var;
    }

    public final void b(qg3 qg3Var) {
        qg3Var.getClass();
        qg3Var.g = this;
        qg3Var.f = this.f;
        qg3 qg3Var2 = this.f;
        qg3Var2.getClass();
        qg3Var2.g = qg3Var;
        this.f = qg3Var;
    }

    public final qg3 c() {
        this.d = true;
        return new qg3(this.a, this.b, this.c, true);
    }

    public final void d(qg3 qg3Var, int i) {
        qg3Var.getClass();
        byte[] bArr = qg3Var.a;
        if (!qg3Var.e) {
            k21.n("only owner can write");
            return;
        }
        int i2 = qg3Var.c;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (qg3Var.d) {
                q73.d();
                return;
            }
            int i4 = qg3Var.b;
            if (i3 - i4 > 8192) {
                q73.d();
                return;
            } else {
                ji.M(0, i4, i2, bArr, bArr);
                qg3Var.c -= qg3Var.b;
                qg3Var.b = 0;
            }
        }
        int i5 = qg3Var.c;
        int i6 = this.b;
        ji.M(i5, i6, i6 + i, this.a, bArr);
        qg3Var.c += i;
        this.b += i;
    }

    public qg3() {
        this.a = new byte[8192];
        this.e = true;
        this.d = false;
    }
}
