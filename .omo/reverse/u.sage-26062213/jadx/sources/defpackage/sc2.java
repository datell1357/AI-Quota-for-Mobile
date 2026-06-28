package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sc2 implements be3 {
    public final l1 a;
    public final w64 b;
    public final c41 c;

    public sc2(w64 w64Var, c41 c41Var, l1 l1Var) {
        this.b = w64Var;
        c41Var.getClass();
        this.c = c41Var;
        this.a = l1Var;
    }

    @Override // defpackage.be3
    public final int a(sg1 sg1Var) {
        this.b.getClass();
        return sg1Var.unknownFields.hashCode();
    }

    @Override // defpackage.be3
    public final void b(Object obj, Object obj2) {
        ee3.k(this.b, obj, obj2);
    }

    @Override // defpackage.be3
    public final void c(Object obj, e50 e50Var, b41 b41Var) {
        this.b.getClass();
        w64.a(obj);
        this.c.getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.be3
    public final void d(Object obj) {
        this.b.getClass();
        v64 v64Var = ((sg1) obj).unknownFields;
        if (v64Var.e) {
            v64Var.e = false;
        }
        this.c.getClass();
        di0.D(obj);
        throw null;
    }

    @Override // defpackage.be3
    public final int e(sg1 sg1Var) {
        this.b.getClass();
        v64 v64Var = sg1Var.unknownFields;
        int i = v64Var.d;
        if (i != -1) {
            return i;
        }
        int iF = 0;
        for (int i2 = 0; i2 < v64Var.a; i2++) {
            int i3 = v64Var.b[i2] >>> 3;
            iF += d70.f(3, (f00) v64Var.c[i2]) + d70.i(i3) + d70.h(2) + (d70.h(1) * 2);
        }
        v64Var.d = iF;
        return iF;
    }

    @Override // defpackage.be3
    public final boolean f(Object obj) {
        this.c.getClass();
        di0.D(obj);
        throw null;
    }

    @Override // defpackage.be3
    public final boolean g(sg1 sg1Var, sg1 sg1Var2) {
        this.b.getClass();
        return sg1Var.unknownFields.equals(sg1Var2.unknownFields);
    }

    @Override // defpackage.be3
    public final void h(Object obj, dh1 dh1Var) {
        this.c.getClass();
        di0.D(obj);
        throw null;
    }

    @Override // defpackage.be3
    public final sg1 i() {
        l1 l1Var = this.a;
        return l1Var instanceof sg1 ? ((sg1) l1Var).i() : ((qg1) ((sg1) l1Var).c(5)).b();
    }
}
