package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cp {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final gw4 f;

    public cp(String str, String str2, String str3, String str4, int i, gw4 gw4Var) {
        if (str == null) {
            q73.r("Null appIdentifier");
            throw null;
        }
        this.a = str;
        if (str2 == null) {
            q73.r("Null versionCode");
            throw null;
        }
        this.b = str2;
        if (str3 == null) {
            q73.r("Null versionName");
            throw null;
        }
        this.c = str3;
        if (str4 == null) {
            q73.r("Null installUuid");
            throw null;
        }
        this.d = str4;
        this.e = i;
        this.f = gw4Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof cp) {
            cp cpVar = (cp) obj;
            return this.a.equals(cpVar.a) && this.b.equals(cpVar.b) && this.c.equals(cpVar.c) && this.d.equals(cpVar.d) && this.e == cpVar.e && this.f == cpVar.f;
        }
        return false;
    }

    public final int hashCode() {
        return this.f.hashCode() ^ ((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e) * 1000003);
    }

    public final String toString() {
        return "AppData{appIdentifier=" + this.a + ", versionCode=" + this.b + ", versionName=" + this.c + ", installUuid=" + this.d + ", deliveryMechanism=" + this.e + ", developmentPlatformProvider=" + this.f + "}";
    }
}
