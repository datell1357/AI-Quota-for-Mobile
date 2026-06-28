package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z92 extends ba2 implements Iterator, fx1 {
    public final /* synthetic */ int r;

    public z92(ca2 ca2Var, int i) {
        this.r = i;
        ca2Var.getClass();
        this.q = ca2Var;
        this.o = -1;
        this.p = ca2Var.f44u;
        e();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.r) {
            case 0:
                d();
                int i = this.n;
                ca2 ca2Var = (ca2) this.q;
                if (i >= ca2Var.s) {
                    p61.v();
                } else {
                    this.n = i + 1;
                    this.o = i;
                    aa2 aa2Var = new aa2(ca2Var, i);
                    e();
                }
                break;
            case 1:
                d();
                int i2 = this.n;
                ca2 ca2Var2 = (ca2) this.q;
                if (i2 >= ca2Var2.s) {
                    p61.v();
                } else {
                    this.n = i2 + 1;
                    this.o = i2;
                    Object obj = ca2Var2.n[i2];
                    e();
                }
                break;
            default:
                d();
                int i3 = this.n;
                ca2 ca2Var3 = (ca2) this.q;
                if (i3 >= ca2Var3.s) {
                    p61.v();
                } else {
                    this.n = i3 + 1;
                    this.o = i3;
                    Object[] objArr = ca2Var3.o;
                    objArr.getClass();
                    Object obj2 = objArr[this.o];
                    e();
                }
                break;
        }
        return null;
    }
}
