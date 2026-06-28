package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n60 extends f1 {
    public final km1 n;
    public final km1 o;

    public n60(km1 km1Var, km1 km1Var2) {
        this.n = km1Var;
        this.o = km1Var2;
    }

    @Override // defpackage.km1
    public final km1 a(Object obj, String str) {
        throw new UnsupportedOperationException("Setting parameters in a stack is not supported.");
    }

    @Override // defpackage.km1
    public final Object c(String str) {
        km1 km1Var;
        km1 km1Var2 = this.o;
        Object objC = km1Var2 != null ? km1Var2.c(str) : null;
        return (objC != null || (km1Var = this.n) == null) ? objC : km1Var.c(str);
    }

    @Override // defpackage.km1
    public final km1 b() {
        return this;
    }
}
