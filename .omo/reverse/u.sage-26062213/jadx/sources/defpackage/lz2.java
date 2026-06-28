package defpackage;

import android.content.Context;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lz2 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Context o;

    public /* synthetic */ lz2(Context context, int i) {
        this.n = i;
        this.o = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        int i2 = 1;
        Context context = this.o;
        switch (i) {
            case 0:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new lz2(context, i2));
                break;
            default:
                jz2.b(context, new mh(1), jz2.a, false);
                break;
        }
    }
}
