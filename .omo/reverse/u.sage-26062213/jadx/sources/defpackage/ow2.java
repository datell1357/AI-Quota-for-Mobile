package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ow2 implements pb3 {
    public final pb3 n;
    public final long o;
    public final /* synthetic */ vw2 p;

    public ow2(vw2 vw2Var, pb3 pb3Var) {
        pb3Var.getClass();
        this.p = vw2Var;
        this.n = pb3Var;
        this.o = tv4.q();
    }

    @Override // defpackage.pb3
    public final void P(int i, String str) {
        str.getClass();
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            this.n.P(i, str);
        } else {
            ix.U(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.pb3
    public final boolean c0() {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.c0();
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            this.n.close();
        } else {
            ix.U(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.pb3
    public final void e(int i) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            this.n.e(i);
        } else {
            ix.U(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.pb3
    public final byte[] getBlob(int i) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.getBlob(i);
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.pb3
    public final int getColumnCount() {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.getColumnCount();
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.pb3
    public final String getColumnName(int i) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.getColumnName(i);
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.pb3
    public final long getLong(int i) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.getLong(i);
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.pb3
    public final void h(int i, long j) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            this.n.h(i, j);
        } else {
            ix.U(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.pb3
    public final boolean isNull(int i) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.isNull(i);
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.pb3
    public final void k(int i, byte[] bArr) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            this.n.k(i, bArr);
        } else {
            ix.U(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }

    @Override // defpackage.pb3
    public final String o(int i) {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            return this.n.o(i);
        }
        ix.U(21, "Attempted to use statement on a different thread");
        throw null;
    }

    @Override // defpackage.pb3
    public final void reset() {
        if (this.p.d.get()) {
            ix.U(21, "Statement is recycled");
            throw null;
        }
        if (this.o == tv4.q()) {
            this.n.reset();
        } else {
            ix.U(21, "Attempted to use statement on a different thread");
            throw null;
        }
    }
}
