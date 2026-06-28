package defpackage;

import android.content.Context;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t72 implements jy0 {
    public static final Object o = new Object();
    public static volatile t72 p;
    public final int n;

    public /* synthetic */ t72(int i) {
        this.n = i;
    }

    public static t72 g() {
        t72 t72Var;
        synchronized (o) {
            try {
                if (p == null) {
                    p = new t72(3);
                }
                t72Var = p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return t72Var;
    }

    public static String i(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    @Override // defpackage.jy0
    public int a(Context context, String str, boolean z) {
        return 0;
    }

    @Override // defpackage.jy0
    public int b(Context context, String str) {
        return this.n;
    }

    public void c(String str, String str2) {
        if (this.n <= 3) {
            Log.d(str, str2);
        }
    }

    public void d(String str, String str2, Throwable th) {
        if (this.n <= 3) {
            Log.d(str, str2, th);
        }
    }

    public void e(String str, String str2) {
        if (this.n <= 6) {
            Log.e(str, str2);
        }
    }

    public void f(String str, String str2, Throwable th) {
        if (this.n <= 6) {
            Log.e(str, str2, th);
        }
    }

    public void h(String str, String str2) {
        if (this.n <= 4) {
            Log.i(str, str2);
        }
    }

    public void j(String str, String str2) {
        if (this.n <= 5) {
            Log.w(str, str2);
        }
    }
}
