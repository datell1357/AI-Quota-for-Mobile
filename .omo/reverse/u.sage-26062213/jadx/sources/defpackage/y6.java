package defpackage;

import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y6 implements og1 {
    public final MainActivity n;
    public final MainActivity o;
    public volatile sl0 p;
    public final Object q = new Object();

    public y6(MainActivity mainActivity) {
        this.n = mainActivity;
        this.o = mainActivity;
    }

    public static wu4 b(MainActivity mainActivity, MainActivity mainActivity2) {
        return new wu4(mainActivity.getViewModelStore(), new u6(0, mainActivity2), mainActivity.getDefaultViewModelCreationExtras());
    }

    @Override // defpackage.og1
    public final Object a() {
        if (this.p == null) {
            synchronized (this.q) {
                try {
                    if (this.p == null) {
                        this.p = ((w6) b(this.n, this.o).l(y33.a(w6.class))).b;
                    }
                } finally {
                }
            }
        }
        return this.p;
    }
}
