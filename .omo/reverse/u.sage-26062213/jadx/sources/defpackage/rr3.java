package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rr3 implements om3 {
    public final long n;
    public final long o;

    public rr3(long j, long j2) {
        this.n = j;
        this.o = j2;
        if (j < 0) {
            q73.m("stopTimeout(", j, " ms) cannot be negative");
            throw null;
        }
        if (j2 >= 0) {
            return;
        }
        q73.m("replayExpiration(", j2, " ms) cannot be negative");
        throw null;
    }

    @Override // defpackage.om3
    public final a81 e(vt3 vt3Var) {
        qr3 qr3Var = new qr3(this, null);
        int i = u81.a;
        return qj0.D(new k81(new w30(qr3Var, vt3Var, d01.n, -2, vy.n), new zr(2, null, 7), 1));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof rr3)) {
            return false;
        }
        rr3 rr3Var = (rr3) obj;
        return this.n == rr3Var.n && this.o == rr3Var.o;
    }

    public final int hashCode() {
        return Long.hashCode(this.o) + (Long.hashCode(this.n) * 31);
    }

    public final String toString() {
        a42 a42Var = new a42(2);
        long j = this.n;
        if (j > 0) {
            a42Var.add("stopTimeout=" + j + "ms");
        }
        long j2 = this.o;
        if (j2 < Long.MAX_VALUE) {
            a42Var.add("replayExpiration=" + j2 + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + o70.n0(tv4.l(a42Var), null, null, null, null, 63) + ')';
    }
}
