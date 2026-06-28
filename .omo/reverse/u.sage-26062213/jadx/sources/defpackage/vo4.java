package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vo4 implements cp4 {
    public final sm4 a;
    public final bx3 b;

    public vo4(bx3 bx3Var, sm4 sm4Var) {
        ls3 ls3Var = ln4.a;
        this.b = bx3Var;
        this.a = sm4Var;
    }

    @Override // defpackage.cp4
    public final int a(rn4 rn4Var) {
        return rn4Var.zzc.hashCode();
    }

    @Override // defpackage.cp4
    public final void b(Object obj, Object obj2) {
        dp4.b(obj, obj2);
    }

    @Override // defpackage.cp4
    public final int c(sm4 sm4Var) {
        lp4 lp4Var = ((rn4) sm4Var).zzc;
        int i = lp4Var.d;
        if (i != -1) {
            return i;
        }
        int iB = 0;
        for (int i2 = 0; i2 < lp4Var.a; i2++) {
            int i3 = lp4Var.b[i2] >>> 3;
            zm4 zm4Var = (zm4) lp4Var.c[i2];
            int iA = jn4.a(8);
            int iA2 = jn4.a(i3) + jn4.a(16);
            int iA3 = jn4.a(24);
            int iC = zm4Var.c();
            iB += iA + iA + iA2 + to4.b(iC, iC, iA3);
        }
        lp4Var.d = iB;
        return iB;
    }

    @Override // defpackage.cp4
    public final boolean d(Object obj) {
        throw di0.o(obj);
    }

    @Override // defpackage.cp4
    public final void e(Object obj, byte[] bArr, int i, int i2, e91 e91Var) {
        rn4 rn4Var = (rn4) obj;
        if (rn4Var.zzc == lp4.f) {
            rn4Var.zzc = lp4.a();
        }
        throw di0.o(obj);
    }

    @Override // defpackage.cp4
    public final void f(Object obj, e50 e50Var, kn4 kn4Var) {
        this.b.getClass();
        bx3.s(obj);
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.cp4
    public final boolean g(rn4 rn4Var, rn4 rn4Var2) {
        return rn4Var.zzc.equals(rn4Var2.zzc);
    }

    @Override // defpackage.cp4
    public final void h(Object obj) {
        this.b.getClass();
        lp4 lp4Var = ((rn4) obj).zzc;
        if (lp4Var.e) {
            lp4Var.e = false;
        }
        ls3 ls3Var = ln4.a;
        throw di0.o(obj);
    }

    @Override // defpackage.cp4
    public final void i(Object obj, dd1 dd1Var) {
        throw di0.o(obj);
    }

    @Override // defpackage.cp4
    public final rn4 zza() {
        sm4 sm4Var = this.a;
        if (sm4Var instanceof rn4) {
            return ((rn4) sm4Var).i();
        }
        pn4 pn4Var = (pn4) ((rn4) sm4Var).s(5);
        boolean zG = pn4Var.o.g();
        rn4 rn4Var = pn4Var.o;
        if (!zG) {
            return rn4Var;
        }
        rn4Var.getClass();
        zo4.c.a(rn4Var.getClass()).h(rn4Var);
        rn4Var.h();
        return pn4Var.o;
    }
}
