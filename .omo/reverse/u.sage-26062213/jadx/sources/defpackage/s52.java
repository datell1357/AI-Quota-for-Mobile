package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s52 {
    public final String a;
    public final LinkedHashMap b;
    public final long c;
    public final String d;

    public s52(String str, LinkedHashMap linkedHashMap) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Object obj = linkedHashMap.get("service_type");
        String str2 = obj instanceof String ? (String) obj : null;
        this.a = str;
        this.b = linkedHashMap;
        this.c = jCurrentTimeMillis;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s52)) {
            return false;
        }
        s52 s52Var = (s52) obj;
        return nt1.g(this.a, s52Var.a) && nt1.g(this.b, s52Var.b) && this.c == s52Var.c && nt1.g(this.d, s52Var.d);
    }

    public final int hashCode() {
        int iL = xw1.l((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
        String str = this.d;
        return iL + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "LocalAnalyticsEvent(name=" + this.a + ", params=" + this.b + ", timestamp=" + this.c + ", serviceType=" + this.d + ")";
    }
}
