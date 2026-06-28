package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sx4 implements Serializable, rx4 {
    public final rx4 n;
    public volatile transient boolean o;
    public transient Object p;

    public sx4(rx4 rx4Var) {
        this.n = rx4Var;
    }

    public final String toString() {
        return di0.v("Suppliers.memoize(", (this.o ? di0.v("<supplier that returned ", String.valueOf(this.p), ">") : this.n).toString(), ")");
    }

    @Override // defpackage.rx4
    public final Object zza() {
        if (!this.o) {
            synchronized (this) {
                try {
                    if (!this.o) {
                        Object objZza = this.n.zza();
                        this.p = objZza;
                        this.o = true;
                        return objZza;
                    }
                } finally {
                }
            }
        }
        return this.p;
    }
}
