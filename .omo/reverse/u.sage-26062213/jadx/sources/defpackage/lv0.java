package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lv0 extends xx1 implements ne1 {
    public final /* synthetic */ boolean o;
    public final /* synthetic */ uc3 p;
    public final /* synthetic */ String q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lv0(boolean z, uc3 uc3Var, String str) {
        super(0);
        this.o = z;
        this.p = uc3Var;
        this.q = str;
    }

    @Override // defpackage.ne1
    public final Object a() {
        if (this.o) {
            uc3 uc3Var = this.p;
            String str = this.q;
            xc3 xc3Var = uc3Var.a;
            synchronized (xc3Var.c) {
            }
        }
        return t64.a;
    }
}
