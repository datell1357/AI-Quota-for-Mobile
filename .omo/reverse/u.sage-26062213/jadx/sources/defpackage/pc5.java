package defpackage;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pc5 {
    public final boolean a;
    public final List b;
    public final zm4 c;
    public final String d;
    public final String e;
    public final List f;
    public final List g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final k95 k;

    public pc5(boolean z, lp1 lp1Var, zm4 zm4Var, String str, String str2, lp1 lp1Var2, lp1 lp1Var3, boolean z2, boolean z3, boolean z4, k95 k95Var) {
        lp1Var.getClass();
        zm4Var.getClass();
        str.getClass();
        str2.getClass();
        lp1Var2.getClass();
        lp1Var3.getClass();
        k95Var.getClass();
        this.a = z;
        this.b = lp1Var;
        this.c = zm4Var;
        this.d = str;
        this.e = str2;
        this.f = lp1Var2;
        this.g = lp1Var3;
        this.h = z2;
        this.i = z3;
        this.j = z4;
        this.k = k95Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pc5)) {
            return false;
        }
        pc5 pc5Var = (pc5) obj;
        return this.a == pc5Var.a && nt1.g(this.b, pc5Var.b) && nt1.g(this.c, pc5Var.c) && nt1.g(this.d, pc5Var.d) && nt1.g(this.e, pc5Var.e) && nt1.g(this.f, pc5Var.f) && nt1.g(this.g, pc5Var.g) && this.h == pc5Var.h && this.i == pc5Var.i && this.j == pc5Var.j && nt1.g(this.k, pc5Var.k);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.a), this.b, this.c, this.d, this.e, this.f, this.g, Boolean.valueOf(this.h), Boolean.valueOf(this.i), Boolean.valueOf(this.j));
    }

    public final String toString() {
        boolean z = this.a;
        int length = String.valueOf(z).length();
        List list = this.b;
        int length2 = String.valueOf(list).length();
        zm4 zm4Var = this.c;
        int length3 = String.valueOf(zm4Var).length();
        String str = this.d;
        int length4 = String.valueOf(str).length();
        String str2 = this.e;
        int length5 = String.valueOf(str2).length();
        List list2 = this.f;
        int length6 = String.valueOf(list2).length();
        List list3 = this.g;
        int length7 = String.valueOf(list3).length();
        boolean z2 = this.h;
        int length8 = String.valueOf(z2).length();
        boolean z3 = this.i;
        int length9 = String.valueOf(z3).length();
        boolean z4 = this.j;
        int length10 = String.valueOf(z4).length();
        k95 k95Var = this.k;
        StringBuilder sb = new StringBuilder(length + 59 + length2 + 9 + length3 + 10 + length4 + 17 + length5 + 30 + length6 + 30 + length7 + 24 + length8 + 26 + length9 + 20 + length10 + 14 + String.valueOf(k95Var).length() + 1);
        sb.append("SharedStorageInfo(shouldUseSharedStorage=");
        sb.append(z);
        sb.append(", enabledBackings=");
        sb.append(list);
        sb.append(", secret=");
        sb.append(zm4Var);
        sb.append(", dirPath=");
        sb.append(str);
        sb.append(", gmsCoreDirPath=");
        sb.append(str2);
        sb.append(", includeStaticConfigPackages=");
        sb.append(list2);
        sb.append(", excludeStaticConfigPackages=");
        sb.append(list3);
        sb.append(", hasStorageInfoFromGms=");
        sb.append(z2);
        sb.append(", allowEmptySnapshotToken=");
        sb.append(z3);
        sb.append(", enableCommitV2Api=");
        sb.append(z4);
        sb.append(", clientFlags=");
        sb.append(k95Var);
        sb.append(")");
        return sb.toString();
    }
}
