package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hz3 {
    public static final gz3 Companion = new gz3();
    public final long a;
    public final long b;
    public final long c;

    public /* synthetic */ hz3(int i, long j, long j2, long j3) {
        if (1 != (i & 1)) {
            w80.X(i, 1, fz3.a.d());
            throw null;
        }
        this.a = j;
        this.b = (i & 2) == 0 ? j * 1000 : j2;
        if ((i & 4) == 0) {
            this.c = j / 1000;
        } else {
            this.c = j3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hz3) && this.a == ((hz3) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return "Time(ms=" + this.a + ')';
    }

    public hz3(long j) {
        this.a = j;
        this.b = j * 1000;
        this.c = j / 1000;
    }
}
