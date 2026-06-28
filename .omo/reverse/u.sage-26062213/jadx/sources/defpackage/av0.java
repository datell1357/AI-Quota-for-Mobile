package defpackage;

import android.os.Build;
import android.view.DisplayCutout;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class av0 {
    public final DisplayCutout a;

    public av0(DisplayCutout displayCutout) {
        this.a = displayCutout;
    }

    public final nr1 a() {
        return Build.VERSION.SDK_INT >= 30 ? nr1.c(e3.d(this.a)) : nr1.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || av0.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((av0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.a + "}";
    }
}
