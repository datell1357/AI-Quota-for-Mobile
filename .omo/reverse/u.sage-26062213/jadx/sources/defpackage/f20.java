package defpackage;

import android.os.Trace;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f20 implements Runnable {
    public static final /* synthetic */ f20 o = new f20(3);
    public static final /* synthetic */ f20 p = new f20(4);
    public final /* synthetic */ int n;

    public f20(dd1 dd1Var, int i) {
        this.n = 0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                return;
            case 1:
                try {
                    int i = p04.a;
                    Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                    if (hz0.c()) {
                        hz0.a().d();
                        break;
                    }
                    Trace.endSection();
                    return;
                } catch (Throwable th) {
                    int i2 = p04.a;
                    Trace.endSection();
                    throw th;
                }
            case 2:
            case 3:
                return;
            default:
                throw new IllegalStateException("Span was closed by an invalid call to SpanEndSignal.run()");
        }
    }

    public /* synthetic */ f20(int i) {
        this.n = i;
    }

    private final void a() {
    }

    private final void b() {
    }

    private final /* synthetic */ void c() {
    }
}
