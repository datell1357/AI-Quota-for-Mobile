package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import u.sage.MainActivity;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t3 implements pe1 {
    public final /* synthetic */ int n;

    public /* synthetic */ t3(int i, f12 f12Var) {
        this.n = 28;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        switch (this.n) {
            case 0:
                ((Context) obj).getClass();
                return tv4.E(new u3());
            case 1:
                WebView webView = (WebView) obj;
                webView.getClass();
                ez3.a.getClass();
                ra3.c(new Object[0]);
                webView.evaluateJavascript("sage(18, '');", null);
                return t64.a;
            case 2:
                ((FrameLayout) obj).getClass();
                return t64.a;
            case 3:
                Context context = (Context) obj;
                context.getClass();
                if (context instanceof ContextWrapper) {
                    return ((ContextWrapper) context).getBaseContext();
                }
                return null;
            case 4:
                s52 s52Var = (s52) obj;
                s52Var.getClass();
                String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(Long.valueOf(s52Var.c));
                StringBuilder sb = new StringBuilder();
                sb.append("Event: " + s52Var.a);
                sb.append('\n');
                sb.append("Time:  " + str);
                sb.append('\n');
                String str2 = s52Var.d;
                if (str2 == null) {
                    str2 = "N/A";
                }
                sb.append("Service: ".concat(str2));
                sb.append("\nParams: {\n");
                for (Map.Entry entry : s52Var.b.entrySet()) {
                    sb.append("  " + ((String) entry.getKey()) + ": " + entry.getValue());
                    sb.append('\n');
                }
                sb.append("}");
                return sb.toString();
            case 5:
                y84 y84Var = (y84) obj;
                y84Var.getClass();
                String lowerCase = y84Var.name().toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                return lowerCase;
            case 6:
                p84 p84Var = (p84) obj;
                p84Var.getClass();
                String strD = p84Var.d();
                if (strD == null) {
                    strD = "Unknown";
                }
                return strD + ": " + p84Var.e() + "%";
            case 7:
                Map.Entry entry2 = (Map.Entry) obj;
                entry2.getClass();
                return entry2.getKey() + "=" + entry2.getValue();
            case 8:
                return (yi) obj;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                f82 f82Var = (f82) obj;
                f82Var.c(fl4.o, (int) (f82Var.a().I() >> 32));
                f82Var.c(fl4.n, 0.0f);
                return t64.a;
            case 10:
                ((zy1) obj).a();
                return t64.a;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return t64.a;
            case 12:
                hu2 hu2Var = (hu2) obj;
                is3 is3Var = ea.b;
                hu2Var.getClass();
                if (((Context) bi4.F(hu2Var, is3Var)).getPackageManager().hasSystemFeature("android.software.leanback")) {
                    return iy.b;
                }
                gy.a.getClass();
                return fy.c;
            case 13:
                nh3.c((ph3) obj, 0);
                return t64.a;
            case 14:
                return t64.a;
            case 15:
                b24 b24Var = (b24) obj;
                b24Var.getClass();
                w80.A((ys2) b24Var);
                return Boolean.FALSE;
            case 16:
                nh3.c((ph3) obj, 1);
                return t64.a;
            case 17:
                hu2 hu2Var2 = (hu2) obj;
                lc0 lc0Var = gk1.a;
                hu2Var2.getClass();
                View view = ((ec4) bi4.F(hu2Var2, lc0Var)).a;
                while (view != null) {
                    Object tag = view.getTag(R.id.view_tree_navigation_event_dispatcher_owner);
                    if (tag != null) {
                        return tag;
                    }
                    Object objQ = fl4.q(view);
                    view = objQ instanceof View ? (View) objQ : null;
                }
                return null;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                fi0 fi0Var = (fi0) obj;
                if (fi0Var instanceof ji0) {
                    return (ji0) fi0Var;
                }
                return null;
            case 19:
                Map.Entry entry3 = (Map.Entry) obj;
                entry3.getClass();
                String str3 = (String) entry3.getKey();
                Object value = entry3.getValue();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str3);
                sb2.append(" : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    value.getClass();
                }
                sb2.append(value);
                return sb2.toString();
            case 20:
                nh3.e((ph3) obj);
                return t64.a;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                File file = (File) obj;
                file.getClass();
                String absolutePath = file.getCanonicalFile().getAbsolutePath();
                absolutePath.getClass();
                return new bn3(absolutePath);
            case 22:
                xi0 xi0Var = (xi0) obj;
                xi0Var.getClass();
                Log.w("FirebaseSessions", "CorruptionException in session configs DataStore", xi0Var);
                return w13.R;
            case ConnectionResult.API_DISABLED /* 23 */:
                return obj;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                synchronized (wo3.c) {
                    List list = wo3.i;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        ((pe1) list.get(i)).k(obj);
                    }
                }
                return t64.a;
            case 25:
                j50 j50Var = (j50) obj;
                j50Var.getClass();
                j50.a(j50Var, "JsonPrimitive", new cw1(new l6(23)));
                j50.a(j50Var, "JsonNull", new cw1(new l6(24)));
                j50.a(j50Var, "JsonLiteral", new cw1(new l6(25)));
                j50.a(j50Var, "JsonObject", new cw1(new l6(26)));
                j50.a(j50Var, "JsonArray", new cw1(new l6(27)));
                return t64.a;
            case 26:
                Map.Entry entry4 = (Map.Entry) obj;
                entry4.getClass();
                String str4 = (String) entry4.getKey();
                xv1 xv1Var = (xv1) entry4.getValue();
                StringBuilder sb3 = new StringBuilder();
                xs3.a(str4, sb3);
                sb3.append(':');
                sb3.append(xv1Var);
                return sb3.toString();
            case 27:
                List list2 = (List) obj;
                return new n12(((Number) list2.get(0)).intValue(), ((Number) list2.get(1)).intValue());
            case 28:
                return t64.a;
            default:
                xh2 xh2Var = (xh2) obj;
                int i2 = MainActivity.C;
                xh2Var.getClass();
                vw vwVar = qj2.i;
                ft1 ft1Var = xh2Var.a;
                ft1Var.p = vwVar;
                ft1Var.q = "CLAUDE";
                ft1Var.o = true;
                return t64.a;
        }
    }

    public /* synthetic */ t3(int i) {
        this.n = i;
    }
}
