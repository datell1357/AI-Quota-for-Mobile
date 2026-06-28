package defpackage;

import u.sage.MainApplication;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hh implements og1 {
    public volatile vl0 n;
    public final Object o = new Object();
    public final dd1 p;

    public hh(dd1 dd1Var) {
        this.p = dd1Var;
    }

    @Override // defpackage.og1
    public final Object a() {
        if (this.n == null) {
            synchronized (this.o) {
                try {
                    if (this.n == null) {
                        this.n = new vl0(new ih((MainApplication) this.p.o, 0));
                    }
                } finally {
                }
            }
        }
        return this.n;
    }
}
