package defpackage;

import android.database.sqlite.SQLiteProgram;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ke1 implements pu3 {
    public final SQLiteProgram n;

    public ke1(SQLiteProgram sQLiteProgram) {
        sQLiteProgram.getClass();
        this.n = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.n.close();
    }

    @Override // defpackage.pu3
    public final void e(int i) {
        this.n.bindNull(i);
    }

    @Override // defpackage.pu3
    public final void h(int i, long j) {
        this.n.bindLong(i, j);
    }

    @Override // defpackage.pu3
    public final void k(int i, byte[] bArr) {
        this.n.bindBlob(i, bArr);
    }

    @Override // defpackage.pu3
    public final void s(int i, String str) {
        str.getClass();
        this.n.bindString(i, str);
    }

    @Override // defpackage.pu3
    public final void y(double d, int i) {
        this.n.bindDouble(i, d);
    }
}
