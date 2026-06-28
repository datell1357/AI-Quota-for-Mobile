package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hn4 implements qo4 {
    public static final Object p = new Object();
    public volatile qo4 n;
    public volatile Object o;

    public static qo4 a(qo4 qo4Var) {
        if (qo4Var instanceof hn4) {
            return qo4Var;
        }
        hn4 hn4Var = new hn4();
        hn4Var.o = p;
        hn4Var.n = qo4Var;
        return hn4Var;
    }

    @Override // defpackage.qo4
    public final Object zza() {
        Object objZza;
        Object obj = this.o;
        Object obj2 = p;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objZza = this.o;
                if (objZza == obj2) {
                    objZza = this.n.zza();
                    Object obj3 = this.o;
                    if (obj3 != obj2 && obj3 != objZza) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objZza + ". This is likely due to a circular dependency.");
                    }
                    this.o = objZza;
                    this.n = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objZza;
    }
}
