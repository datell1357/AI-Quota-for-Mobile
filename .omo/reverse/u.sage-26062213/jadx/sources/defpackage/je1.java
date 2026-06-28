package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class je1 implements mu3 {
    public final Context n;
    public final String o;
    public final d90 p;
    public final boolean q;
    public final boolean r;
    public final nv3 s;
    public boolean t;

    public je1(Context context, String str, d90 d90Var, boolean z, boolean z2) {
        context.getClass();
        d90Var.getClass();
        this.n = context;
        this.o = str;
        this.p = d90Var;
        this.q = z;
        this.r = z2;
        this.s = new nv3(new cc(10, this));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        nv3 nv3Var = this.s;
        if (nv3Var.a()) {
            ((ie1) nv3Var.getValue()).close();
        }
    }

    @Override // defpackage.mu3
    public final ee1 f0() {
        return ((ie1) this.s.getValue()).b(true);
    }

    @Override // defpackage.mu3
    public final String getDatabaseName() {
        return this.o;
    }

    @Override // defpackage.mu3
    public final void setWriteAheadLoggingEnabled(boolean z) {
        nv3 nv3Var = this.s;
        if (nv3Var.a()) {
            ((ie1) nv3Var.getValue()).setWriteAheadLoggingEnabled(z);
        }
        this.t = z;
    }
}
