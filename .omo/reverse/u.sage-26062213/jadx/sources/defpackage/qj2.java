package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qj2 {
    public static final vw a;
    public static final uw b;
    public static final vw c;
    public static final uw d;
    public static final vw e;
    public static final uw f;
    public static final vw g;
    public static final uw h;
    public static final vw i;
    public static final uw j;

    static {
        int i2 = 2;
        boolean z = false;
        a = new vw(z, i2);
        boolean z2 = true;
        b = new uw(z2, i2);
        int i3 = 3;
        c = new vw(z, i3);
        d = new uw(z2, i3);
        int i4 = 1;
        e = new vw(z, i4);
        f = new uw(z2, i4);
        int i5 = 0;
        g = new vw(z, i5);
        h = new uw(z2, i5);
        int i6 = 4;
        i = new vw(z2, i6);
        j = new uw(z2, i6);
    }

    public qj2(boolean z) {
    }

    public abstract Object a(String str, Bundle bundle);

    public abstract String b();

    public Object c(Object obj, String str) {
        return d(str);
    }

    public abstract Object d(String str);

    public abstract void e(Bundle bundle, String str, Object obj);

    public boolean f(Object obj, Object obj2) {
        return nt1.g(obj, obj2);
    }

    public final String toString() {
        return b();
    }
}
