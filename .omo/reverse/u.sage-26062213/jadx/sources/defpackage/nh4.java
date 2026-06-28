package defpackage;

import android.graphics.Paint;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nh4 {
    public static final nh4 a = new nh4();

    public final long a(Paint paint) {
        int i = t70.g;
        long colorLong = paint.getColorLong();
        long j = 63 & colorLong;
        return j < 16 ? colorLong : (colorLong & (-64)) | (j + 1);
    }

    public final void b(Paint paint, int i) {
        paint.setBlendMode(se0.F(i));
    }

    public final void c(Paint paint, long j) {
        int i = (int) (63 & j);
        paint.setColor((i == e80.x.c || i == e80.s.c || i == e80.t.c) ? qj0.Z(t70.a(j, e80.e)) : qj0.Z(j));
    }
}
