package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ag2 extends fa2 {
    public final pu2 q;
    public Object r;

    public ag2(pu2 pu2Var, Object obj, Object obj2) {
        super(0, obj, obj2);
        this.q = pu2Var;
        this.r = obj2;
    }

    @Override // defpackage.fa2, java.util.Map.Entry
    public final Object getValue() {
        return this.r;
    }

    @Override // defpackage.fa2, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.r;
        this.r = obj;
        nu2 nu2Var = (nu2) this.q.o;
        gu2 gu2Var = nu2Var.q;
        Object obj3 = this.o;
        if (!gu2Var.containsKey(obj3)) {
            return obj2;
        }
        boolean z = nu2Var.p;
        if (!z) {
            gu2Var.put(obj3, obj);
        } else {
            if (!z) {
                p61.v();
                return null;
            }
            k24 k24Var = nu2Var.n[nu2Var.o];
            Object obj4 = k24Var.n[k24Var.p];
            gu2Var.put(obj3, obj);
            nu2Var.e(obj4 != null ? obj4.hashCode() : 0, gu2Var.o, obj4, 0);
        }
        nu2Var.t = gu2Var.q;
        return obj2;
    }
}
