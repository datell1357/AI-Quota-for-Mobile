package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tq1 implements qz1, Serializable {
    public final Object n;

    public tq1(Object obj) {
        this.n = obj;
    }

    @Override // defpackage.qz1
    public final Object getValue() {
        return this.n;
    }

    public final String toString() {
        return String.valueOf(this.n);
    }
}
