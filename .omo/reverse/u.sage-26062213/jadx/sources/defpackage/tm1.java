package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tm1 extends um1 implements zl1 {
    public xl1 t;

    @Override // defpackage.zl1
    public final boolean expectContinue() {
        gj1 firstHeader = getFirstHeader("Expect");
        return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
    }

    @Override // defpackage.zl1
    public final xl1 getEntity() {
        return this.t;
    }

    @Override // defpackage.zl1
    public final void setEntity(xl1 xl1Var) {
        this.t = xl1Var;
    }
}
