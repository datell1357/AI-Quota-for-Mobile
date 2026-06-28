package defpackage;

import android.view.View;
import android.view.translation.ViewTranslationCallback;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y9 implements ViewTranslationCallback {
    public static final y9 a = new y9();

    public final boolean onClearTranslation(View view) {
        ne1 ne1Var;
        view.getClass();
        ha contentCaptureManager$ui = ((q9) view).getContentCaptureManager$ui();
        contentCaptureManager$ui.getClass();
        contentCaptureManager$ui.s = fa.n;
        hs1 hs1VarB = contentCaptureManager$ui.b();
        Object[] objArr = hs1VarB.c;
        long[] jArr = hs1VarB.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        kg2 kg2Var = ((ih3) objArr[(i << 3) + i3]).a.d.n;
                        Object objG = kg2Var.g(lh3.D);
                        if (objG == null) {
                            objG = null;
                        }
                        if (objG != null) {
                            Object objG2 = kg2Var.g(ah3.n);
                            o2 o2Var = (o2) (objG2 != null ? objG2 : null);
                            if (o2Var != null && (ne1Var = (ne1) o2Var.b) != null) {
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    public final boolean onHideTranslation(View view) {
        pe1 pe1Var;
        view.getClass();
        ha contentCaptureManager$ui = ((q9) view).getContentCaptureManager$ui();
        contentCaptureManager$ui.getClass();
        contentCaptureManager$ui.s = fa.n;
        hs1 hs1VarB = contentCaptureManager$ui.b();
        Object[] objArr = hs1VarB.c;
        long[] jArr = hs1VarB.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        kg2 kg2Var = ((ih3) objArr[(i << 3) + i3]).a.d.n;
                        Object objG = kg2Var.g(lh3.D);
                        if (objG == null) {
                            objG = null;
                        }
                        if (nt1.g(objG, Boolean.TRUE)) {
                            Object objG2 = kg2Var.g(ah3.m);
                            o2 o2Var = (o2) (objG2 != null ? objG2 : null);
                            if (o2Var != null && (pe1Var = (pe1) o2Var.b) != null) {
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    public final boolean onShowTranslation(View view) {
        pe1 pe1Var;
        view.getClass();
        ha contentCaptureManager$ui = ((q9) view).getContentCaptureManager$ui();
        contentCaptureManager$ui.getClass();
        contentCaptureManager$ui.s = fa.o;
        hs1 hs1VarB = contentCaptureManager$ui.b();
        Object[] objArr = hs1VarB.c;
        long[] jArr = hs1VarB.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        kg2 kg2Var = ((ih3) objArr[(i << 3) + i3]).a.d.n;
                        Object objG = kg2Var.g(lh3.D);
                        if (objG == null) {
                            objG = null;
                        }
                        if (nt1.g(objG, Boolean.FALSE)) {
                            Object objG2 = kg2Var.g(ah3.m);
                            o2 o2Var = (o2) (objG2 != null ? objG2 : null);
                            if (o2Var != null && (pe1Var = (pe1) o2Var.b) != null) {
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }
}
