package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aa1 extends xx1 implements pe1 {
    public final /* synthetic */ w33 o;
    public final /* synthetic */ int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa1(int i, w33 w33Var) {
        super(1);
        this.o = w33Var;
        this.p = i;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        Boolean boolValueOf = Boolean.valueOf(((ka1) obj).N0(this.p));
        this.o.n = boolValueOf;
        return boolValueOf;
    }
}
