package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class da5 extends na5 {
    public volatile boolean r;
    public final boolean s;

    public da5(String str, sb5 sb5Var, boolean z) {
        super(str, sb5Var);
        this.s = z;
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object a() {
        return Boolean.valueOf(this.s);
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object b(String str) {
        return Boolean.valueOf(Boolean.parseBoolean(str));
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object c(Object obj) {
        return (Boolean) obj;
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object d() {
        return Boolean.valueOf(this.r);
    }

    @Override // defpackage.na5
    public final /* synthetic */ void e(Object obj) {
        this.r = ((Boolean) obj).booleanValue();
    }
}
