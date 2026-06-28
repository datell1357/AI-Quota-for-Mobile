package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a95 implements Comparable {
    public final long n;
    public final String o;
    public final int p;
    public final long q;
    public final Object r;
    public final RuntimeException s;

    public a95(long j, String str, int i, long j2, Object obj) {
        n44.U(((j > 0L ? 1 : (j == 0L ? 0 : -1)) == 0) == (str != null));
        this.n = j;
        this.o = str;
        this.p = i;
        this.q = j2;
        this.r = obj;
        if (i != 5) {
            this.s = null;
            return;
        }
        if (obj == null) {
            this.s = new NullPointerException("Null stringOrBytes");
        } else if ((obj instanceof byte[]) || (obj instanceof zm4)) {
            this.s = null;
        } else {
            this.s = new RuntimeException("Wrong stringOrBytes type: ".concat(String.valueOf(obj.getClass())));
        }
    }

    public final Object a() {
        int i = this.p;
        if (i == 0) {
            return Boolean.FALSE;
        }
        if (i == 1) {
            return Boolean.TRUE;
        }
        long j = this.q;
        if (i == 2) {
            return Long.valueOf(j);
        }
        if (i == 3) {
            return Double.valueOf(Double.longBitsToDouble(j));
        }
        Object obj = this.r;
        if (i == 4) {
            obj.getClass();
            return obj;
        }
        if (i != 5) {
            k21.c("Impossible, this was validated when parsed or created");
            return null;
        }
        obj.getClass();
        try {
            return obj instanceof byte[] ? (byte[]) obj : ((zm4) obj).l();
        } catch (Throwable th) {
            RuntimeException runtimeException = this.s;
            if (runtimeException != null) {
                th.addSuppressed(runtimeException);
            }
            throw th;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        a95 a95Var = (a95) obj;
        long j = a95Var.n;
        long j2 = this.n;
        int iCompare = Long.compare(j2, j);
        if (iCompare != 0) {
            return iCompare;
        }
        if (j2 != 0) {
            return 0;
        }
        String str = this.o;
        str.getClass();
        String str2 = a95Var.o;
        str2.getClass();
        return str.compareTo(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a95)) {
            return false;
        }
        a95 a95Var = (a95) obj;
        return this.n == a95Var.n && Objects.equals(this.o, a95Var.o);
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.n), this.o);
    }

    public final String toString() {
        String string = this.o;
        if (string == null) {
            string = Long.toString(this.n);
        }
        String strValueOf = String.valueOf(a());
        return di0.y(new StringBuilder(String.valueOf(string).length() + 1 + strValueOf.length()), string, ":", strValueOf);
    }
}
