package defpackage;

import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k35 {
    public final r45 a;

    public k35(pb5 pb5Var) {
        this.a = pb5Var.l;
    }

    public final boolean a() {
        r45 r45Var = this.a;
        try {
            PackageManagerWrapper packageManagerWrapperPackageManager = Wrappers.packageManager(r45Var.a);
            if (packageManagerWrapperPackageManager != null) {
                return packageManagerWrapperPackageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.n.a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.n.b(e, "Failed to retrieve Play Store version for Install Referrer");
            return false;
        }
    }
}
