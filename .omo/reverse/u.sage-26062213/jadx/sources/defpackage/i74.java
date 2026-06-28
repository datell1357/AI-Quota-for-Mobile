package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i74 implements qz1, Serializable {
    public ne1 n;
    public Object o;

    @Override // defpackage.qz1
    public final Object getValue() {
        if (this.o == qv3.q) {
            ne1 ne1Var = this.n;
            ne1Var.getClass();
            this.o = ne1Var.a();
            this.n = null;
        }
        return this.o;
    }

    public final String toString() {
        return this.o != qv3.q ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
