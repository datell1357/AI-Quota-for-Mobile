package defpackage;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class xw1 {
    public static /* synthetic */ String A(int i) {
        switch (i) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case 6:
                return "STRING";
            case 7:
                return "NUMBER";
            case 8:
                return "BOOLEAN";
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return "NULL";
            case 10:
                return "END_DOCUMENT";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String B(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
    }

    public static /* synthetic */ String C(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
    }

    public static final void a(View view, int i) {
        int iF = di0.F(i);
        if (iF == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (hd1.G(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iF == 1) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (iF == 2) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iF != 3) {
            return;
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static int b(int i, g24 g24Var) {
        if (i != 1) {
            return 1;
        }
        return g24Var.b;
    }

    public static Number c(int i, ww1 ww1Var) {
        if (i == 1) {
            return Double.valueOf(ww1Var.Y());
        }
        if (i == 2) {
            return new pz1(ww1Var.q0());
        }
        if (i == 3) {
            String strQ0 = ww1Var.q0();
            if (strQ0.indexOf(46) >= 0) {
                return g(strQ0, ww1Var);
            }
            try {
                return Long.valueOf(Long.parseLong(strQ0));
            } catch (NumberFormatException unused) {
                return g(strQ0, ww1Var);
            }
        }
        String strQ02 = ww1Var.q0();
        try {
            return zf5.S(strQ02);
        } catch (NumberFormatException e) {
            StringBuilder sbA = di0.A("Cannot parse ", strQ02, "; at path ");
            sbA.append(ww1Var.K(true));
            throw new v00(5, sbA.toString(), e);
        }
    }

    public static long d(int i, g24 g24Var) {
        if (i != 1) {
            if (g24Var == null) {
                return 0L;
            }
            return g24Var.c;
        }
        if (g24Var == null) {
            return 0L;
        }
        return g24Var.d;
    }

    public static int e(int i) {
        if (i == 0) {
            return 2;
        }
        if (i == 4) {
            return 4;
        }
        if (i == 8) {
            return 3;
        }
        k21.f(di0.q(i, "Unknown visibility "));
        return 0;
    }

    public static int f(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return e(view.getVisibility());
    }

    public static Double g(String str, ww1 ww1Var) throws r92 {
        try {
            Double dValueOf = Double.valueOf(str);
            if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                if (ww1Var.B != 1) {
                    throw new r92("JSON forbids NaN and infinities: " + dValueOf + "; at path " + ww1Var.K(true));
                }
            }
            return dValueOf;
        } catch (NumberFormatException e) {
            StringBuilder sbA = di0.A("Cannot parse ", str, "; at path ");
            sbA.append(ww1Var.K(true));
            throw new v00(5, sbA.toString(), e);
        }
    }

    public static final ks3 h(int i) {
        return (ks3) ks3.b.get(di0.F(i));
    }

    public static /* synthetic */ int i(Object obj) {
        if (obj instanceof String) {
            return 2;
        }
        if (obj instanceof Boolean) {
            return 1;
        }
        if (obj instanceof Long) {
            return 3;
        }
        if (obj instanceof Double) {
            return 4;
        }
        k21.c("invalid tag type: ".concat(String.valueOf(obj.getClass())));
        return 0;
    }

    public static int j(int i, int i2, int i3) {
        return (Integer.hashCode(i) + i2) * i3;
    }

    public static int k(int i, int i2, int i3, int i4) {
        return ph2.i(i + i2 + i3, i4);
    }

    public static int l(int i, int i2, long j) {
        return (Long.hashCode(j) + i) * i2;
    }

    public static int m(int i, String str, int i2) {
        return (str.hashCode() + i) * i2;
    }

    public static int n(int i, boolean z, int i2) {
        return (Boolean.hashCode(z) + i) * i2;
    }

    public static int o(ay3 ay3Var, int i, int i2) {
        return (ay3Var.hashCode() + i) * i2;
    }

    public static String p(int i, String str, StringBuilder sb) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static String q(String str, int i, String str2) {
        return str + i + str2;
    }

    public static String r(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String s(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String t(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb.toString();
    }

    public static StringBuilder u(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder v(String str, int i, String str2, int i2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }

    public static void w(int i, int i2, int i3, int i4, int i5) {
        k30.c(i);
        k30.c(i2);
        k30.c(i3);
        k30.c(i4);
        k30.c(i5);
    }

    public static /* synthetic */ void x(AutoCloseable autoCloseable) throws Exception {
        boolean zIsTerminated;
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (!(autoCloseable instanceof ExecutorService)) {
            if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
                return;
            }
            if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
                return;
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
                return;
            } else {
                q73.d();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) autoCloseable;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    executorService.shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static /* synthetic */ void y(Object obj) throws Exception {
        boolean zIsTerminated;
        if (obj instanceof AutoCloseable) {
            ((AutoCloseable) obj).close();
            return;
        }
        if (!(obj instanceof ExecutorService)) {
            if (obj instanceof TypedArray) {
                ((TypedArray) obj).recycle();
                return;
            }
            if (obj instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) obj).release();
                return;
            } else if (obj instanceof MediaDrm) {
                ((MediaDrm) obj).release();
                return;
            } else {
                q73.d();
                return;
            }
        }
        ExecutorService executorService = (ExecutorService) obj;
        if (executorService == ForkJoinPool.commonPool() || (zIsTerminated = executorService.isTerminated())) {
            return;
        }
        executorService.shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    executorService.shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static /* synthetic */ String z(int i) {
        switch (i) {
            case 1:
                return "OK";
            case 2:
                return "CANCELLED";
            case 3:
                return "UNKNOWN";
            case 4:
                return "INVALID_ARGUMENT";
            case 5:
                return "DEADLINE_EXCEEDED";
            case 6:
                return "NOT_FOUND";
            case 7:
                return "ALREADY_EXISTS";
            case 8:
                return "PERMISSION_DENIED";
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return "RESOURCE_EXHAUSTED";
            case 10:
                return "FAILED_PRECONDITION";
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return "ABORTED";
            case 12:
                return "OUT_OF_RANGE";
            case 13:
                return "UNIMPLEMENTED";
            case 14:
                return "INTERNAL";
            case 15:
                return "UNAVAILABLE";
            case 16:
                return "DATA_LOSS";
            case 17:
                return "UNAUTHENTICATED";
            default:
                throw null;
        }
    }
}
