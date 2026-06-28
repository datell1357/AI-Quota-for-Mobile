package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t23 extends y73 {
    public final String o;
    public final long p;
    public final d23 q;

    public t23(String str, long j, d23 d23Var) {
        this.o = str;
        this.p = j;
        this.q = d23Var;
    }

    @Override // defpackage.y73
    public final fz a0() {
        return this.q;
    }

    @Override // defpackage.y73
    public final long b() {
        return this.p;
    }

    @Override // defpackage.y73
    public final pb2 j() {
        String str = this.o;
        if (str != null) {
            w43 w43Var = pb2.b;
            try {
                return on4.v(str);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }
}
