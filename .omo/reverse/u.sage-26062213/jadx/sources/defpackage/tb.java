package defpackage;

import android.graphics.PathMeasure;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tb {
    public final PathMeasure a;

    public tb(PathMeasure pathMeasure) {
        this.a = pathMeasure;
    }

    public final void a(float f, float f2, sb sbVar) {
        if (sbVar == null) {
            p61.s("Unable to obtain android.graphics.Path");
        } else {
            this.a.getSegment(f, f2, sbVar.a, true);
        }
    }
}
