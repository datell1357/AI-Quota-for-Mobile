package defpackage;

import android.os.Trace;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class kw4 {
    public static void a(rf5 rf5Var) {
        if (c(rf5Var) || ((te5) rf5Var).n == null) {
            Trace.beginSection(((te5) rf5Var).p);
            d(rf5Var);
        } else {
            a(((te5) rf5Var).n);
            d(rf5Var);
        }
    }

    public static void b(rf5 rf5Var) {
        if (c(rf5Var) || ((te5) rf5Var).n == null) {
            Trace.endSection();
            Trace.endSection();
        } else {
            Trace.endSection();
            b(((te5) rf5Var).n);
        }
    }

    public static boolean c(rf5 rf5Var) {
        return ((te5) rf5Var).r != Thread.currentThread();
    }

    public static void d(rf5 rf5Var) {
        String strSubstring = ((te5) rf5Var).q;
        AtomicReference atomicReference = ye5.a;
        if (strSubstring.length() > 127) {
            strSubstring = strSubstring.substring(0, 127);
        }
        Trace.beginSection(strSubstring);
    }
}
