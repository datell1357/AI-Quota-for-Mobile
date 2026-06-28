package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class n8 {
    public final Context a;
    public final nv3 b = new nv3(new m8(this, 0));
    public final wr3 c;
    public final b23 d;
    public final wr3 e;
    public final LinkedHashSet f;

    public n8(Context context) {
        this.a = context;
        wr3 wr3VarA = xr3.a(g01.n);
        this.c = wr3VarA;
        this.d = new b23(wr3VarA);
        this.e = xr3.a(Boolean.FALSE);
        this.f = new LinkedHashSet();
    }

    public final void a(String str, Bundle bundle) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (bundle != null) {
            try {
                Set<String> setKeySet = bundle.keySet();
                if (setKeySet != null) {
                    for (String str2 : setKeySet) {
                        Object obj = bundle.get(str2);
                        if (obj != null) {
                            linkedHashMap.put(str2, obj);
                        }
                    }
                }
            } catch (Exception unused) {
                ez3.a.getClass();
                ra3.n(new Object[0]);
            }
        }
        s52 s52Var = new s52(str, linkedHashMap);
        if (((Boolean) this.e.getValue()).booleanValue()) {
            o70.n0(linkedHashMap.entrySet(), null, null, null, new t3(7), 31);
            ez3.a.getClass();
            ra3[] ra3VarArr = ez3.b;
            int length = ra3VarArr.length;
            int i = 0;
            while (i < length) {
                ra3 ra3Var = ra3VarArr[i];
                i++;
                ((ThreadLocal) ra3Var.o).set("AnalyticsEvent");
            }
            ra3.h(new Object[0]);
        }
        ArrayList arrayListD0 = o70.D0((Collection) this.c.getValue());
        arrayListD0.add(0, s52Var);
        if (arrayListD0.size() > 20) {
            arrayListD0.remove(arrayListD0.size() - 1);
        }
        wr3 wr3Var = this.c;
        wr3Var.getClass();
        wr3Var.i(null, arrayListD0);
    }

    public final FirebaseAnalytics b() {
        Object value = this.b.getValue();
        value.getClass();
        return (FirebaseAnalytics) value;
    }

    public final void c(y84 y84Var, String str, String str2) {
        ez3.a.getClass();
        ra3.f(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("error_message", zs3.X0(100, str2));
        if (y84Var != null) {
            bundle.putString("service_type", y84Var.name());
        }
        a("error_".concat(str), bundle);
        b().a("error_".concat(str), bundle);
    }

    public final void d(String str, Map map) {
        Pattern patternCompile = Pattern.compile("[^a-zA-Z0-9_]");
        patternCompile.getClass();
        String strReplaceAll = patternCompile.matcher(str).replaceAll("_");
        strReplaceAll.getClass();
        String strX0 = zs3.X0(40, strReplaceAll);
        if (strX0.length() == 0) {
            q73.l("Char sequence is empty.");
            return;
        }
        if (Character.isDigit(strX0.charAt(0))) {
            strX0 = "e_".concat(strX0);
        }
        ra3 ra3Var = ez3.a;
        "AnalyticsManager: logEvent - ".concat(strX0);
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            String str2 = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                bundle.putString(str2, (String) value);
            } else if (value instanceof Integer) {
                bundle.putInt(str2, ((Number) value).intValue());
            } else if (value instanceof Long) {
                bundle.putLong(str2, ((Number) value).longValue());
            } else if (value instanceof Double) {
                bundle.putDouble(str2, ((Number) value).doubleValue());
            } else if (value instanceof Boolean) {
                bundle.putBoolean(str2, ((Boolean) value).booleanValue());
            } else {
                bundle.putString(str2, value.toString());
            }
        }
        a(strX0, bundle);
        b().a(strX0, bundle);
    }

    public final void e(y84 y84Var) {
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("service_type", y84Var.name());
        a("logout", bundle);
        b().a("logout", bundle);
        String lowerCase = y84Var.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        l(lowerCase.concat("_plan"), null);
    }

    public final void f(y84 y84Var) {
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("service_type", y84Var.name());
        a("notification_clicked", bundle);
        b().a("notification_clicked", bundle);
    }

    public final void g(String str, String str2) {
        str.getClass();
        if (gt3.y0(str, "settings/", false)) {
            String strS0 = zs3.S0(str, "settings/");
            we3.c.getClass();
            String lowerCase = strS0.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            str = lowerCase.concat("_settings");
        } else if (gt3.y0(str, "account/", false)) {
            String strS02 = zs3.S0(str, "account/");
            ne3.c.getClass();
            String lowerCase2 = strS02.toLowerCase(Locale.ROOT);
            lowerCase2.getClass();
            str = lowerCase2.concat("_account");
        } else {
            pe3 pe3Var = pe3.c;
            if (str.equals((String) pe3Var.a)) {
                str = (String) pe3Var.b;
            } else {
                re3 re3Var = re3.c;
                if (str.equals((String) re3Var.a)) {
                    str = (String) re3Var.b;
                } else {
                    te3 te3Var = te3.c;
                    if (str.equals((String) te3Var.a)) {
                        str = (String) te3Var.b;
                    } else {
                        se3 se3Var = se3.c;
                        if (str.equals((String) se3Var.a)) {
                            str = (String) se3Var.b;
                        }
                    }
                }
            }
        }
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("screen_name", str);
        bundle.putString("screen_class", str2);
        a("screen_view", bundle);
        b().a("screen_view", bundle);
    }

    public final void h(y84 y84Var, v43 v43Var) {
        y84Var.getClass();
        v43Var.getClass();
        ra3 ra3Var = ez3.a;
        y84Var.name();
        String str = v43Var.a;
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("service_type", y84Var.name());
        bundle.putString("source", str);
        a("session_expired", bundle);
        b().a("session_expired", bundle);
        String lowerCase = y84Var.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        l(lowerCase.concat("_plan"), null);
    }

    public final void i(y84 y84Var, String str, String str2) {
        y84Var.getClass();
        str2.getClass();
        String str3 = y84Var.q;
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("service_type", str3);
        bundle.putString("setting_name", str);
        bundle.putString("setting_value", str2);
        a("settings_changed", bundle);
        b().a("settings_changed", bundle);
    }

    public final void j(y84 y84Var, v43 v43Var, List list, boolean z, w3 w3Var) {
        Integer numH;
        Integer numD;
        Integer numG;
        y84Var.getClass();
        v43Var.getClass();
        String str = v43Var.a;
        list.getClass();
        String strN0 = o70.n0(list, "; ", null, null, new t3(6), 30);
        String strF = w3Var != null ? w3Var.f() : null;
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("service_type", y84Var.name());
        bundle.putString("refresh_source", str);
        bundle.putBoolean("is_demo_mode", z);
        if (strF != null) {
            bundle.putString("account_plan", strF);
        }
        if (w3Var != null && (numG = w3Var.g()) != null) {
            bundle.putInt("plan_tier_code", numG.intValue());
        }
        if (w3Var != null && (numD = w3Var.d()) != null) {
            bundle.putInt("long_window_limit", numD.intValue());
        }
        if (w3Var != null && (numH = w3Var.h()) != null) {
            bundle.putInt("short_window_limit", numH.intValue());
        }
        if (strN0.length() > 0) {
            bundle.putString("usage_details", zs3.X0(100, strN0));
        }
        a("usage_refreshed", bundle);
        b().a("usage_refreshed", bundle);
    }

    public final void k(y84 y84Var) {
        ra3 ra3Var = ez3.a;
        y84Var.name();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putString("service_type", y84Var.name());
        a("widget_clicked", bundle);
        b().a("widget_clicked", bundle);
    }

    public final void l(String str, String str2) {
        ez3.a.getClass();
        ra3.c(new Object[0]);
        uy4 uy4Var = b().a;
        uy4Var.getClass();
        uy4Var.c(new lx4(uy4Var, str, str2));
    }
}
