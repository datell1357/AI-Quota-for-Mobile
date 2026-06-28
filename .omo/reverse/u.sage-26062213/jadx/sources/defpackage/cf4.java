package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cf4 implements bf4 {
    public final bs0 b;

    public cf4() {
        this.b = Build.VERSION.SDK_INT >= 34 ? cs0.n : mj1.M;
        tv4.j(1, 2, 4, 8, 16, 32, 64, 128);
    }
}
