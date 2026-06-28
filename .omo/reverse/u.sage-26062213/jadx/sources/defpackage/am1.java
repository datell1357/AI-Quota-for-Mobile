package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class am1 extends pm1 implements zl1 {
    private xl1 entity;

    @Override // defpackage.j0
    public Object clone() {
        am1 am1Var = (am1) super.clone();
        xl1 xl1Var = this.entity;
        if (xl1Var != null) {
            am1Var.entity = (xl1) gg4.o(xl1Var);
        }
        return am1Var;
    }

    @Override // defpackage.zl1
    public boolean expectContinue() {
        gj1 firstHeader = getFirstHeader("Expect");
        return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
    }

    @Override // defpackage.zl1
    public xl1 getEntity() {
        return this.entity;
    }

    @Override // defpackage.zl1
    public void setEntity(xl1 xl1Var) {
        this.entity = xl1Var;
    }
}
