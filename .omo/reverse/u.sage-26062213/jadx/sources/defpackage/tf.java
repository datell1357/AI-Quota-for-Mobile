package defpackage;

import android.app.Application;
import android.app.Notification;
import android.app.job.JobParameters;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.PrecomputedText;
import android.view.DisplayCutout;
import android.view.ViewConfiguration;
import android.widget.TextView;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class tf {
    public static Handler a(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static Handler b(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static List c(DisplayCutout displayCutout) {
        return displayCutout.getBoundingRects();
    }

    public static String[] d(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static long e(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    public static void f(JobParameters jobParameters) {
        jobParameters.getNetwork();
    }

    public static String g() {
        String processName = Application.getProcessName();
        processName.getClass();
        return processName;
    }

    public static int h(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String i(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int j(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int k(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int l(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int m(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static int n(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static PrecomputedText.Params o(xg xgVar) {
        return xgVar.getTextMetricsParams();
    }

    public static int p(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri q(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static void r(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    public static void s(Notification.Action.Builder builder) {
        builder.setSemanticAction(0);
    }

    public static boolean t(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
