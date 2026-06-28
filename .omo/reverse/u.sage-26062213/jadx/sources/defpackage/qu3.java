package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qu3 extends su3 {
    public int[] q;
    public long[] r;
    public double[] s;
    public String[] t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte[][] f284u;
    public Cursor v;

    public static void z(Cursor cursor, int i) {
        if (i < 0 || i >= cursor.getColumnCount()) {
            ix.U(25, "column index out of range");
            throw null;
        }
    }

    public final Cursor A() {
        Cursor cursor = this.v;
        if (cursor != null) {
            return cursor;
        }
        ix.U(21, "no row");
        throw null;
    }

    @Override // defpackage.pb3
    public final void P(int i, String str) {
        str.getClass();
        b();
        j(3, i);
        this.q[i] = 3;
        this.t[i] = str;
    }

    @Override // defpackage.pb3
    public final boolean c0() {
        b();
        r();
        Cursor cursor = this.v;
        if (cursor != null) {
            return cursor.moveToNext();
        }
        k21.n("Required value was null.");
        return false;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (!this.p) {
            b();
            this.q = new int[0];
            this.r = new long[0];
            this.s = new double[0];
            this.t = new String[0];
            this.f284u = new byte[0][];
            reset();
        }
        this.p = true;
    }

    @Override // defpackage.pb3
    public final void e(int i) {
        b();
        j(5, i);
        this.q[i] = 5;
    }

    @Override // defpackage.pb3
    public final byte[] getBlob(int i) {
        b();
        Cursor cursorA = A();
        z(cursorA, i);
        byte[] blob = cursorA.getBlob(i);
        blob.getClass();
        return blob;
    }

    @Override // defpackage.pb3
    public final int getColumnCount() {
        b();
        r();
        Cursor cursor = this.v;
        if (cursor != null) {
            return cursor.getColumnCount();
        }
        return 0;
    }

    @Override // defpackage.pb3
    public final String getColumnName(int i) {
        b();
        r();
        Cursor cursor = this.v;
        if (cursor == null) {
            k21.n("Required value was null.");
            return null;
        }
        z(cursor, i);
        String columnName = cursor.getColumnName(i);
        columnName.getClass();
        return columnName;
    }

    @Override // defpackage.pb3
    public final long getLong(int i) {
        b();
        Cursor cursorA = A();
        z(cursorA, i);
        return cursorA.getLong(i);
    }

    @Override // defpackage.pb3
    public final void h(int i, long j) {
        b();
        j(1, i);
        this.q[i] = 1;
        this.r[i] = j;
    }

    @Override // defpackage.pb3
    public final boolean isNull(int i) {
        b();
        Cursor cursorA = A();
        z(cursorA, i);
        return cursorA.isNull(i);
    }

    public final void j(int i, int i2) {
        int i3 = i2 + 1;
        int[] iArr = this.q;
        if (iArr.length < i3) {
            this.q = Arrays.copyOf(iArr, i3);
        }
        if (i == 1) {
            long[] jArr = this.r;
            if (jArr.length < i3) {
                this.r = Arrays.copyOf(jArr, i3);
                return;
            }
            return;
        }
        if (i == 2) {
            double[] dArr = this.s;
            if (dArr.length < i3) {
                this.s = Arrays.copyOf(dArr, i3);
                return;
            }
            return;
        }
        if (i == 3) {
            String[] strArr = this.t;
            if (strArr.length < i3) {
                this.t = (String[]) Arrays.copyOf(strArr, i3);
                return;
            }
            return;
        }
        if (i != 4) {
            return;
        }
        byte[][] bArr = this.f284u;
        if (bArr.length < i3) {
            this.f284u = (byte[][]) Arrays.copyOf(bArr, i3);
        }
    }

    @Override // defpackage.pb3
    public final void k(int i, byte[] bArr) {
        b();
        j(4, i);
        this.q[i] = 4;
        this.f284u[i] = bArr;
    }

    @Override // defpackage.pb3
    public final String o(int i) {
        b();
        Cursor cursorA = A();
        z(cursorA, i);
        String string = cursorA.getString(i);
        string.getClass();
        return string;
    }

    public final void r() {
        if (this.v == null) {
            ra3 ra3Var = new ra3(5, this);
            ee1 ee1Var = this.n;
            ee1Var.getClass();
            final qb qbVar = new qb(1, ra3Var);
            Cursor cursorRawQueryWithFactory = ee1Var.n.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: de1
                @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                    return (Cursor) qbVar.n(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                }
            }, ((qu3) ra3Var.o).o, ee1.p, null);
            cursorRawQueryWithFactory.getClass();
            this.v = cursorRawQueryWithFactory;
        }
    }

    @Override // defpackage.pb3
    public final void reset() {
        b();
        Cursor cursor = this.v;
        if (cursor != null) {
            cursor.close();
        }
        this.v = null;
    }
}
