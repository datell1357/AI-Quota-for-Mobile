package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface pb3 extends AutoCloseable {
    void P(int i, String str);

    boolean c0();

    void e(int i);

    byte[] getBlob(int i);

    int getColumnCount();

    String getColumnName(int i);

    long getLong(int i);

    void h(int i, long j);

    boolean isNull(int i);

    void k(int i, byte[] bArr);

    String o(int i);

    void reset();
}
