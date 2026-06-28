package defpackage;

import android.app.Application;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a6 implements og1 {
    public volatile ql0 n;
    public final Object o = new Object();
    public final MainActivity p;
    public final y6 q;
    public sb0 r;

    public a6(MainActivity mainActivity) {
        this.p = mainActivity;
        this.q = new y6(mainActivity);
    }

    @Override // defpackage.og1
    public final Object a() {
        if (this.n == null) {
            synchronized (this.o) {
                try {
                    if (this.n == null) {
                        this.n = b();
                    }
                } finally {
                }
            }
        }
        return this.n;
    }

    public final ql0 b() {
        String str;
        MainActivity mainActivity = this.p;
        if (mainActivity.getApplication() instanceof og1) {
            sl0 sl0Var = (sl0) ((z5) bi4.u(this.q, z5.class));
            return new ql0(sl0Var.a, sl0Var.b);
        }
        if (Application.class.equals(mainActivity.getApplication().getClass())) {
            str = "Did you forget to specify your Application's class name in your manifest's <application />'s android:name attribute?";
        } else {
            str = "Found: " + mainActivity.getApplication().getClass();
        }
        throw new IllegalStateException("Hilt Activity must be attached to an @HiltAndroidApp Application. ".concat(str));
    }
}
