package defpackage;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.icu.text.DecimalFormatSymbols;
import android.os.Binder;
import android.os.Build;
import android.os.Parcelable;
import android.os.Trace;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.format.DateFormat;
import android.text.method.PasswordTransformationMethod;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.common.api.Api;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.http.HttpStatusCodes;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import u.sage.R;
import u.sage.a;
import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class kt4 {
    public static ClassLoader o = null;
    public static Thread p = null;
    public static final float[][] q = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    public static final float[][] r = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    public static final float[] s = {95.047f, 100.0f, 108.883f};
    public static final float[][] t = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Class[] f172u = {Serializable.class, Parcelable.class, String.class, SparseArray.class, Binder.class, Size.class, SizeF.class};
    public static final lx1[] v = new lx1[0];
    public static so1 w = null;
    public static boolean x = false;
    public static Method y;
    public final /* synthetic */ int n;

    public /* synthetic */ kt4(int i) {
        this.n = i;
    }

    public static final long C(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / 2.0f;
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L)) / 2.0f)) & 4294967295L) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static final String[] D(qg0 qg0Var) {
        qg0Var.getClass();
        return (String[]) ((ja) qg0Var).b.toArray(new String[0]);
    }

    public static final so1 E() {
        so1 so1Var = w;
        if (so1Var != null) {
            return so1Var;
        }
        ro1 ro1Var = new ro1("Filled.DataUsage", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = ea4.a;
        sp3 sp3Var = new sp3(t70.b);
        ct2 ct2Var = new ct2();
        ct2Var.h(13.0f, 2.05f);
        ct2Var.m(3.03f);
        ct2Var.c(3.39f, 0.49f, 6.0f, 3.39f, 6.0f, 6.92f);
        ct2Var.c(0.0f, 0.9f, -0.18f, 1.75f, -0.48f, 2.54f);
        ct2Var.g(2.6f, 1.53f);
        ct2Var.c(0.56f, -1.24f, 0.88f, -2.62f, 0.88f, -4.07f);
        ct2Var.c(0.0f, -5.18f, -3.95f, -9.45f, -9.0f, -9.95f);
        ct2Var.a();
        ct2Var.h(12.0f, 19.0f);
        ct2Var.c(-3.87f, 0.0f, -7.0f, -3.13f, -7.0f, -7.0f);
        ct2Var.c(0.0f, -3.53f, 2.61f, -6.43f, 6.0f, -6.92f);
        ct2Var.l(2.05f);
        ct2Var.c(-5.06f, 0.5f, -9.0f, 4.76f, -9.0f, 9.95f);
        ct2Var.c(0.0f, 5.52f, 4.47f, 10.0f, 9.99f, 10.0f);
        ct2Var.c(3.31f, 0.0f, 6.24f, -1.61f, 8.06f, -4.09f);
        ct2Var.g(-2.6f, -1.53f);
        ct2Var.b(16.17f, 17.98f, 14.21f, 19.0f, 12.0f, 19.0f);
        ct2Var.a();
        ro1.a(ro1Var, ct2Var.n, sp3Var);
        so1 so1VarB = ro1Var.b();
        w = so1VarB;
        return so1VarB;
    }

    public static final float G(Layout layout, int i, Paint paint) {
        float fAbs;
        float width;
        float lineLeft = layout.getLineLeft(i);
        ThreadLocal threadLocal = px3.a;
        if (layout.getEllipsisCount(i) <= 0 || layout.getParagraphDirection(i) != 1 || lineLeft >= 0.0f) {
            return 0.0f;
        }
        float fMeasureText = paint.measureText("…") + (layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)) - lineLeft);
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment == null ? -1 : up1.a[paragraphAlignment.ordinal()]) == 1) {
            fAbs = Math.abs(lineLeft);
            width = (layout.getWidth() - fMeasureText) / 2.0f;
        } else {
            fAbs = Math.abs(lineLeft);
            width = layout.getWidth() - fMeasureText;
        }
        return width + fAbs;
    }

    public static final float H(Layout layout, int i, Paint paint) {
        float width;
        float width2;
        ThreadLocal threadLocal = px3.a;
        if (layout.getEllipsisCount(i) <= 0) {
            return 0.0f;
        }
        if (layout.getParagraphDirection(i) != -1 || layout.getWidth() >= layout.getLineRight(i)) {
            return 0.0f;
        }
        float fMeasureText = paint.measureText("…") + (layout.getLineRight(i) - layout.getPrimaryHorizontal(layout.getEllipsisStart(i) + layout.getLineStart(i)));
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i);
        if ((paragraphAlignment != null ? up1.a[paragraphAlignment.ordinal()] : -1) == 1) {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = (layout.getWidth() - fMeasureText) / 2.0f;
        } else {
            width = layout.getWidth() - layout.getLineRight(i);
            width2 = layout.getWidth() - fMeasureText;
        }
        return width - width2;
    }

    public static final String I(a84 a84Var) {
        List listM = M(a84Var);
        String str = a84Var.b;
        if (listM.isEmpty()) {
            return null;
        }
        String str2 = a84Var.e;
        str2.getClass();
        if (!gt3.y0(str2, str, false)) {
            str = "";
        }
        return o70.n0(listM, a84Var.b, str, null, null, 60);
    }

    public static final o20 J(dh0 dh0Var) {
        if (!(dh0Var instanceof su0)) {
            return new o20(1, dh0Var);
        }
        o20 o20VarO = ((su0) dh0Var).o();
        if (o20VarO != null) {
            if (!o20VarO.F()) {
                o20VarO = null;
            }
            if (o20VarO != null) {
                return o20VarO;
            }
        }
        return new o20(2, dh0Var);
    }

    public static final List M(a84 a84Var) {
        String str = a84Var.e;
        if (str == null) {
            return g01.n;
        }
        ArrayList arrayList = new ArrayList();
        int i = -1;
        while (i < str.length()) {
            int i2 = i + 1;
            int iF0 = zs3.F0(str, '/', i2, 4);
            if (iF0 == -1) {
                iF0 = str.length();
            }
            String strSubstring = str.substring(i2, iF0);
            if (strSubstring.length() > 0) {
                arrayList.add(strSubstring);
            }
            i = iF0;
        }
        return arrayList;
    }

    public static gx2 O(xg xgVar) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new gx2(tf.o(xgVar));
        }
        TextPaint textPaint = new TextPaint(xgVar.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = xgVar.getBreakStrategy();
        int hyphenationFrequency = xgVar.getHyphenationFrequency();
        if (xgVar.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i < 28 || (xgVar.getInputType() & 15) != 3) {
            boolean z = xgVar.getLayoutDirection() == 1;
            switch (xgVar.getTextDirection()) {
                case 2:
                    textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                    break;
                case 3:
                    textDirectionHeuristic = TextDirectionHeuristics.LTR;
                    break;
                case 4:
                    textDirectionHeuristic = TextDirectionHeuristics.RTL;
                    break;
                case 5:
                    textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                    break;
                case 6:
                    break;
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (z) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    }
                    break;
            }
        } else {
            byte directionality = Character.getDirectionality(tf.d(DecimalFormatSymbols.getInstance(xgVar.getTextLocale()))[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return new gx2(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    public static int P(float f) {
        if (f < 1.0f) {
            return -16777216;
        }
        if (f > 99.0f) {
            return -1;
        }
        float f2 = (f + 16.0f) / 116.0f;
        float f3 = f > 8.0f ? f2 * f2 * f2 : f / 903.2963f;
        float f4 = f2 * f2 * f2;
        boolean z = f4 > 0.008856452f;
        float f5 = z ? f4 : ((f2 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f4 = ((f2 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = s;
        return h80.a(f5 * fArr[0], f3 * fArr[1], f4 * fArr[2]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void Q(jx0 jx0Var) {
        if (((md2) jx0Var).n.A) {
            w80.P(jx0Var, 1).V0();
        }
    }

    public static final boolean S(in0 in0Var, int i, int i2) {
        in0Var.getClass();
        if (i > i2 && in0Var.k) {
            return false;
        }
        Set set = in0Var.l;
        return in0Var.j && (set == null || !set.contains(Integer.valueOf(i)));
    }

    public static final nd2 T(ff1 ff1Var) {
        return new iy1(ff1Var);
    }

    public static float U(int i) {
        float f = i / 255.0f;
        return (f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0458 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ad  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:84:0x01e3
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.gs2 W(int r46, defpackage.ag1 r47) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kt4.W(int, ag1):gs2");
    }

    public static final String X(String str, byte[] bArr) {
        int length = str.length();
        int iMax = Math.max(0, length - 2);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= iMax) {
                if (i == i2) {
                    return str;
                }
                if (i >= length) {
                    on4.m(0, i2, bArr.length);
                    return new String(bArr, 0, i2, k40.a);
                }
            } else if (str.charAt(i) == '%') {
                int i3 = i + 3;
                try {
                    String strSubstring = str.substring(i + 1, i3);
                    qj0.z(16);
                    bArr[i2] = (byte) Integer.parseInt(strSubstring, 16);
                    i2++;
                    i = i3;
                } catch (NumberFormatException unused) {
                    bArr[i2] = (byte) str.charAt(i);
                    i2++;
                    i++;
                }
            }
            bArr[i2] = (byte) str.charAt(i);
            i2++;
            i++;
        }
    }

    public static final void a0(j3 j3Var, gh3 gh3Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = j3Var.a;
        Object objG = gh3Var.k().n.g(lh3.f);
        if (objG == null) {
            objG = null;
        }
        k70 k70Var = (k70) objG;
        if (k70Var != null) {
            accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(k70Var.a, k70Var.b, false, 0));
            return;
        }
        ArrayList arrayList = new ArrayList();
        Object objG2 = gh3Var.k().n.g(lh3.e);
        if ((objG2 != null ? objG2 : null) != null) {
            List listJ = gh3.j(4, gh3Var);
            int size = listJ.size();
            for (int i = 0; i < size; i++) {
                gh3 gh3Var2 = (gh3) listJ.get(i);
                if (gh3Var2.k().n.c(lh3.H)) {
                    arrayList.add(gh3Var2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        boolean zO = o(arrayList);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(zO ? 1 : arrayList.size(), zO ? arrayList.size() : 1, false, 0));
    }

    public static final void b0(j3 j3Var, gh3 gh3Var) {
        Object objG = gh3Var.k().n.g(lh3.g);
        if (objG == null) {
            objG = null;
        }
        if (objG != null) {
            mk0.b();
            return;
        }
        gh3 gh3VarL = gh3Var.l();
        if (gh3VarL == null) {
            return;
        }
        Object objG2 = gh3VarL.k().n.g(lh3.e);
        if (objG2 == null) {
            objG2 = null;
        }
        if (objG2 != null) {
            Object objG3 = gh3VarL.k().n.g(lh3.f);
            k70 k70Var = (k70) (objG3 != null ? objG3 : null);
            if (k70Var == null || (k70Var.a >= 0 && k70Var.b >= 0)) {
                if (gh3Var.k().n.c(lh3.H)) {
                    ArrayList arrayList = new ArrayList();
                    List listJ = gh3.j(4, gh3VarL);
                    int size = listJ.size();
                    int i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        gh3 gh3Var2 = (gh3) listJ.get(i2);
                        if (gh3Var2.k().n.c(lh3.H)) {
                            arrayList.add(gh3Var2);
                            if (gh3Var2.c.v() < gh3Var.c.v()) {
                                i++;
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    boolean zO = o(arrayList);
                    int i3 = zO ? 0 : i;
                    int i4 = zO ? i : 0;
                    Object objG4 = gh3Var.k().n.g(lh3.H);
                    if (objG4 == null) {
                        objG4 = Boolean.FALSE;
                    }
                    j3Var.a.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i3, 1, i4, 1, false, ((Boolean) objG4).booleanValue()));
                }
            }
        }
    }

    public static final void c(final String str, p84 p84Var, final String str2, final long j, final boolean z, final e10 e10Var, final ts1 ts1Var, final long j2, ag1 ag1Var, final int i) {
        int i2;
        p84 p84Var2;
        boolean z2;
        ag1Var.X(304177657);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            p84Var2 = p84Var;
            i2 |= ag1Var.f(p84Var2) ? 32 : 16;
        } else {
            p84Var2 = p84Var;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.e(j) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            z2 = z;
            i2 |= ag1Var.g(z2) ? 16384 : 8192;
        } else {
            z2 = z;
        }
        if ((196608 & i) == 0) {
            i2 |= (262144 & i) == 0 ? ag1Var.f(e10Var) : ag1Var.h(e10Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= (2097152 & i) == 0 ? ag1Var.f(ts1Var) : ag1Var.h(ts1Var) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= ag1Var.e(j2) ? 8388608 : 4194304;
        }
        if (ag1Var.N(i2 & 1, (4793363 & i2) != 4793362)) {
            Long lB = p84Var2.b();
            Long lC = p84Var2.c();
            String strA = p84Var2.a();
            final boolean z3 = (lC == null || lB == null) ? false : true;
            double dI = 0.0d;
            if (z3 && lC != null && lB != null && lC.longValue() < lB.longValue()) {
                if (j2 >= lB.longValue()) {
                    dI = 1.0d;
                } else if (j2 > lC.longValue()) {
                    dI = ix.i((j2 - lC.longValue()) / (lB.longValue() - lC.longValue()), 0.0d, 1.0d);
                }
            }
            final double dE = p84Var2.e();
            final double d = dE / 100.0d;
            Context context = (Context) ag1Var.j(ea.b);
            e10Var.getClass();
            final String strA2 = e10.a(context, lB, j2, strA);
            final boolean z4 = z2;
            final double d2 = dI;
            k75.b(on3.a, null, c75.n(((ua2) ag1Var.j(wa2.a)).a.F, ag1Var), null, new fx(0.5f, new sp3(((n50) ag1Var.j(gy3.c)).f218u)), qj0.U(-1841224341, new ff1() { // from class: s84
                @Override // defpackage.ff1
                public final Object d(Object obj, Object obj2, Object obj3) {
                    ag1 ag1Var2 = (ag1) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((l80) obj).getClass();
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 17) != 16)) {
                        nd2 nd2VarL = is0.L(on3.b, 16.0f, 12.0f);
                        k80 k80VarA = i80.a(new rh(8.0f, new k21(2)), mj1.z, ag1Var2, 6);
                        int iHashCode = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL = ag1Var2.l();
                        nd2 nd2VarH = is0.H(ag1Var2, nd2VarL);
                        lb0.c.getClass();
                        ic0 ic0Var = kb0.b;
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        fd fdVar = kb0.f;
                        ht4.D(fdVar, ag1Var2, k80VarA);
                        fd fdVar2 = kb0.e;
                        ht4.D(fdVar2, ag1Var2, hu2VarL);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        fd fdVar3 = kb0.g;
                        ht4.D(fdVar3, ag1Var2, numValueOf);
                        l9 l9Var = kb0.h;
                        ht4.y(ag1Var2, l9Var);
                        fd fdVar4 = kb0.d;
                        ht4.D(fdVar4, ag1Var2, nd2VarH);
                        u51 u51Var = on3.a;
                        bw bwVar = mj1.y;
                        bx3 bx3Var = th.e;
                        cb3 cb3VarA = bb3.a(bx3Var, bwVar, ag1Var2, 54);
                        int iHashCode2 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL2 = ag1Var2.l();
                        nd2 nd2VarH2 = is0.H(ag1Var2, u51Var);
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(fdVar, ag1Var2, cb3VarA);
                        ht4.D(fdVar2, ag1Var2, hu2VarL2);
                        di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
                        ht4.D(fdVar4, ag1Var2, nd2VarH2);
                        lx3.b(str, null, is0.y(ag1Var2).q, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).m, ag1Var2, 0, 0, 131066);
                        mt1.c(z4, null, j11.c(tv4.V(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, 2, ny0.a), 2), j11.d(tv4.V(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, 6, null), 2), null, dm0.l, ag1Var2, 1597446);
                        ag1Var2.p(true);
                        float f = (float) d;
                        double d3 = d2;
                        long j3 = j;
                        long jB = t70.b(0.3f, j3);
                        boolean z5 = z3;
                        kt4.f(f, (float) d3, z5, null, j3, jB, 0L, ag1Var2, 0);
                        cb3 cb3VarA2 = bb3.a(bx3Var, mj1.x, ag1Var2, 6);
                        int iHashCode3 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL3 = ag1Var2.l();
                        nd2 nd2VarH3 = is0.H(ag1Var2, u51Var);
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(fdVar, ag1Var2, cb3VarA2);
                        ht4.D(fdVar2, ag1Var2, hu2VarL3);
                        di0.C(iHashCode3, ag1Var2, fdVar3, ag1Var2, l9Var);
                        ht4.D(fdVar4, ag1Var2, nd2VarH3);
                        lx3.b(on4.O(R.string.usage, ag1Var2) + ": " + ts1Var.a(dE), null, is0.y(ag1Var2).q, 0L, pb1.r, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var2).l, ag1Var2, 1572864, 0, 131002);
                        ag1 ag1Var3 = ag1Var2;
                        if (z5) {
                            ag1Var3.W(-1894128801);
                            lx3.b(on4.O(R.string.time, ag1Var3) + ": " + (ix.k((int) Math.floor(d3 * 100.0d), 0, 100) + "%"), null, is0.y(ag1Var3).s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var3).l, ag1Var3, 0, 0, 131066);
                            ag1Var3 = ag1Var3;
                            ag1Var3.p(false);
                        } else {
                            ag1Var3.W(-1893827450);
                            ag1Var3.p(false);
                        }
                        ag1Var3.p(true);
                        ag1 ag1Var4 = ag1Var3;
                        lx3.b(strA2, null, is0.y(ag1Var3).s, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, is0.C(ag1Var3).l, ag1Var4, 0, 0, 131066);
                        ag1Var4.p(true);
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var, 196614);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            final p84 p84Var3 = p84Var2;
            c33VarR.d = new df1() { // from class: u84
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    kt4.c(str, p84Var3, str2, j, z, e10Var, ts1Var, j2, (ag1) obj, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }

    public static void c0(TextView textView, int i) {
        if (i < 0) {
            q73.d();
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            tf.r(textView, i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static final ja d(String str) {
        Set setSingleton = Collections.singleton(str);
        setSingleton.getClass();
        return new ja(setSingleton);
    }

    public static void d0(TextView textView, int i) {
        if (i < 0) {
            q73.d();
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static final void e(final WebView webView, ag1 ag1Var, int i) {
        ag1 ag1Var2;
        ag1Var.X(-1176988492);
        final int i2 = 2;
        int i3 = (ag1Var.h(webView) ? 4 : 2) | i;
        final int i4 = 0;
        final int i5 = 1;
        if (ag1Var.N(i3 & 1, (i3 & 3) != 2)) {
            u51 u51Var = on3.b;
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                objK = new jd3(17);
                ag1Var.g0(objK);
            }
            pe1 pe1Var = (pe1) objK;
            boolean zH = ag1Var.h(webView);
            Object objK2 = ag1Var.K();
            if (zH || objK2 == bx3Var) {
                objK2 = new pe1() { // from class: r84
                    @Override // defpackage.pe1
                    public final Object k(Object obj) {
                        int i6 = i4;
                        t64 t64Var = t64.a;
                        WebView webView2 = webView;
                        switch (i6) {
                            case 0:
                                FrameLayout frameLayout = (FrameLayout) obj;
                                frameLayout.getClass();
                                frameLayout.removeView(webView2);
                                return t64Var;
                            case 1:
                                FrameLayout frameLayout2 = (FrameLayout) obj;
                                frameLayout2.getClass();
                                if (!nt1.g(webView2.getParent(), frameLayout2)) {
                                    ViewParent parent = webView2.getParent();
                                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                                    if (viewGroup != null) {
                                        viewGroup.removeView(webView2);
                                    }
                                    frameLayout2.addView(webView2);
                                }
                                return t64Var;
                            default:
                                ((hv0) obj).getClass();
                                return new s6(7, webView2);
                        }
                    }
                };
                ag1Var.g0(objK2);
            }
            pe1 pe1Var2 = (pe1) objK2;
            boolean zH2 = ag1Var.h(webView);
            Object objK3 = ag1Var.K();
            if (zH2 || objK3 == bx3Var) {
                objK3 = new pe1() { // from class: r84
                    @Override // defpackage.pe1
                    public final Object k(Object obj) {
                        int i6 = i5;
                        t64 t64Var = t64.a;
                        WebView webView2 = webView;
                        switch (i6) {
                            case 0:
                                FrameLayout frameLayout = (FrameLayout) obj;
                                frameLayout.getClass();
                                frameLayout.removeView(webView2);
                                return t64Var;
                            case 1:
                                FrameLayout frameLayout2 = (FrameLayout) obj;
                                frameLayout2.getClass();
                                if (!nt1.g(webView2.getParent(), frameLayout2)) {
                                    ViewParent parent = webView2.getParent();
                                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                                    if (viewGroup != null) {
                                        viewGroup.removeView(webView2);
                                    }
                                    frameLayout2.addView(webView2);
                                }
                                return t64Var;
                            default:
                                ((hv0) obj).getClass();
                                return new s6(7, webView2);
                        }
                    }
                };
                ag1Var.g0(objK3);
            }
            ag1Var2 = ag1Var;
            qj0.c(pe1Var, u51Var, pe1Var2, (pe1) objK3, ag1Var2, 54);
            boolean zH3 = ag1Var2.h(webView);
            Object objK4 = ag1Var2.K();
            if (zH3 || objK4 == bx3Var) {
                objK4 = new pe1() { // from class: r84
                    @Override // defpackage.pe1
                    public final Object k(Object obj) {
                        int i6 = i2;
                        t64 t64Var = t64.a;
                        WebView webView2 = webView;
                        switch (i6) {
                            case 0:
                                FrameLayout frameLayout = (FrameLayout) obj;
                                frameLayout.getClass();
                                frameLayout.removeView(webView2);
                                return t64Var;
                            case 1:
                                FrameLayout frameLayout2 = (FrameLayout) obj;
                                frameLayout2.getClass();
                                if (!nt1.g(webView2.getParent(), frameLayout2)) {
                                    ViewParent parent = webView2.getParent();
                                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                                    if (viewGroup != null) {
                                        viewGroup.removeView(webView2);
                                    }
                                    frameLayout2.addView(webView2);
                                }
                                return t64Var;
                            default:
                                ((hv0) obj).getClass();
                                return new s6(7, webView2);
                        }
                    }
                };
                ag1Var2.g0(objK4);
            }
            zf5.a(webView, (pe1) objK4, ag1Var2);
        } else {
            ag1Var2 = ag1Var;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new sp0(i, 23, webView);
        }
    }

    public static void e0(TextView textView, int i) {
        if (i < 0) {
            q73.d();
            return;
        }
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static final void f(final float f, final float f2, final boolean z, nd2 nd2Var, final long j, final long j2, long j3, ag1 ag1Var, final int i) {
        ag1 ag1Var2;
        final nd2 nd2Var2;
        final long j4;
        long j5;
        int i2;
        nd2 nd2Var3;
        final long j6;
        ag1Var.X(540872470);
        int i3 = i | (ag1Var.c(f) ? 4 : 2) | (ag1Var.c(f2) ? 32 : 16) | (ag1Var.g(z) ? 256 : 128) | 3072 | (ag1Var.e(j) ? 16384 : 8192) | (ag1Var.e(j2) ? 131072 : 65536) | 524288;
        boolean z2 = true;
        if (ag1Var.N(i3 & 1, (599187 & i3) != 599186)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                j5 = ((ua2) ag1Var.j(wa2.a)).a.H;
                i2 = i3 & (-3670017);
                nd2Var3 = kd2.b;
            } else {
                ag1Var.Q();
                j5 = j3;
                i2 = i3 & (-3670017);
                nd2Var3 = nd2Var;
            }
            ag1Var.q();
            int i4 = i2;
            float fJ = ix.j(f, 0.0f, 1.0f);
            dl0 dl0Var = ny0.a;
            long j7 = j5;
            final tr3 tr3VarA = sd.a(fJ, tv4.V(1000, 2, dl0Var), "UsageAnimation", ag1Var, 3072, 20);
            final tr3 tr3VarA2 = sd.a(ix.j(f2, 0.0f, 1.0f), tv4.V(1000, 2, dl0Var), "TimeAnimation", ag1Var, 3072, 20);
            ag1Var2 = ag1Var;
            nd2 nd2VarC0 = n44.c0(on3.b(nd2Var3.c(on3.a), 12.0f), oa3.a(6.0f));
            nd2 nd2Var4 = nd2Var3;
            boolean zE = ((i4 & 896) == 256) | ag1Var2.e(j7) | ag1Var2.f(tr3VarA2) | ((((458752 & i4) ^ 196608) > 131072 && ag1Var2.e(j2)) || (i4 & 196608) == 131072) | ag1Var2.f(tr3VarA);
            if ((((57344 & i4) ^ 24576) <= 16384 || !ag1Var2.e(j)) && (i4 & 24576) != 16384) {
                z2 = false;
            }
            boolean z3 = zE | z2;
            Object objK = ag1Var2.K();
            if (z3 || objK == rb0.a) {
                j6 = j7;
                objK = new pe1() { // from class: v84
                    @Override // defpackage.pe1
                    public final Object k(Object obj) {
                        kx0 kx0Var = (kx0) obj;
                        kx0Var.getClass();
                        sb sbVarA = ub.a();
                        float fIntBitsToFloat = Float.intBitsToFloat((int) (kx0Var.d() >> 32));
                        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (kx0Var.d() & 4294967295L));
                        if (Float.isNaN(0.0f) || Float.isNaN(0.0f) || Float.isNaN(fIntBitsToFloat) || Float.isNaN(fIntBitsToFloat2)) {
                            ub.b("Invalid rectangle, make sure no value is NaN");
                        }
                        if (sbVarA.b == null) {
                            sbVarA.b = new RectF();
                        }
                        RectF rectF = sbVarA.b;
                        rectF.getClass();
                        rectF.set(0.0f, 0.0f, fIntBitsToFloat, fIntBitsToFloat2);
                        Path path = sbVarA.a;
                        RectF rectF2 = sbVarA.b;
                        rectF2.getClass();
                        path.addRect(rectF2, Path.Direction.CCW);
                        long j8 = j6;
                        t51 t51Var = t51.f;
                        kx0Var.f(sbVarA, j8, t51Var);
                        if (z) {
                            sb sbVarA2 = ub.a();
                            float fFloatValue = ((Number) tr3VarA2.getValue()).floatValue() * Float.intBitsToFloat((int) (kx0Var.d() >> 32));
                            float fIntBitsToFloat3 = Float.intBitsToFloat((int) (kx0Var.d() & 4294967295L));
                            if (Float.isNaN(0.0f) || Float.isNaN(0.0f) || Float.isNaN(fFloatValue) || Float.isNaN(fIntBitsToFloat3)) {
                                ub.b("Invalid rectangle, make sure no value is NaN");
                            }
                            if (sbVarA2.b == null) {
                                sbVarA2.b = new RectF();
                            }
                            RectF rectF3 = sbVarA2.b;
                            rectF3.getClass();
                            rectF3.set(0.0f, 0.0f, fFloatValue, fIntBitsToFloat3);
                            Path path2 = sbVarA2.a;
                            RectF rectF4 = sbVarA2.b;
                            rectF4.getClass();
                            path2.addRect(rectF4, Path.Direction.CCW);
                            kx0Var.f(sbVarA2, j2, t51Var);
                        }
                        sb sbVarA3 = ub.a();
                        float fFloatValue2 = ((Number) tr3VarA.getValue()).floatValue() * Float.intBitsToFloat((int) (kx0Var.d() >> 32));
                        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (4294967295L & kx0Var.d()));
                        if (Float.isNaN(0.0f) || Float.isNaN(0.0f) || Float.isNaN(fFloatValue2) || Float.isNaN(fIntBitsToFloat4)) {
                            ub.b("Invalid rectangle, make sure no value is NaN");
                        }
                        if (sbVarA3.b == null) {
                            sbVarA3.b = new RectF();
                        }
                        RectF rectF5 = sbVarA3.b;
                        rectF5.getClass();
                        rectF5.set(0.0f, 0.0f, fFloatValue2, fIntBitsToFloat4);
                        Path path3 = sbVarA3.a;
                        RectF rectF6 = sbVarA3.b;
                        rectF6.getClass();
                        path3.addRect(rectF6, Path.Direction.CCW);
                        kx0Var.f(sbVarA3, j, t51Var);
                        return t64.a;
                    }
                };
                ag1Var2.g0(objK);
            } else {
                j6 = j7;
            }
            tv4.b(nd2VarC0, (pe1) objK, ag1Var2, 0);
            j4 = j6;
            nd2Var2 = nd2Var4;
        } else {
            ag1Var2 = ag1Var;
            ag1Var2.Q();
            nd2Var2 = nd2Var;
            j4 = j3;
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(f, f2, z, nd2Var2, j, j2, j4, i) { // from class: w84
                public final /* synthetic */ float n;
                public final /* synthetic */ float o;
                public final /* synthetic */ boolean p;
                public final /* synthetic */ nd2 q;
                public final /* synthetic */ long r;
                public final /* synthetic */ long s;
                public final /* synthetic */ long t;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(1);
                    kt4.f(this.n, this.o, this.p, this.q, this.r, this.s, this.t, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static boolean f0(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr.length >= bArr2.length) {
            for (int i = 0; i < bArr2.length; i++) {
                if (bArr[i] == bArr2[i]) {
                }
            }
            return true;
        }
        return false;
    }

    public static final void g(Boolean bool, Object obj, p22 p22Var, pe1 pe1Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(696924721);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(bool) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(obj) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.h(pe1Var) ? 2048 : 1024;
        }
        if (ag1Var.N(i2 & 1, (i2 & 1171) != 1170)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                p22Var = (p22) ag1Var.j(w62.a);
            } else {
                ag1Var.Q();
            }
            int i3 = i2 & (-897);
            ag1Var.q();
            boolean zF = ag1Var.f(bool) | ag1Var.f(obj) | ag1Var.f(p22Var);
            Object objK = ag1Var.K();
            if (zF || objK == rb0.a) {
                objK = new w22(p22Var.getLifecycle());
                ag1Var.g0(objK);
            }
            h(p22Var, (w22) objK, pe1Var, ag1Var, (i3 >> 3) & 896);
        } else {
            ag1Var.Q();
        }
        p22 p22Var2 = p22Var;
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new u7(bool, obj, p22Var2, pe1Var, i, 1);
        }
    }

    public static a84 g0(String str) {
        String strSubstring;
        String strSubstring2;
        String str2 = bt2.o;
        String strW0 = !nt1.g(str2, "/") ? gt3.w0(str, str2, "/") : str;
        int i = 0;
        boolean z = true;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        while (i < strW0.length()) {
            char cCharAt = strW0.charAt(i);
            if (cCharAt != '#') {
                if (cCharAt != '/') {
                    if (cCharAt != ':') {
                        if (cCharAt == '?' && i4 == -1 && i2 == -1) {
                            i4 = i + 1;
                        }
                    } else if (z && i4 == -1 && i2 == -1) {
                        int i7 = i + 2;
                        if (i7 < str.length() && str.charAt(i + 1) == '/' && str.charAt(i7) == '/') {
                            i5 = i + 3;
                            z = false;
                            i6 = i;
                            i = i7;
                        } else if (strW0.equals(str)) {
                            i3 = i + 1;
                            i6 = i;
                            i = i3;
                            i5 = i;
                        }
                    }
                } else if (i3 == -1 && i4 == -1 && i2 == -1) {
                    i3 = i5 == -1 ? 0 : i;
                    z = false;
                }
            } else if (i2 == -1) {
                i2 = i + 1;
            }
            i++;
        }
        int i8 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int iMin = Math.min(i2 == -1 ? Integer.MAX_VALUE : i2 - 1, strW0.length());
        int iMin2 = Math.min(i4 == -1 ? Integer.MAX_VALUE : i4 - 1, iMin);
        if (i5 != -1) {
            strSubstring2 = strW0.substring(0, i6);
            if (i3 != -1) {
                i8 = i3;
            }
            strSubstring = strW0.substring(i5, Math.min(i8, iMin2));
        } else {
            strSubstring = null;
            strSubstring2 = null;
        }
        String strSubstring3 = i3 != -1 ? strW0.substring(i3, iMin2) : null;
        String strSubstring4 = i4 != -1 ? strW0.substring(i4, iMin) : null;
        String strSubstring5 = i2 != -1 ? strW0.substring(i2, strW0.length()) : null;
        byte[] bArr = new byte[Math.max(0, Math.max(strSubstring2 != null ? strSubstring2.length() : 0, Math.max(strSubstring != null ? strSubstring.length() : 0, Math.max(strSubstring3 != null ? strSubstring3.length() : 0, Math.max(strSubstring4 != null ? strSubstring4.length() : 0, strSubstring5 != null ? strSubstring5.length() : 0)))) - 2)];
        String strX = strSubstring2 != null ? X(strSubstring2, bArr) : null;
        String strX2 = strSubstring != null ? X(strSubstring, bArr) : null;
        String strX3 = strSubstring3 != null ? X(strSubstring3, bArr) : null;
        if (strSubstring4 != null) {
            X(strSubstring4, bArr);
        }
        if (strSubstring5 != null) {
            X(strSubstring5, bArr);
        }
        return new a84(strW0, str2, strX, strX2, strX3);
    }

    public static final void h(p22 p22Var, w22 w22Var, pe1 pe1Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(228371534);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(p22Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(w22Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.h(pe1Var) ? 256 : 128;
        }
        if (ag1Var.N(i2 & 1, (i2 & 147) != 146)) {
            boolean zH = ag1Var.h(w22Var) | ((i2 & 896) == 256) | ag1Var.h(p22Var);
            Object objK = ag1Var.K();
            if (zH || objK == rb0.a) {
                objK = new md(p22Var, w22Var, pe1Var, 5);
                ag1Var.g0(objK);
            }
            zf5.b(p22Var, w22Var, (pe1) objK, ag1Var);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new ha0(p22Var, w22Var, pe1Var, i, 3);
        }
    }

    public static final void h0(long j, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, j);
        }
    }

    public static final void i(String str, String str2, y84 y84Var, ne1 ne1Var, ag1 ag1Var, int i) {
        long j;
        ag1 ag1Var2 = ag1Var;
        ag1Var2.X(-1358128092);
        int i2 = 2;
        int i3 = i | (ag1Var2.f(str) ? 4 : 2) | (ag1Var2.f(str2) ? 32 : 16) | (ag1Var2.d(y84Var.ordinal()) ? 256 : 128) | (ag1Var2.h(ne1Var) ? 2048 : 1024);
        if (ag1Var2.N(i3 & 1, (i3 & 1171) != 1170)) {
            long jU = k30.u(y84Var, ag1Var2);
            int iOrdinal = y84Var.ordinal();
            if (iOrdinal == 0) {
                ag1Var2.W(-57971165);
                j = ((ua2) ag1Var2.j(wa2.a)).a.b;
                ag1Var2.p(false);
            } else if (iOrdinal == 1) {
                ag1Var2.W(-57966940);
                j = ((ua2) ag1Var2.j(wa2.a)).a.k;
                ag1Var2.p(false);
            } else if (iOrdinal == 2) {
                ag1Var2.W(-57964475);
                j = ((ua2) ag1Var2.j(wa2.a)).a.g;
                ag1Var2.p(false);
            } else if (iOrdinal == 3) {
                ag1Var2.W(-57962401);
                j = ((n50) ag1Var2.j(gy3.c)).n;
                ag1Var2.p(false);
            } else if (iOrdinal != 4) {
                ag1Var2.W(-57973214);
                ag1Var2.p(false);
                p61.x();
                return;
            } else {
                ag1Var2.W(-57969089);
                j = ((n50) ag1Var2.j(gy3.c)).n;
                ag1Var2.p(false);
            }
            u51 u51Var = on3.a;
            aw awVar = mj1.A;
            k80 k80VarA = i80.a(new rh(8.0f, new k21(i2)), awVar, ag1Var2, 54);
            int iHashCode = Long.hashCode(ag1Var2.T);
            hu2 hu2VarL = ag1Var2.l();
            nd2 nd2VarH = is0.H(ag1Var2, u51Var);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var2.Z();
            if (ag1Var2.S) {
                ag1Var2.k(ic0Var);
            } else {
                ag1Var2.j0();
            }
            ht4.D(kb0.f, ag1Var2, k80VarA);
            ht4.D(kb0.e, ag1Var2, hu2VarL);
            ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode));
            ht4.y(ag1Var2, kb0.h);
            ht4.D(kb0.d, ag1Var2, nd2VarH);
            nd2 nd2VarB = on3.b(u51Var, 56.0f);
            ds2 ds2Var = lz.a;
            long j2 = t70.f;
            is3 is3Var = wa2.a;
            y70 y70Var = ((ua2) ag1Var2.j(is3Var)).a;
            kz kzVar = y70Var.W;
            if (kzVar == null) {
                kzVar = new kz(a80.c(y70Var, se0.o), a80.c(y70Var, se0.f314u), t70.b(se0.q, a80.c(y70Var, se0.p)), t70.b(se0.s, a80.c(y70Var, se0.r)));
                y70Var.W = kzVar;
            }
            if (jU == 16) {
                jU = kzVar.a;
            }
            long j3 = jU;
            if (j == 16) {
                j = kzVar.b;
            }
            long j4 = j;
            long j5 = j2 != 16 ? j2 : kzVar.c;
            if (j2 == 16) {
                j2 = kzVar.d;
            }
            dm0.b(ne1Var, nd2VarB, false, null, new kz(j3, j4, j5, j2), null, null, null, qj0.U(-499522294, new mn0(8, str), ag1Var2), ag1Var2, ((i3 >> 9) & 14) | 805306416, 492);
            lx3.b(str2, is0.M(new ak1(awVar), 16.0f, 0.0f, 2), ((ua2) ag1Var2.j(is3Var)).a.s, 0L, null, null, 0L, new vw3(3), 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(is3Var)).b.l, ag1Var, (i3 >> 3) & 14, 0, 130040);
            ag1Var2 = ag1Var;
            mt1.f(ag1Var2, on3.b(kd2.b, 16.0f));
            ag1Var2.p(true);
        } else {
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(str, str2, y84Var, ne1Var, i, 7);
        }
    }

    public static final void i0(gh3 gh3Var, int i, ze3 ze3Var) {
        gh3 gh3Var2;
        ug2 ug2Var = new ug2(new gh3[16]);
        List listI = gh3Var.i(false, false);
        while (true) {
            ug2Var.e(ug2Var.p, listI);
            while (true) {
                int i2 = ug2Var.p;
                if (i2 == 0) {
                    return;
                }
                gh3Var2 = (gh3) ug2Var.l(i2 - 1);
                boolean zW = se0.w(gh3Var2);
                bh3 bh3Var = gh3Var2.d;
                kg2 kg2Var = bh3Var.n;
                if (!zW && !kg2Var.c(lh3.j)) {
                    mm2 mm2VarD = gh3Var2.d();
                    if (mm2VarD == null) {
                        throw di0.m("Expected semantics node to have a coordinator.");
                    }
                    ns1 ns1VarP = ix.P(zf5.l(mm2VarD, true));
                    if (ns1VarP.a < ns1VarP.c && ns1VarP.b < ns1VarP.d) {
                        Object objG = bh3Var.n.g(ah3.e);
                        if (objG == null) {
                            objG = null;
                        }
                        df1 df1Var = (df1) objG;
                        Object objG2 = kg2Var.g(lh3.w);
                        ye3 ye3Var = (ye3) (objG2 != null ? objG2 : null);
                        if (df1Var == null || ye3Var == null || ((Number) ye3Var.b.a()).floatValue() <= 0.0f) {
                            break;
                        }
                        int i3 = 1 + i;
                        ze3Var.k(new af3(gh3Var2, i3, ns1VarP, mm2VarD));
                        i0(gh3Var2, i3, ze3Var);
                    }
                }
            }
            listI = gh3Var2.i(false, false);
        }
    }

    public static Class j0(Class cls) {
        return cls == Integer.TYPE ? Integer.class : cls == Float.TYPE ? Float.class : cls == Byte.TYPE ? Byte.class : cls == Double.TYPE ? Double.class : cls == Long.TYPE ? Long.class : cls == Character.TYPE ? Character.class : cls == Boolean.TYPE ? Boolean.class : cls == Short.TYPE ? Short.class : cls == Void.TYPE ? Void.class : cls;
    }

    public static a84 k(String str) {
        String str2 = bt2.o;
        StringBuilder sb = new StringBuilder();
        sb.append("file");
        sb.append(':');
        if (str != null) {
            sb.append(str);
        }
        return new a84(sb.toString(), str2, "file", null, str);
    }

    public static final int k0(float f, float[] fArr, int i) {
        float f2 = f >= 0.0f ? f : 0.0f;
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (Math.abs(f2 - f) > 1.05E-6f) {
            f2 = Float.NaN;
        }
        fArr[i] = f2;
        return !Float.isNaN(f2) ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r33v1, types: [java.lang.Throwable] */
    public static final void l(final String str, final long j, final d84 d84Var, final Boolean bool, final boolean z, final y84 y84Var, final e10 e10Var, final ts1 ts1Var, final ne1 ne1Var, ag1 ag1Var, final int i) {
        ag1 ag1Var2;
        String strO;
        nd2 nd2Var;
        ay3 ay3Var;
        long j2;
        List listF;
        int i2;
        ag1Var.X(-1505244196);
        long j3 = j;
        int i3 = i | (ag1Var.f(str) ? 4 : 2) | (ag1Var.e(j3) ? 32 : 16) | (ag1Var.h(d84Var) ? 256 : 128) | (ag1Var.f(bool) ? 2048 : 1024) | (ag1Var.g(z) ? 16384 : 8192) | (ag1Var.d(y84Var.ordinal()) ? 131072 : 65536) | (ag1Var.f(e10Var) ? 1048576 : 524288) | (ag1Var.f(ts1Var) ? 8388608 : 4194304) | (ag1Var.h(ne1Var) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE);
        if (ag1Var.N(i3 & 1, (38347923 & i3) != 38347922)) {
            lf3 lf3VarO = w80.O(ag1Var);
            Boolean bool2 = Boolean.TRUE;
            boolean zEquals = bool.equals(bool2);
            int iOrdinal = y84Var.ordinal();
            if (iOrdinal == 0) {
                ag1Var.W(864324731);
                strO = on4.O(R.string.claude, ag1Var);
                ag1Var.p(false);
            } else if (iOrdinal == 1) {
                ag1Var.W(864331739);
                strO = on4.O(R.string.google, ag1Var);
                ag1Var.p(false);
            } else if (iOrdinal == 2) {
                ag1Var.W(864329467);
                strO = on4.O(R.string.google, ag1Var);
                ag1Var.p(false);
            } else if (iOrdinal == 3) {
                ag1Var.W(-866674130);
                ag1Var.p(false);
                strO = "ChatGPT";
            } else if (iOrdinal != 4) {
                ag1Var.W(864323148);
                ag1Var.p(false);
                p61.x();
                return;
            } else {
                ag1Var.W(864327035);
                strO = on4.O(R.string.github, ag1Var);
                ag1Var.p(false);
            }
            js2 js2Var = bool.equals(bool2) ? z ? new js2(on4.O(R.string.usage_upgrade_to_track, ag1Var), on4.O(R.string.usage_tracking_available_paid_plans, ag1Var)) : new js2(on4.P(R.string.sign_in_with_service, new Object[]{strO}, ag1Var), on4.O(R.string.usage_get_actual_data_and_insights, ag1Var)) : new js2(null, null);
            String str2 = (String) js2Var.n;
            String str3 = (String) js2Var.o;
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                objK = ca.A("");
                ag1Var.g0(objK);
            }
            pg2 pg2Var = (pg2) objK;
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = ca.A("");
                ag1Var.g0(objK2);
            }
            pg2 pg2Var2 = (pg2) objK2;
            if (str2 != null && str3 != null) {
                pg2Var.setValue(str2);
                pg2Var2.setValue(str3);
            }
            nd2 nd2VarN = is0.N(w80.T(on3.b, lf3VarO, true), 16.0f, 8.0f, 16.0f, 16.0f);
            k80 k80VarA = i80.a(new rh(12.0f, new k21(2)), mj1.z, ag1Var, 6);
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarN);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, k80VarA);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            kd2 kd2Var = kd2.b;
            nd2 nd2VarO = is0.O(kd2Var, 1.0f, 0.0f, 0.0f, 14);
            String strValueOf = String.valueOf(str);
            ay3 ay3Var2 = is0.C(ag1Var).l;
            if (str.length() > 0) {
                ag1Var.W(1995893906);
                nd2Var = nd2VarO;
                ay3Var = ay3Var2;
                j2 = is0.y(ag1Var).s;
                ag1Var.p(false);
            } else {
                nd2Var = nd2VarO;
                ay3Var = ay3Var2;
                ag1Var.W(1995972491);
                ag1Var.p(false);
                j2 = t70.e;
            }
            my0 my0Var = null;
            lx3.b(strValueOf, nd2Var, j2, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ay3Var, ag1Var, 48, 0, 131064);
            ag1Var2 = ag1Var;
            int iOrdinal2 = y84Var.ordinal();
            if (iOrdinal2 == 0) {
                ag1Var2.W(1865506198);
                listF = tv4.F(new t70(is0.y(ag1Var2).a), new t70(is0.y(ag1Var2).f), new t70(is0.y(ag1Var2).j));
                ag1Var2.p(false);
            } else if (iOrdinal2 == 1) {
                ag1Var2.W(1865527126);
                listF = tv4.F(new t70(is0.y(ag1Var2).a), new t70(is0.y(ag1Var2).f), new t70(is0.y(ag1Var2).j));
                ag1Var2.p(false);
            } else if (iOrdinal2 == 2) {
                ag1Var2.W(1865520214);
                listF = tv4.F(new t70(is0.y(ag1Var2).a), new t70(is0.y(ag1Var2).f), new t70(is0.y(ag1Var2).j));
                ag1Var2.p(false);
            } else if (iOrdinal2 == 3) {
                ag1Var2.W(1865534006);
                listF = tv4.F(new t70(is0.y(ag1Var2).a), new t70(is0.y(ag1Var2).f), new t70(is0.y(ag1Var2).j));
                ag1Var2.p(false);
            } else if (iOrdinal2 != 4) {
                ag1Var2.W(1865505217);
                ag1Var2.p(false);
                p61.x();
                return;
            } else {
                ag1Var2.W(1865513142);
                listF = tv4.F(new t70(is0.y(ag1Var2).a), new t70(is0.y(ag1Var2).f), new t70(is0.y(ag1Var2).j));
                ag1Var2.p(false);
            }
            ag1Var2.W(1865541392);
            int i4 = 0;
            for (Object obj : d84Var.c()) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    ?? r33 = my0Var;
                    tv4.S();
                    throw r33;
                }
                p84 p84Var = (p84) obj;
                c(tv4.u(p84Var, (Context) ag1Var2.j(ea.b), y84Var), p84Var, di0.q(i4, "dynamic_"), ((t70) listF.get(i4 % listF.size())).a, zEquals, e10Var, ts1Var, j3, ag1Var2, ((i3 >> 3) & 4128768) | ((i3 << 18) & 29360128));
                j3 = j;
                listF = listF;
                i4 = i5;
                my0Var = my0Var;
            }
            my0 my0Var2 = my0Var;
            ag1Var2.p(false);
            if (d84Var.c().isEmpty()) {
                ag1Var2.W(1997926855);
                i2 = 18;
                lx3.b("No usage data available.", is0.K(kd2Var, 8.0f), 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(wa2.a)).b.k, ag1Var2, 54, 0, 131068);
                ag1Var2.p(false);
            } else {
                i2 = 18;
                ag1Var2.W(1998110716);
                ag1Var2.p(false);
            }
            mt1.f(ag1Var2, on3.b(kd2Var, 16.0f));
            boolean z2 = (!zEquals || str2 == null || str3 == null) ? false : true;
            dl0 dl0Var = ny0.a;
            o11 o11VarC = j11.c(new d34(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, 79, dl0Var), 2);
            d34 d34Var = new d34(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, 79, dl0Var);
            Object objK3 = ag1Var2.K();
            if (objK3 == bx3Var) {
                objK3 = new jd3(i2);
                ag1Var2.g0(objK3);
            }
            o11 o11VarA = o11VarC.a(new o11(new o14((k41) null, new sn3(new i11((pe1) objK3, 0), d34Var), (l30) null, (gg4) null, (LinkedHashMap) null, 125)));
            y31 y31VarD = j11.d(tv4.V(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, 6, my0Var2), 2);
            d34 d34VarV = tv4.V(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, 6, my0Var2);
            Object objK4 = ag1Var2.K();
            if (objK4 == bx3Var) {
                objK4 = new jd3(19);
                ag1Var2.g0(objK4);
            }
            mt1.d(z2, null, o11VarA, y31VarD.a(new y31(new o14((k41) null, new sn3(new i11((pe1) objK4, 1), d34VarV), (l30) null, (gg4) null, (LinkedHashMap) null, 125))), null, qj0.U(-935973298, new e02(y84Var, ne1Var, pg2Var, pg2Var2), ag1Var2), ag1Var2, 1597446);
            ag1Var2.p(true);
        } else {
            ag1Var2 = ag1Var;
            ag1Var2.Q();
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(str, j, d84Var, bool, z, y84Var, e10Var, ts1Var, ne1Var, i) { // from class: t84
                public final /* synthetic */ String n;
                public final /* synthetic */ long o;
                public final /* synthetic */ d84 p;
                public final /* synthetic */ Boolean q;
                public final /* synthetic */ boolean r;
                public final /* synthetic */ y84 s;
                public final /* synthetic */ e10 t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ ts1 f333u;
                public final /* synthetic */ ne1 v;

                @Override // defpackage.df1
                public final Object f(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iF0 = qj0.f0(1);
                    kt4.l(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f333u, this.v, (ag1) obj2, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static float l0() {
        return ((float) Math.pow(0.5689655172413793d, 3.0d)) * 100.0f;
    }

    public static final void m(pt ptVar, final y84 y84Var, final ne1 ne1Var, ne1 ne1Var2, ag1 ag1Var, int i) {
        pg2 pg2Var;
        pg2 pg2Var2;
        pg2 pg2Var3;
        pg2 pg2Var4;
        int i2;
        ag1Var.X(-334715464);
        int i3 = i | (ag1Var.h(ptVar) ? 4 : 2) | (ag1Var.d(y84Var.ordinal()) ? 32 : 16) | (ag1Var.h(ne1Var) ? 256 : 128) | (ag1Var.h(ne1Var2) ? 2048 : 1024);
        if (ag1Var.N(i3 & 1, (i3 & 1171) != 1170)) {
            Context context = (Context) ag1Var.j(ea.b);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            if (objK == obj) {
                objK = new us0(context);
                ag1Var.g0(objK);
            }
            final pg2 pg2VarH = ca.h(((us0) objK).b, ag1Var);
            final pg2 pg2VarH2 = ca.h(a.G, ag1Var);
            final pg2 pg2VarH3 = ca.h(RollingWindowWorker.i, ag1Var);
            final pg2 pg2VarH4 = ca.h(RollingWindowWorker.k, ag1Var);
            pg2 pg2VarH5 = ca.h(ptVar.k(), ag1Var);
            pg2 pg2VarH6 = ca.h((ur3) ptVar.c.getValue(), ag1Var);
            pg2 pg2VarH7 = ca.h(ptVar.i, ag1Var);
            pg2 pg2VarH8 = ca.h((ur3) ptVar.d.getValue(), ag1Var);
            d84 d84Var = (d84) pg2VarH5.getValue();
            Boolean bool = (Boolean) pg2VarH6.getValue();
            bool.getClass();
            Boolean bool2 = (Boolean) pg2VarH7.getValue();
            bool2.getClass();
            Boolean bool3 = (Boolean) pg2VarH8.getValue();
            bool3.getClass();
            Object[] objArr = {d84Var, bool, bool2, bool3};
            int i4 = i3 & 112;
            boolean zF = (i4 == 32) | ag1Var.f(pg2VarH6) | ag1Var.f(pg2VarH8) | ag1Var.f(pg2VarH7) | ag1Var.f(pg2VarH5);
            Object objK2 = ag1Var.K();
            if (zF || objK2 == obj) {
                pg2Var = pg2VarH5;
                pg2Var2 = pg2VarH6;
                pg2Var3 = pg2VarH8;
                objK2 = new cy(y84Var, pg2Var2, pg2Var3, pg2VarH7, pg2Var, null, 2);
                pg2Var4 = pg2VarH7;
                ag1Var.g0(objK2);
            } else {
                pg2Var = pg2VarH5;
                pg2Var2 = pg2VarH6;
                pg2Var4 = pg2VarH7;
                pg2Var3 = pg2VarH8;
            }
            df1 df1Var = (df1) objK2;
            hi0 hi0Var = ag1Var.R;
            boolean zF2 = false;
            for (Object obj2 : Arrays.copyOf(objArr, 4)) {
                zF2 |= ag1Var.f(obj2);
            }
            Object objK3 = ag1Var.K();
            if (zF2 || objK3 == obj) {
                ag1Var.g0(new yx1(hi0Var, df1Var));
            }
            d84 d84Var2 = (d84) pg2Var.getValue();
            long jB = d84Var2 != null ? d84Var2.b() : 0L;
            String strX = x(jB, context);
            Long lValueOf = Long.valueOf(jB);
            boolean zE = ag1Var.e(jB) | ag1Var.h(context);
            Object objK4 = ag1Var.K();
            dh0 dh0Var = null;
            if (zE || objK4 == obj) {
                objK4 = new g84(jB, context, null);
                ag1Var.g0(objK4);
            }
            df1 df1Var2 = (df1) objK4;
            Object objK5 = ag1Var.K();
            if (objK5 == obj) {
                objK5 = ca.A(strX);
                ag1Var.g0(objK5);
            }
            final pg2 pg2Var5 = (pg2) objK5;
            boolean zH = ag1Var.h(df1Var2);
            Object objK6 = ag1Var.K();
            if (zH || objK6 == obj) {
                i2 = 1;
                objK6 = new dp3(df1Var2, pg2Var5, dh0Var, i2);
                ag1Var.g0(objK6);
            } else {
                i2 = 1;
            }
            zf5.c((df1) objK6, ag1Var, lValueOf);
            int i5 = i4 == 32 ? i2 : 0;
            Object objK7 = ag1Var.K();
            if (i5 != 0 || objK7 == obj) {
                objK7 = mt1.x(y84Var);
                ag1Var.g0(objK7);
            }
            final d84 d84Var3 = (d84) objK7;
            int i6 = i4 == 32 ? i2 : 0;
            Object objK8 = ag1Var.K();
            if (i6 != 0 || objK8 == obj) {
                zf5.K(y84Var);
                objK8 = e10.a;
                ag1Var.g0(objK8);
            }
            final e10 e10Var = (e10) objK8;
            int i7 = i4 == 32 ? i2 : 0;
            Object objK9 = ag1Var.K();
            if (i7 != 0 || objK9 == obj) {
                objK9 = y84Var.a();
                ag1Var.g0(objK9);
            }
            final ts1 ts1Var = (ts1) objK9;
            final long j = jB;
            final pg2 pg2Var6 = pg2Var2;
            final pg2 pg2Var7 = pg2Var3;
            final pg2 pg2Var8 = pg2Var;
            n44.H(null, qj0.U(-1768095620, new g4(y84Var, ptVar, ne1Var2, pg2Var4), ag1Var), null, null, null, 0, 0L, 0L, null, qj0.U(1975482311, new ff1() { // from class: x84
                @Override // defpackage.ff1
                public final Object d(Object obj3, Object obj4, Object obj5) {
                    boolean z;
                    zr2 zr2Var = (zr2) obj3;
                    ag1 ag1Var2 = (ag1) obj4;
                    int iIntValue = ((Integer) obj5).intValue();
                    cw cwVar = mj1.o;
                    zr2Var.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= ag1Var2.f(zr2Var) ? 4 : 2;
                    }
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 19) != 18)) {
                        d84 d84Var4 = (d84) pg2Var8.getValue();
                        if (d84Var4 == null) {
                            d84Var4 = d84Var3;
                        }
                        u51 u51Var = on3.b;
                        nd2 nd2VarJ = is0.J(u51Var, zr2Var);
                        boolean zBooleanValue = ((Boolean) pg2VarH.getValue()).booleanValue();
                        long j2 = j;
                        y84 y84Var2 = y84Var;
                        e10 e10Var2 = e10Var;
                        ts1 ts1Var2 = ts1Var;
                        ne1 ne1Var3 = ne1Var;
                        tr3 tr3Var = pg2Var5;
                        pg2 pg2Var9 = pg2Var6;
                        pg2 pg2Var10 = pg2Var7;
                        if (zBooleanValue) {
                            ag1Var2.W(1951950621);
                            d84 d84Var5 = d84Var4;
                            k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
                            int iHashCode = Long.hashCode(ag1Var2.T);
                            hu2 hu2VarL = ag1Var2.l();
                            nd2 nd2VarH = is0.H(ag1Var2, nd2VarJ);
                            lb0.c.getClass();
                            ic0 ic0Var = kb0.b;
                            ag1Var2.Z();
                            if (ag1Var2.S) {
                                ag1Var2.k(ic0Var);
                            } else {
                                ag1Var2.j0();
                            }
                            fd fdVar = kb0.f;
                            ht4.D(fdVar, ag1Var2, k80VarA);
                            fd fdVar2 = kb0.e;
                            ht4.D(fdVar2, ag1Var2, hu2VarL);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            fd fdVar3 = kb0.g;
                            ht4.D(fdVar3, ag1Var2, numValueOf);
                            l9 l9Var = kb0.h;
                            ht4.y(ag1Var2, l9Var);
                            fd fdVar4 = kb0.d;
                            ht4.D(fdVar4, ag1Var2, nd2VarH);
                            nz1 nz1Var = new nz1(0.5f, true);
                            u51 u51Var2 = on3.a;
                            nd2 nd2VarC = nz1Var.c(u51Var2);
                            db2 db2VarD = qx.d(cwVar, false);
                            int iHashCode2 = Long.hashCode(ag1Var2.T);
                            hu2 hu2VarL2 = ag1Var2.l();
                            nd2 nd2VarH2 = is0.H(ag1Var2, nd2VarC);
                            ag1Var2.Z();
                            if (ag1Var2.S) {
                                ag1Var2.k(ic0Var);
                            } else {
                                ag1Var2.j0();
                            }
                            ht4.D(fdVar, ag1Var2, db2VarD);
                            ht4.D(fdVar2, ag1Var2, hu2VarL2);
                            di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
                            ht4.D(fdVar4, ag1Var2, nd2VarH2);
                            String str = (String) tr3Var.getValue();
                            Boolean bool4 = (Boolean) pg2Var9.getValue();
                            bool4.booleanValue();
                            kt4.l(str, j2, d84Var5, bool4, ((Boolean) pg2Var10.getValue()).booleanValue(), y84Var2, e10Var2, ts1Var2, ne1Var3, ag1Var2, 0);
                            ag1Var2.p(true);
                            is3 is3Var = wa2.a;
                            tv4.e(null, 0.0f, ((ua2) ag1Var2.j(is3Var)).a.A, ag1Var2, 0, 3);
                            nd2 nd2VarC2 = new nz1(0.5f, true).c(u51Var2);
                            db2 db2VarD2 = qx.d(cwVar, false);
                            int iHashCode3 = Long.hashCode(ag1Var2.T);
                            hu2 hu2VarL3 = ag1Var2.l();
                            nd2 nd2VarH3 = is0.H(ag1Var2, nd2VarC2);
                            ag1Var2.Z();
                            if (ag1Var2.S) {
                                ag1Var2.k(ic0Var);
                            } else {
                                ag1Var2.j0();
                            }
                            ht4.D(fdVar, ag1Var2, db2VarD2);
                            ht4.D(fdVar2, ag1Var2, hu2VarL3);
                            di0.C(iHashCode3, ag1Var2, fdVar3, ag1Var2, l9Var);
                            ht4.D(fdVar4, ag1Var2, nd2VarH3);
                            WebView webView = ((Boolean) pg2VarH3.getValue()).booleanValue() ? (WebView) pg2VarH4.getValue() : (WebView) ((Map) pg2VarH2.getValue()).get(y84Var2.name());
                            if (webView != null) {
                                ag1Var2.W(-1271275009);
                                db2 db2VarD3 = qx.d(cwVar, false);
                                int iHashCode4 = Long.hashCode(ag1Var2.T);
                                hu2 hu2VarL4 = ag1Var2.l();
                                nd2 nd2VarH4 = is0.H(ag1Var2, u51Var);
                                ag1Var2.Z();
                                if (ag1Var2.S) {
                                    ag1Var2.k(ic0Var);
                                } else {
                                    ag1Var2.j0();
                                }
                                ht4.D(fdVar, ag1Var2, db2VarD3);
                                ht4.D(fdVar2, ag1Var2, hu2VarL4);
                                di0.C(iHashCode4, ag1Var2, fdVar3, ag1Var2, l9Var);
                                ht4.D(fdVar4, ag1Var2, nd2VarH4);
                                kt4.e(webView, ag1Var2, 0);
                                ag1Var2.p(true);
                                ag1Var2.p(false);
                                z = true;
                            } else {
                                ag1Var2.W(-1271094031);
                                db2 db2VarD4 = qx.d(mj1.s, false);
                                int iHashCode5 = Long.hashCode(ag1Var2.T);
                                hu2 hu2VarL5 = ag1Var2.l();
                                nd2 nd2VarH5 = is0.H(ag1Var2, u51Var);
                                ag1Var2.Z();
                                if (ag1Var2.S) {
                                    ag1Var2.k(ic0Var);
                                } else {
                                    ag1Var2.j0();
                                }
                                ht4.D(fdVar, ag1Var2, db2VarD4);
                                ht4.D(fdVar2, ag1Var2, hu2VarL5);
                                di0.C(iHashCode5, ag1Var2, fdVar3, ag1Var2, l9Var);
                                ht4.D(fdVar4, ag1Var2, nd2VarH5);
                                z = true;
                                lx3.b(di0.v("Waiting for ", y84Var2.n, " WebView..."), null, 0L, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, ((ua2) ag1Var2.j(is3Var)).b.l, ag1Var2, 0, 0, 131070);
                                ag1Var2 = ag1Var2;
                                ag1Var2.p(true);
                                ag1Var2.p(false);
                            }
                            ag1Var2.p(z);
                            ag1Var2.p(z);
                            ag1Var2.p(false);
                        } else {
                            d84 d84Var6 = d84Var4;
                            ag1Var2.W(1953972286);
                            db2 db2VarD5 = qx.d(cwVar, false);
                            int iHashCode6 = Long.hashCode(ag1Var2.T);
                            hu2 hu2VarL6 = ag1Var2.l();
                            nd2 nd2VarH6 = is0.H(ag1Var2, nd2VarJ);
                            lb0.c.getClass();
                            ic0 ic0Var2 = kb0.b;
                            ag1Var2.Z();
                            if (ag1Var2.S) {
                                ag1Var2.k(ic0Var2);
                            } else {
                                ag1Var2.j0();
                            }
                            ht4.D(kb0.f, ag1Var2, db2VarD5);
                            ht4.D(kb0.e, ag1Var2, hu2VarL6);
                            ht4.D(kb0.g, ag1Var2, Integer.valueOf(iHashCode6));
                            ht4.y(ag1Var2, kb0.h);
                            ht4.D(kb0.d, ag1Var2, nd2VarH6);
                            String str2 = (String) tr3Var.getValue();
                            Boolean bool5 = (Boolean) pg2Var9.getValue();
                            bool5.booleanValue();
                            kt4.l(str2, j2, d84Var6, bool5, ((Boolean) pg2Var10.getValue()).booleanValue(), y84Var2, e10Var2, ts1Var2, ne1Var3, ag1Var2, 0);
                            ag1Var2.p(true);
                            ag1Var2.p(false);
                        }
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var, 805306416, 509);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new g4(ptVar, y84Var, ne1Var, ne1Var2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00b7 A[Catch: all -> 0x00b3, PHI: r2
  0x00b7: PHI (r2v1 java.lang.Thread) = (r2v0 java.lang.Thread), (r2v11 java.lang.Thread) binds: [B:7:0x000c, B:47:0x00b0] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000e, B:46:0x00ae, B:61:0x00e5, B:12:0x0023, B:52:0x00b6, B:53:0x00b7, B:64:0x00e9, B:65:0x00ea, B:13:0x0024, B:15:0x0031, B:25:0x004b, B:26:0x0052, B:28:0x005d, B:34:0x0072, B:35:0x0079, B:43:0x008a, B:44:0x00ac, B:18:0x0040, B:54:0x00b8, B:60:0x00e4, B:59:0x00c2), top: B:76:0x0003, inners: #2, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.lang.ClassLoader m0() {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kt4.m0():java.lang.ClassLoader");
    }

    public static void n(StringBuilder sb, Object obj, pe1 pe1Var) {
        if (pe1Var != null) {
            sb.append((CharSequence) pe1Var.k(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            sb.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            sb.append(((Character) obj).charValue());
        } else {
            sb.append((CharSequence) obj.toString());
        }
    }

    public static final boolean o(ArrayList arrayList) {
        List list;
        long j;
        if (arrayList.size() >= 2) {
            if (arrayList.size() <= 1) {
                list = g01.n;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Object obj = arrayList.get(0);
                int size = arrayList.size() - 1;
                int i = 0;
                while (i < size) {
                    i++;
                    Object obj2 = arrayList.get(i);
                    gh3 gh3Var = (gh3) obj2;
                    gh3 gh3Var2 = (gh3) obj;
                    arrayList2.add(new go2((((long) Float.floatToRawIntBits(Math.abs(Float.intBitsToFloat((int) (gh3Var2.g().a() >> 32)) - Float.intBitsToFloat((int) (gh3Var.g().a() >> 32))))) << 32) | (((long) Float.floatToRawIntBits(Math.abs(Float.intBitsToFloat((int) (gh3Var2.g().a() & 4294967295L)) - Float.intBitsToFloat((int) (gh3Var.g().a() & 4294967295L))))) & 4294967295L)));
                    obj = obj2;
                }
                list = arrayList2;
            }
            if (list.size() == 1) {
                j = ((go2) o70.h0(list)).a;
            } else {
                if (list.isEmpty()) {
                    n42.c("Empty collection can't be reduced.");
                }
                Object objH0 = o70.h0(list);
                int size2 = list.size() - 1;
                if (1 <= size2) {
                    int i2 = 1;
                    while (true) {
                        objH0 = new go2(go2.e(((go2) objH0).a, ((go2) list.get(i2)).a));
                        if (i2 == size2) {
                            break;
                        }
                        i2++;
                    }
                }
                j = ((go2) objH0).a;
            }
            if (Float.intBitsToFloat((int) (4294967295L & j)) >= Float.intBitsToFloat((int) (j >> 32))) {
                return false;
            }
        }
        return true;
    }

    public static final boolean p(Object obj) {
        if (obj instanceof ap3) {
            ap3 ap3Var = (ap3) obj;
            if (ap3Var.b() == w13.J || ap3Var.b() == w13.S || ap3Var.b() == w13.P) {
                Object value = ap3Var.getValue();
                if (value == null) {
                    return true;
                }
                return p(value);
            }
        } else if (!(obj instanceof ef1) || !(obj instanceof Serializable)) {
            for (int i = 0; i < 7; i++) {
                if (f172u[i].isInstance(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] u(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        return jArr;
    }

    public static boolean w(View view, KeyEvent keyEvent) {
        ArrayList arrayList;
        int size;
        int iIndexOfKey;
        Field field = lb4.a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList2 = kb4.d;
            kb4 kb4Var = (kb4) view.getTag(R.id.tag_unhandled_key_event_manager);
            WeakReference weakReference = null;
            if (kb4Var == null) {
                kb4Var = new kb4();
                kb4Var.a = null;
                kb4Var.b = null;
                kb4Var.c = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, kb4Var);
            }
            WeakReference weakReference2 = kb4Var.c;
            if (weakReference2 == null || weakReference2.get() != keyEvent) {
                kb4Var.c = new WeakReference(keyEvent);
                if (kb4Var.b == null) {
                    kb4Var.b = new SparseArray();
                }
                SparseArray sparseArray = kb4Var.b;
                if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference = (WeakReference) sparseArray.valueAt(iIndexOfKey);
                    sparseArray.removeAt(iIndexOfKey);
                }
                if (weakReference == null) {
                    weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReference != null) {
                    View view2 = (View) weakReference.get();
                    if (view2 == null || !view2.isAttachedToWindow() || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
                        return true;
                    }
                    arrayList.get(size).getClass();
                    mk0.b();
                    return false;
                }
            }
        }
        return false;
    }

    public static final String x(long j, Context context) {
        if (j == 0) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        long j2 = jCurrentTimeMillis / 1000;
        if (j2 < 5) {
            String string = context.getString(R.string.usage_last_updated_just_now);
            string.getClass();
            return string;
        }
        if (j2 < 60) {
            String string2 = context.getString(R.string.usage_last_updated_less_than_a_minute_ago);
            string2.getClass();
            return string2;
        }
        long j3 = jCurrentTimeMillis / 60000;
        if (j3 >= 60) {
            String string3 = context.getString(R.string.usage_last_updated_time, DateFormat.getTimeFormat(context).format(new Date(j)));
            string3.getClass();
            return string3;
        }
        int i = (int) j3;
        String quantityString = context.getResources().getQuantityString(R.plurals.usage_last_updated_minutes_ago, i, Integer.valueOf(i));
        quantityString.getClass();
        return quantityString;
    }

    public static final cc4 y(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
            cc4 cc4Var = tag instanceof cc4 ? (cc4) tag : null;
            if (cc4Var != null) {
                return cc4Var;
            }
            Object objQ = fl4.q(view);
            view = objQ instanceof View ? (View) objQ : null;
        }
        return null;
    }

    public abstract void Y(a2 a2Var, a2 a2Var2);

    public abstract void Z(a2 a2Var, Thread thread);

    public abstract boolean q(b2 b2Var, x1 x1Var, x1 x1Var2);

    public abstract boolean s(b2 b2Var, Object obj, Object obj2);

    public abstract boolean t(b2 b2Var, a2 a2Var, a2 a2Var2);

    public String toString() {
        switch (this.n) {
            case 15:
                return v().toString();
            default:
                return super.toString();
        }
    }

    public abstract Object v();
}
