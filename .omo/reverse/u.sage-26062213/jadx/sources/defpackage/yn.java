package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yn extends rk0 {
    public final Context a;
    public final pr3 b;
    public final pr3 c;
    public final String d;

    public yn(Context context, pr3 pr3Var, pr3 pr3Var2, String str) {
        if (context == null) {
            q73.r("Null applicationContext");
            throw null;
        }
        this.a = context;
        if (pr3Var == null) {
            q73.r("Null wallClock");
            throw null;
        }
        this.b = pr3Var;
        if (pr3Var2 == null) {
            q73.r("Null monotonicClock");
            throw null;
        }
        this.c = pr3Var2;
        if (str != null) {
            this.d = str;
        } else {
            q73.r("Null backendName");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof rk0) {
            yn ynVar = (yn) ((rk0) obj);
            if (this.a.equals(ynVar.a) && this.b.equals(ynVar.b) && this.c.equals(ynVar.c) && this.d.equals(ynVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.a);
        sb.append(", wallClock=");
        sb.append(this.b);
        sb.append(", monotonicClock=");
        sb.append(this.c);
        sb.append(", backendName=");
        return xw1.s(sb, this.d, "}");
    }
}
