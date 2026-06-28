package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lc0 extends h03 {
    public final /* synthetic */ int b = 1;
    public final Object c;

    public lc0(pe1 pe1Var) {
        super(new l6(9));
        this.c = new mc0(pe1Var);
    }

    @Override // defpackage.h03
    public final j03 a(Object obj) {
        switch (this.b) {
            case 0:
                return new j03(this, obj, obj == null, null, null, true);
            default:
                return new j03(this, obj, obj == null, (w13) this.c, null, true);
        }
    }

    @Override // defpackage.h03
    public x94 b() {
        switch (this.b) {
            case 0:
                return (mc0) this.c;
            default:
                return super.b();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lc0(ne1 ne1Var) {
        super(ne1Var);
        w13 w13Var = w13.S;
        this.c = w13Var;
    }
}
