package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y3 {
    public final y84 a;
    public final String b;
    public final String c;
    public final List d;

    public y3(y84 y84Var, String str, String str2, List list) {
        this.a = y84Var;
        this.b = str;
        this.c = str2;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y3)) {
            return false;
        }
        y3 y3Var = (y3) obj;
        return this.a == y3Var.a && this.b.equals(y3Var.b) && this.c.equals(y3Var.c) && this.d.equals(y3Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + xw1.m(xw1.m(this.a.hashCode() * 31, this.b, 31), this.c, 31);
    }

    public final String toString() {
        return "AccountScreenConfig(serviceType=" + this.a + ", title=" + this.b + ", landingUrl=" + this.c + ", landingPagePatterns=" + this.d + ")";
    }
}
