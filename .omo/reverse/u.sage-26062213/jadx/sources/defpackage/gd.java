package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gd extends xx1 implements df1 {
    public final /* synthetic */ pe1 o;
    public final /* synthetic */ nd2 p;
    public final /* synthetic */ pe1 q;
    public final /* synthetic */ pe1 r;
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gd(pe1 pe1Var, nd2 nd2Var, pe1 pe1Var2, pe1 pe1Var3, int i) {
        super(2);
        this.o = pe1Var;
        this.p = nd2Var;
        this.q = pe1Var2;
        this.r = pe1Var3;
        this.s = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        ((Number) obj2).intValue();
        qj0.c(this.o, this.p, this.q, this.r, (ag1) obj, qj0.f0(this.s | 1));
        return t64.a;
    }
}
