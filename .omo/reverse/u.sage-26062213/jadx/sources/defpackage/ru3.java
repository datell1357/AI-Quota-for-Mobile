package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ru3 extends su3 {
    public final le1 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ru3(ee1 ee1Var, String str) {
        super(ee1Var, str);
        ee1Var.getClass();
        str.getClass();
        this.q = ee1Var.r(str);
    }

    @Override // defpackage.pb3
    public final void P(int i, String str) {
        str.getClass();
        b();
        this.q.s(i, str);
    }

    @Override // defpackage.pb3
    public final boolean c0() {
        b();
        this.q.o.execute();
        return false;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.q.close();
        this.p = true;
    }

    @Override // defpackage.pb3
    public final void e(int i) {
        b();
        this.q.e(i);
    }

    @Override // defpackage.pb3
    public final byte[] getBlob(int i) {
        b();
        ix.U(21, "no row");
        throw null;
    }

    @Override // defpackage.pb3
    public final int getColumnCount() {
        b();
        return 0;
    }

    @Override // defpackage.pb3
    public final String getColumnName(int i) {
        b();
        ix.U(21, "no row");
        throw null;
    }

    @Override // defpackage.pb3
    public final long getLong(int i) {
        b();
        ix.U(21, "no row");
        throw null;
    }

    @Override // defpackage.pb3
    public final void h(int i, long j) {
        b();
        this.q.h(i, j);
    }

    @Override // defpackage.pb3
    public final boolean isNull(int i) {
        b();
        ix.U(21, "no row");
        throw null;
    }

    @Override // defpackage.pb3
    public final void k(int i, byte[] bArr) {
        b();
        this.q.k(i, bArr);
    }

    @Override // defpackage.pb3
    public final String o(int i) {
        b();
        ix.U(21, "no row");
        throw null;
    }

    @Override // defpackage.pb3
    public final void reset() {
    }
}
