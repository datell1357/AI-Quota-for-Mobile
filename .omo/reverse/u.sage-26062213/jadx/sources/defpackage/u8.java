package defpackage;

import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u8 {
    public final String a;
    public final String b;
    public final String c;
    public final zy2 d;
    public final ArrayList e;

    public u8(String str, String str2, String str3, zy2 zy2Var, ArrayList arrayList) {
        String str4 = Build.MANUFACTURER;
        str2.getClass();
        str3.getClass();
        str4.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = zy2Var;
        this.e = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u8)) {
            return false;
        }
        u8 u8Var = (u8) obj;
        if (!this.a.equals(u8Var.a) || !nt1.g(this.b, u8Var.b) || !nt1.g(this.c, u8Var.c)) {
            return false;
        }
        String str = Build.MANUFACTURER;
        return nt1.g(str, str) && this.d.equals(u8Var.d) && this.e.equals(u8Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + xw1.m(xw1.m(xw1.m(this.a.hashCode() * 31, this.b, 31), this.c, 31), Build.MANUFACTURER, 31)) * 31);
    }

    public final String toString() {
        return "AndroidApplicationInfo(packageName=" + this.a + ", versionName=" + this.b + ", appBuildVersion=" + this.c + ", deviceManufacturer=" + Build.MANUFACTURER + ", currentProcessDetails=" + this.d + ", appProcessDetails=" + this.e + ')';
    }
}
