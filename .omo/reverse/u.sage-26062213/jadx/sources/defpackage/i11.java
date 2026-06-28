package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i11 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ pe1 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i11(pe1 pe1Var, int i) {
        super(1);
        this.o = i;
        this.p = pe1Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.o;
        pe1 pe1Var = this.p;
        switch (i) {
        }
        return new js1(((long) ((Number) pe1Var.k(Integer.valueOf((int) (((rs1) obj).a & 4294967295L)))).intValue()) & 4294967295L);
    }
}
