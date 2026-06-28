package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ux4 implements rx4 {
    public volatile rx4 n;
    public Object o;

    public final String toString() {
        Object objV = this.n;
        if (objV == qv3.t) {
            objV = di0.v("<supplier that returned ", String.valueOf(this.o), ">");
        }
        return di0.v("Suppliers.memoize(", String.valueOf(objV), ")");
    }

    @Override // defpackage.rx4
    public final Object zza() {
        rx4 rx4Var = this.n;
        qv3 qv3Var = qv3.t;
        if (rx4Var != qv3Var) {
            synchronized (this) {
                try {
                    if (this.n != qv3Var) {
                        Object objZza = this.n.zza();
                        this.o = objZza;
                        this.n = qv3Var;
                        return objZza;
                    }
                } finally {
                }
            }
        }
        return this.o;
    }
}
