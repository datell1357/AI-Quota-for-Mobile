package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nv3 implements qz1, Serializable {
    public ne1 n;
    public volatile Object o;
    public final Object p;

    public nv3(ne1 ne1Var) {
        ne1Var.getClass();
        this.n = ne1Var;
        this.o = qv3.q;
        this.p = this;
    }

    public final boolean a() {
        return this.o != qv3.q;
    }

    @Override // defpackage.qz1
    public final Object getValue() {
        Object objA;
        Object obj = this.o;
        qv3 qv3Var = qv3.q;
        if (obj != qv3Var) {
            return obj;
        }
        synchronized (this.p) {
            objA = this.o;
            if (objA == qv3Var) {
                ne1 ne1Var = this.n;
                ne1Var.getClass();
                objA = ne1Var.a();
                this.o = objA;
                this.n = null;
            }
        }
        return objA;
    }

    public final String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
