package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m21 extends o21 {
    public final o20 p;
    public final /* synthetic */ q21 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m21(q21 q21Var, long j, o20 o20Var) {
        super(j);
        this.q = q21Var;
        this.p = o20Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws ru0 {
        this.p.H(this.q);
    }

    @Override // defpackage.o21
    public final String toString() {
        return super.toString() + this.p;
    }
}
