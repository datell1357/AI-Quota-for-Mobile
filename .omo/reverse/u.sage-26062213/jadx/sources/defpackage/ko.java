package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ko {
    public final String a;
    public final String b;
    public final String c;
    public final fp d;
    public final int e;

    public ko(String str, String str2, String str3, fp fpVar, int i) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = fpVar;
        this.e = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ko)) {
            return false;
        }
        ko koVar = (ko) obj;
        String str = koVar.a;
        String str2 = this.a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        String str3 = koVar.b;
        String str4 = this.b;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        String str5 = koVar.c;
        String str6 = this.c;
        if (str6 == null) {
            if (str5 != null) {
                return false;
            }
        } else if (!str6.equals(str5)) {
            return false;
        }
        fp fpVar = koVar.d;
        fp fpVar2 = this.d;
        if (fpVar2 == null) {
            if (fpVar != null) {
                return false;
            }
        } else if (!fpVar2.equals(fpVar)) {
            return false;
        }
        int i = koVar.e;
        int i2 = this.e;
        return i2 == 0 ? i == 0 : di0.i(i2, i);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        fp fpVar = this.d;
        int iHashCode4 = (iHashCode3 ^ (fpVar == null ? 0 : fpVar.hashCode())) * 1000003;
        int i = this.e;
        return iHashCode4 ^ (i != 0 ? di0.F(i) : 0);
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.a + ", fid=" + this.b + ", refreshToken=" + this.c + ", authToken=" + this.d + ", responseCode=" + di0.I(this.e) + "}";
    }
}
