package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kf2 extends jf2 implements Serializable {
    public final Object n;
    public final int o;

    public kf2(int i, Object obj) {
        this.n = obj;
        this.o = i;
        ht4.i(i, "count");
    }

    @Override // defpackage.jf2
    public final int a() {
        return this.o;
    }

    @Override // defpackage.jf2
    public final Object b() {
        return this.n;
    }
}
