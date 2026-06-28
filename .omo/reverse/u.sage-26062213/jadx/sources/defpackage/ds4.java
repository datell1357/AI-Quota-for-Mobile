package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ds4 extends ib0 {
    public Boolean b;
    public String c;
    public bs4 d;
    public Boolean e;

    public final int A(String str, boolean z) {
        return Math.max(z ? Math.max(Math.min(E(str, e05.g0), 500), 100) : 500, 256);
    }

    public final void B() {
        ((r45) this.a).getClass();
    }

    public final String C(String str, d05 d05Var) {
        return TextUtils.isEmpty(str) ? (String) d05Var.a(null) : (String) d05Var.a(this.d.a(str, d05Var.a));
    }

    public final long D(String str, d05 d05Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) d05Var.a(null)).longValue();
        }
        String strA = this.d.a(str, d05Var.a);
        if (TextUtils.isEmpty(strA)) {
            return ((Long) d05Var.a(null)).longValue();
        }
        try {
            return ((Long) d05Var.a(Long.valueOf(Long.parseLong(strA)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) d05Var.a(null)).longValue();
        }
    }

    public final int E(String str, d05 d05Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) d05Var.a(null)).intValue();
        }
        String strA = this.d.a(str, d05Var.a);
        if (TextUtils.isEmpty(strA)) {
            return ((Integer) d05Var.a(null)).intValue();
        }
        try {
            return ((Integer) d05Var.a(Integer.valueOf(Integer.parseInt(strA)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) d05Var.a(null)).intValue();
        }
    }

    public final double F(String str, d05 d05Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) d05Var.a(null)).doubleValue();
        }
        String strA = this.d.a(str, d05Var.a);
        if (TextUtils.isEmpty(strA)) {
            return ((Double) d05Var.a(null)).doubleValue();
        }
        try {
            return ((Double) d05Var.a(Double.valueOf(Double.parseDouble(strA)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) d05Var.a(null)).doubleValue();
        }
    }

    public final boolean G(String str, d05 d05Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) d05Var.a(null)).booleanValue();
        }
        String strA = this.d.a(str, d05Var.a);
        return TextUtils.isEmpty(strA) ? ((Boolean) d05Var.a(null)).booleanValue() : ((Boolean) d05Var.a(Boolean.valueOf("1".equals(strA)))).booleanValue();
    }

    public final Bundle H() {
        r45 r45Var = (r45) this.a;
        try {
            Context context = r45Var.a;
            Context context2 = r45Var.a;
            a25 a25Var = r45Var.f;
            if (context.getPackageManager() == null) {
                r45.l(a25Var);
                a25Var.f.a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(context2).getApplicationInfo(context2.getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            r45.l(a25Var);
            a25Var.f.a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(e, "Failed to load metadata: Package name not found");
            return null;
        }
    }

    public final Boolean I(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle bundleH = H();
        if (bundleH != null) {
            if (bundleH.containsKey(str)) {
                return Boolean.valueOf(bundleH.getBoolean(str));
            }
            return null;
        }
        a25 a25Var = ((r45) this.a).f;
        r45.l(a25Var);
        a25Var.f.a("Failed to load metadata: Metadata bundle is null");
        return null;
    }

    public final boolean J() {
        ((r45) this.a).getClass();
        Boolean boolI = I("firebase_analytics_collection_deactivated");
        return boolI != null && boolI.booleanValue();
    }

    public final boolean K() {
        Boolean boolI = I("google_analytics_automatic_screen_reporting_enabled");
        return boolI == null || boolI.booleanValue();
    }

    public final u55 L(String str, boolean z) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        r45 r45Var = (r45) this.a;
        Bundle bundleH = H();
        if (bundleH == null) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.a("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = bundleH.get(str);
        }
        u55 u55Var = u55.UNINITIALIZED;
        if (obj == null) {
            return u55Var;
        }
        if (Boolean.TRUE.equals(obj)) {
            return u55.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return u55.DENIED;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return u55.POLICY;
        }
        a25 a25Var2 = r45Var.f;
        r45.l(a25Var2);
        a25Var2.i.b(str, "Invalid manifest metadata for");
        return u55Var;
    }

    public final boolean w(String str) {
        r45.j(((r45) this.a).i);
        if (ac5.W((String) e05.g1.a(null), str) || ac5.W((String) e05.h1.a(null), str) || ac5.W((String) e05.i1.a(null), str)) {
            return true;
        }
        return "1".equals(this.d.a(str, "gaia_collection_enabled"));
    }

    public final boolean x(String str) {
        return "1".equals(this.d.a(str, "measurement.event_sampling_enabled"));
    }

    public final boolean y() {
        if (this.b == null) {
            Boolean boolI = I("app_measurement_lite");
            this.b = boolI;
            if (boolI == null) {
                this.b = Boolean.FALSE;
            }
        }
        return this.b.booleanValue() || !((r45) this.a).b;
    }

    public final String z(String str) {
        r45 r45Var = (r45) this.a;
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            Preconditions.checkNotNull(str2);
            return str2;
        } catch (ClassNotFoundException e) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.b(e, "Could not find SystemProperties class");
            return "";
        } catch (IllegalAccessException e2) {
            a25 a25Var2 = r45Var.f;
            r45.l(a25Var2);
            a25Var2.f.b(e2, "Could not access SystemProperties.get()");
            return "";
        } catch (NoSuchMethodException e3) {
            a25 a25Var3 = r45Var.f;
            r45.l(a25Var3);
            a25Var3.f.b(e3, "Could not find SystemProperties.get() method");
            return "";
        } catch (InvocationTargetException e4) {
            a25 a25Var4 = r45Var.f;
            r45.l(a25Var4);
            a25Var4.f.b(e4, "SystemProperties.get() threw an exception");
            return "";
        }
    }
}
