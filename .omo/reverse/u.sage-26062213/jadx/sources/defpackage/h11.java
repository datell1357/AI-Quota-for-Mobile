package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h11 extends xx1 implements pe1 {
    public final /* synthetic */ boolean o;
    public final /* synthetic */ ne1 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h11(boolean z, ne1 ne1Var) {
        super(1);
        this.o = z;
        this.p = ne1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        o83 o83Var = (o83) obj;
        boolean z = !this.o && ((Boolean) this.p.a()).booleanValue();
        if (o83Var.x != z) {
            o83Var.n |= 16384;
            o83Var.x = z;
        }
        return t64.a;
    }
}
