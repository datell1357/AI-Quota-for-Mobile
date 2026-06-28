package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ha5 extends na5 {
    public volatile long r;
    public final long s;

    public ha5(String str, sb5 sb5Var, long j) {
        super(str, sb5Var);
        this.s = j;
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object a() {
        return Long.valueOf(this.s);
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object b(String str) {
        return Long.valueOf(Long.parseLong(str));
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object c(Object obj) {
        return (Long) obj;
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object d() {
        return Long.valueOf(this.r);
    }

    @Override // defpackage.na5
    public final /* synthetic */ void e(Object obj) {
        this.r = ((Long) obj).longValue();
    }
}
