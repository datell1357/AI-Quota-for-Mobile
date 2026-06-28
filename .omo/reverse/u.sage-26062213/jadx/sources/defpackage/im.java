package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class im {
    public final int a;
    public final long b;

    public im(int i, long j) {
        if (i == 0) {
            q73.r("Null status");
            throw null;
        }
        this.a = i;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof im)) {
            return false;
        }
        im imVar = (im) obj;
        return di0.i(this.a, imVar.a) && this.b == imVar.b;
    }

    public final int hashCode() {
        int iF = (di0.F(this.a) ^ 1000003) * 1000003;
        long j = this.b;
        return ((int) ((j >>> 32) ^ j)) ^ iF;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(di0.H(this.a));
        sb.append(", nextRequestWaitMillis=");
        return di0.x(sb, this.b, "}");
    }
}
