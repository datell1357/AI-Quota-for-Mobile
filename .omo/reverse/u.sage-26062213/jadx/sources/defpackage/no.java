package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class no extends n72 {
    public final long a;
    public final Integer b;
    public final f90 c;
    public final long d;
    public final byte[] e;
    public final String f;
    public final long g;
    public final il2 h;
    public final z31 i;

    public no(long j, Integer num, f90 f90Var, long j2, byte[] bArr, String str, long j3, il2 il2Var, z31 z31Var) {
        this.a = j;
        this.b = num;
        this.c = f90Var;
        this.d = j2;
        this.e = bArr;
        this.f = str;
        this.g = j3;
        this.h = il2Var;
        this.i = z31Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n72) {
            n72 n72Var = (n72) obj;
            no noVar = (no) n72Var;
            if (this.a == noVar.a) {
                Integer num = noVar.b;
                Integer num2 = this.b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    f90 f90Var = noVar.c;
                    f90 f90Var2 = this.c;
                    if (f90Var2 != null ? f90Var2.equals(f90Var) : f90Var == null) {
                        if (this.d == noVar.d) {
                            if (Arrays.equals(this.e, n72Var instanceof no ? ((no) n72Var).e : noVar.e)) {
                                String str = noVar.f;
                                String str2 = this.f;
                                if (str2 != null ? str2.equals(str) : str == null) {
                                    if (this.g == noVar.g) {
                                        il2 il2Var = noVar.h;
                                        il2 il2Var2 = this.h;
                                        if (il2Var2 != null ? il2Var2.equals(il2Var) : il2Var == null) {
                                            z31 z31Var = noVar.i;
                                            z31 z31Var2 = this.i;
                                            if (z31Var2 != null ? z31Var2.equals(z31Var) : z31Var == null) {
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
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode = (i ^ (num == null ? 0 : num.hashCode())) * 1000003;
        f90 f90Var = this.c;
        int iHashCode2 = (iHashCode ^ (f90Var == null ? 0 : f90Var.hashCode())) * 1000003;
        long j2 = this.d;
        int iHashCode3 = (((iHashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.e)) * 1000003;
        String str = this.f;
        int iHashCode4 = (iHashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.g;
        int i2 = (iHashCode4 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        il2 il2Var = this.h;
        int iHashCode5 = (i2 ^ (il2Var == null ? 0 : il2Var.hashCode())) * 1000003;
        z31 z31Var = this.i;
        return iHashCode5 ^ (z31Var != null ? z31Var.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.a + ", eventCode=" + this.b + ", complianceData=" + this.c + ", eventUptimeMs=" + this.d + ", sourceExtension=" + Arrays.toString(this.e) + ", sourceExtensionJsonProto3=" + this.f + ", timezoneOffsetSeconds=" + this.g + ", networkConnectionInfo=" + this.h + ", experimentIds=" + this.i + "}";
    }
}
