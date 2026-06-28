package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wb1 implements Comparable {
    public final int n;
    public final int o;
    public final String p;
    public final String q;

    public wb1(int i, int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.n = i;
        this.o = i2;
        this.p = str;
        this.q = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        wb1 wb1Var = (wb1) obj;
        wb1Var.getClass();
        int i = this.n - wb1Var.n;
        return i == 0 ? this.o - wb1Var.o : i;
    }
}
