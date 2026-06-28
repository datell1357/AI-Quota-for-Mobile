package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class om extends kk0 {
    public final String b;
    public final String c;
    public final int d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final jk0 k;
    public final pj0 l;
    public final mj0 m;

    public om(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, jk0 jk0Var, pj0 pj0Var, mj0 mj0Var) {
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = str8;
        this.k = jk0Var;
        this.l = pj0Var;
        this.m = mj0Var;
    }

    public final nm a() {
        nm nmVar = new nm();
        nmVar.a = this.b;
        nmVar.b = this.c;
        nmVar.c = this.d;
        nmVar.d = this.e;
        nmVar.e = this.f;
        nmVar.f = this.g;
        nmVar.g = this.h;
        nmVar.h = this.i;
        nmVar.i = this.j;
        nmVar.j = this.k;
        nmVar.k = this.l;
        nmVar.l = this.m;
        nmVar.m = (byte) 1;
        return nmVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof kk0) {
            om omVar = (om) ((kk0) obj);
            if (this.b.equals(omVar.b) && this.c.equals(omVar.c) && this.d == omVar.d && this.e.equals(omVar.e)) {
                String str = omVar.f;
                String str2 = this.f;
                if (str2 != null ? str2.equals(str) : str == null) {
                    String str3 = omVar.g;
                    String str4 = this.g;
                    if (str4 != null ? str4.equals(str3) : str3 == null) {
                        String str5 = omVar.h;
                        String str6 = this.h;
                        if (str6 != null ? str6.equals(str5) : str5 == null) {
                            if (this.i.equals(omVar.i) && this.j.equals(omVar.j)) {
                                jk0 jk0Var = omVar.k;
                                jk0 jk0Var2 = this.k;
                                if (jk0Var2 != null ? jk0Var2.equals(jk0Var) : jk0Var == null) {
                                    pj0 pj0Var = omVar.l;
                                    pj0 pj0Var2 = this.l;
                                    if (pj0Var2 != null ? pj0Var2.equals(pj0Var) : pj0Var == null) {
                                        mj0 mj0Var = omVar.m;
                                        mj0 mj0Var2 = this.m;
                                        if (mj0Var2 != null ? mj0Var2.equals(mj0Var) : mj0Var == null) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d) * 1000003) ^ this.e.hashCode()) * 1000003;
        String str = this.f;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.h;
        int iHashCode4 = (((((iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.i.hashCode()) * 1000003) ^ this.j.hashCode()) * 1000003;
        jk0 jk0Var = this.k;
        int iHashCode5 = (iHashCode4 ^ (jk0Var == null ? 0 : jk0Var.hashCode())) * 1000003;
        pj0 pj0Var = this.l;
        int iHashCode6 = (iHashCode5 ^ (pj0Var == null ? 0 : pj0Var.hashCode())) * 1000003;
        mj0 mj0Var = this.m;
        return iHashCode6 ^ (mj0Var != null ? mj0Var.hashCode() : 0);
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.b + ", gmpAppId=" + this.c + ", platform=" + this.d + ", installationUuid=" + this.e + ", firebaseInstallationId=" + this.f + ", firebaseAuthenticationToken=" + this.g + ", appQualitySessionId=" + this.h + ", buildVersion=" + this.i + ", displayVersion=" + this.j + ", session=" + this.k + ", ndkPayload=" + this.l + ", appExitInfo=" + this.m + "}";
    }
}
