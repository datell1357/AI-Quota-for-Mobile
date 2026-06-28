package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hu2 extends lu2 implements hc0 {
    public static final hu2 q = new hu2(j24.e, 0);

    public final hu2 b(h03 h03Var, x94 x94Var) {
        d90 d90VarU = this.n.u(h03Var.hashCode(), 0, h03Var, x94Var);
        return d90VarU == null ? this : new hu2((j24) d90VarU.p, this.o + d90VarU.o);
    }

    @Override // defpackage.lu2, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof h03) {
            return super.containsKey((h03) obj);
        }
        return false;
    }

    @Override // defpackage.lu2, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof x94) {
            return super.containsValue((x94) obj);
        }
        return false;
    }

    @Override // defpackage.lu2, java.util.Map
    public final /* bridge */ Object get(Object obj) {
        if (obj instanceof h03) {
            return (x94) super.get((h03) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof h03) ? obj2 : (x94) super.getOrDefault((h03) obj, (x94) obj2);
    }
}
