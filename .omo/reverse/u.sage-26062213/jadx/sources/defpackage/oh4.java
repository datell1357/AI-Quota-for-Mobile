package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oh4 implements t22, mf1 {
    public final /* synthetic */ zb0 n;

    public oh4(zb0 zb0Var) {
        this.n = zb0Var;
    }

    @Override // defpackage.mf1
    public final ef1 a() {
        return new of1(1, this.n, zb0.class, "scheduleFrameEndCallback", "scheduleFrameEndCallback(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;", 0, 0);
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof t22) && (obj instanceof mf1)) {
            return a().equals(((mf1) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }
}
