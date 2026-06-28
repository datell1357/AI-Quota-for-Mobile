package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class en1 implements kh, ka4 {
    public final int n;
    public int o;
    public final Object p;

    public en1(int i, int i2, my0 my0Var) {
        this.n = i;
        this.o = i2;
        this.p = new qd1(new z71(i, i2, my0Var));
    }

    @Override // defpackage.kh
    public void b(int i, Object obj) {
        ((kh) this.p).b(i + (this.o == 0 ? this.n : 0), obj);
    }

    @Override // defpackage.kh
    public void d(Object obj) {
        this.o++;
        ((kh) this.p).d(obj);
    }

    @Override // defpackage.kh
    public void e() {
        ((kh) this.p).e();
    }

    @Override // defpackage.kh
    public void f(int i, Object obj) {
        ((kh) this.p).f(i + (this.o == 0 ? this.n : 0), obj);
    }

    @Override // defpackage.kh
    public void h(int i, int i2, int i3) {
        int i4 = this.o == 0 ? this.n : 0;
        ((kh) this.p).h(i + i4, i2 + i4, i3);
    }

    @Override // defpackage.kh
    public Object i() {
        return ((kh) this.p).i();
    }

    @Override // defpackage.kh
    public void j(int i, int i2) {
        ((kh) this.p).j(i + (this.o == 0 ? this.n : 0), i2);
    }

    @Override // defpackage.ka4
    public int k() {
        return this.o;
    }

    @Override // defpackage.kh
    public void l(df1 df1Var, Object obj) {
        ((kh) this.p).l(df1Var, obj);
    }

    @Override // defpackage.ia4
    public bf m(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return ((qd1) this.p).m(j, bfVar, bfVar2, bfVar3);
    }

    @Override // defpackage.kh
    public void n() {
        if (this.o <= 0) {
            wb0.a("OffsetApplier up called with no corresponding down");
        }
        this.o--;
        ((kh) this.p).n();
    }

    @Override // defpackage.ka4
    public int o() {
        return this.n;
    }

    @Override // defpackage.ia4
    public bf p(long j, bf bfVar, bf bfVar2, bf bfVar3) {
        return ((qd1) this.p).p(j, bfVar, bfVar2, bfVar3);
    }

    public en1() {
        this.p = new en1[256];
        this.n = 0;
        this.o = 0;
    }

    public en1(int i, int i2) {
        this.p = null;
        this.n = i;
        int i3 = i2 & 7;
        this.o = i3 == 0 ? 8 : i3;
    }

    public en1(kh khVar, int i) {
        this.p = khVar;
        this.n = i;
    }
}
