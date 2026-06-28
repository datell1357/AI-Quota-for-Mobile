package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o05 implements h15 {
    public final xx4 a;
    public final r25 b;

    public o05(r25 r25Var, ly4 ly4Var, xx4 xx4Var) {
        this.b = r25Var;
        this.a = xx4Var;
    }

    @Override // defpackage.h15
    public final boolean a(sy4 sy4Var, sy4 sy4Var2) {
        this.b.getClass();
        return sy4Var.zzc.equals(sy4Var2.zzc);
    }

    @Override // defpackage.h15
    public final void b(Object obj) {
        this.b.getClass();
        p25 p25Var = ((sy4) obj).zzc;
        if (p25Var.d) {
            p25Var.d = false;
        }
        throw di0.o(obj);
    }

    @Override // defpackage.h15
    public final int c(sy4 sy4Var) {
        this.b.getClass();
        return sy4Var.zzc.hashCode();
    }

    @Override // defpackage.h15
    public final boolean d(Object obj) {
        throw di0.o(obj);
    }

    @Override // defpackage.h15
    public final void e(Object obj, byte[] bArr, int i, int i2, h30 h30Var) {
        sy4 sy4Var = (sy4) obj;
        if (sy4Var.zzc == p25.e) {
            sy4Var.zzc = p25.a();
        }
        throw di0.o(obj);
    }

    @Override // defpackage.h15
    public final void f(Object obj, Object obj2) {
        l15.a(this.b, obj, obj2);
    }

    @Override // defpackage.h15
    public final sy4 zzd() {
        xx4 xx4Var = this.a;
        return xx4Var instanceof sy4 ? ((sy4) xx4Var).b() : ((t35) ((sy4) xx4Var).h(5)).a();
    }
}
