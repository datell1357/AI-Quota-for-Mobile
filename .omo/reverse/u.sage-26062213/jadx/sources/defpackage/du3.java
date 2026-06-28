package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class du3 implements cu3, Serializable {
    public final transient Object n = new Object();
    public final cu3 o;
    public volatile transient boolean p;
    public transient Object q;

    public du3(cu3 cu3Var) {
        cu3Var.getClass();
        this.o = cu3Var;
    }

    @Override // defpackage.cu3
    public final Object get() {
        if (!this.p) {
            synchronized (this.n) {
                try {
                    if (!this.p) {
                        Object obj = this.o.get();
                        this.q = obj;
                        this.p = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.q;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.p) {
            obj = "<supplier that returned " + this.q + ">";
        } else {
            obj = this.o;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
