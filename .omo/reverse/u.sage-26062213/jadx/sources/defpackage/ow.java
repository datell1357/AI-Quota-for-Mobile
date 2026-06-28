package defpackage;

import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ow {
    public final ColorFilter a;
    public final long b;
    public final int c;

    public ow(long j, int i) {
        ColorFilter porterDuffColorFilter;
        if (Build.VERSION.SDK_INT >= 29) {
            x8.f();
            porterDuffColorFilter = x8.c(c75.R(j), se0.F(i));
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(c75.R(j), se0.G(i));
        }
        this.a = porterDuffColorFilter;
        this.b = j;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow)) {
            return false;
        }
        ow owVar = (ow) obj;
        return t70.c(this.b, owVar.b) && this.c == owVar.c;
    }

    public final int hashCode() {
        int i = t70.g;
        return Integer.hashCode(this.c) + (Long.hashCode(this.b) * 31);
    }

    public final String toString() {
        return xw1.r("BlendModeColorFilter(color=", t70.i(this.b), ", blendMode=", k30.I(this.c), ")");
    }
}
