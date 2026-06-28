package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jh {
    public final String a;
    public final u8 b;

    public jh(String str, u8 u8Var) {
        String str2 = Build.MODEL;
        String str3 = Build.VERSION.RELEASE;
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = u8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jh)) {
            return false;
        }
        jh jhVar = (jh) obj;
        if (!nt1.g(this.a, jhVar.a)) {
            return false;
        }
        String str = Build.MODEL;
        if (!nt1.g(str, str)) {
            return false;
        }
        String str2 = Build.VERSION.RELEASE;
        return nt1.g(str2, str2) && this.b.equals(jhVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + ((m72.o.hashCode() + xw1.m((((Build.MODEL.hashCode() + (this.a.hashCode() * 31)) * 31) + 48517565) * 31, Build.VERSION.RELEASE, 31)) * 31);
    }

    public final String toString() {
        return "ApplicationInfo(appId=" + this.a + ", deviceModel=" + Build.MODEL + ", sessionSdkVersion=3.0.6, osVersion=" + Build.VERSION.RELEASE + ", logEnvironment=" + m72.o + ", androidAppInfo=" + this.b + ')';
    }
}
