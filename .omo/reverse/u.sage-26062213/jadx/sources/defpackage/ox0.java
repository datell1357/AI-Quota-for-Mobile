package defpackage;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ox0 implements ao1 {
    public final Drawable a;

    public ox0(Drawable drawable) {
        this.a = drawable;
    }

    @Override // defpackage.ao1
    public final int a() {
        return o94.a(this.a);
    }

    @Override // defpackage.ao1
    public final int b() {
        return o94.b(this.a);
    }

    @Override // defpackage.ao1
    public final boolean c() {
        return false;
    }

    @Override // defpackage.ao1
    public final void d(Canvas canvas) {
        this.a.draw(canvas);
    }

    @Override // defpackage.ao1
    public final long e() {
        Drawable drawable = this.a;
        long jB = ((long) o94.b(drawable)) * 4 * ((long) o94.a(drawable));
        if (jB < 0) {
            return 0L;
        }
        return jB;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ox0) && nt1.g(this.a, ((ox0) obj).a);
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DrawableImage(drawable=" + this.a + ", shareable=false)";
    }
}
