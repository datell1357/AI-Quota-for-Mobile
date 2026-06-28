package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Trace;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fb1 {
    public static final s82 a = new s82(16);
    public static final ThreadPoolExecutor b;
    public static final Object c;
    public static final wm3 d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new b73(0));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        c = new Object();
        d = new wm3(0);
    }

    public static String a(int i, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((za1) list.get(i2)).g);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public static eb1 b(String str, Context context, List list, int i) {
        int i2;
        Typeface typefaceP;
        s82 s82Var = a;
        Trace.beginSection(ix.Y("getFontSync"));
        try {
            Typeface typeface = (Typeface) s82Var.b(str);
            if (typeface != null) {
                return new eb1(typeface);
            }
            d90 d90VarA = ya1.a(context, list);
            List list2 = (List) d90VarA.p;
            int i3 = d90VarA.o;
            if (i3 != 0) {
                i2 = i3 != 1 ? -3 : -2;
            } else {
                rb1[] rb1VarArr = (rb1[]) list2.get(0);
                if (rb1VarArr == null || rb1VarArr.length == 0) {
                    i2 = 1;
                } else {
                    int length = rb1VarArr.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            i2 = 0;
                            break;
                        }
                        int i5 = rb1VarArr[i4].f;
                        if (i5 == 0) {
                            i4++;
                        } else if (i5 >= 0) {
                            i2 = i5;
                        }
                    }
                }
            }
            if (i2 != 0) {
                return new eb1(i2);
            }
            if (list2.size() <= 1 || Build.VERSION.SDK_INT < 29) {
                rb1[] rb1VarArr2 = (rb1[]) list2.get(0);
                nt1 nt1Var = s44.a;
                Trace.beginSection(ix.Y("TypefaceCompat.createFromFontInfo"));
                typefaceP = s44.a.p(context, rb1VarArr2, i);
                Trace.endSection();
            } else {
                nt1 nt1Var2 = s44.a;
                Trace.beginSection(ix.Y("TypefaceCompat.createFromFontInfoWithFallback"));
                typefaceP = s44.a.q(context, list2, i);
                Trace.endSection();
            }
            if (typefaceP == null) {
                return new eb1(-3);
            }
            s82Var.c(str, typefaceP);
            return new eb1(typefaceP);
        } catch (PackageManager.NameNotFoundException unused) {
            return new eb1(-1);
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.endSection();
        }
    }
}
