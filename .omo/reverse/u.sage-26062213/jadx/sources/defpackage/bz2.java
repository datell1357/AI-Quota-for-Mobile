package defpackage;

import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bz2 implements p22 {
    public static final bz2 v = new bz2();
    public int n;
    public int o;
    public Handler r;
    public boolean p = true;
    public boolean q = true;
    public final r22 s = new r22(this, true);
    public final y t = new y(6, this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final dh1 f37u = new dh1(this);

    public final void a() {
        int i = this.o + 1;
        this.o = i;
        if (i == 1) {
            if (this.p) {
                this.s.e(f22.ON_RESUME);
                this.p = false;
            } else {
                Handler handler = this.r;
                handler.getClass();
                handler.removeCallbacks(this.t);
            }
        }
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        return this.s;
    }
}
