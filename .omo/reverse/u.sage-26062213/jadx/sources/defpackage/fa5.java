package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fa5 extends na5 {
    public volatile double r;

    @Override // defpackage.na5
    public final /* synthetic */ Object a() {
        return Double.valueOf(-3.0d);
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object b(String str) {
        return Double.valueOf(Double.parseDouble(str));
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object c(Object obj) {
        return (Double) obj;
    }

    @Override // defpackage.na5
    public final /* synthetic */ Object d() {
        return Double.valueOf(this.r);
    }

    @Override // defpackage.na5
    public final /* synthetic */ void e(Object obj) {
        this.r = ((Double) obj).doubleValue();
    }
}
