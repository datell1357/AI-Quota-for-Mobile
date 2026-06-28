package defpackage;

import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fb0 implements ScrollCaptureCallback {
    public final gh3 a;
    public final ns1 b;
    public final dd1 c;
    public final q9 d;
    public final bh0 e;
    public final k53 f;

    public fb0(gh3 gh3Var, ns1 ns1Var, bh0 bh0Var, dd1 dd1Var, q9 q9Var) {
        this.a = gh3Var;
        this.b = ns1Var;
        this.c = dd1Var;
        this.d = q9Var;
        this.e = new bh0(bh0Var.n.F(ku0.o));
        this.f = new k53(ns1Var.d - ns1Var.b, new az3(this, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.fb0 r8, android.view.ScrollCaptureSession r9, defpackage.ns1 r10, defpackage.fh0 r11) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fb0.a(fb0, android.view.ScrollCaptureSession, ns1, fh0):java.lang.Object");
    }

    public final void onScrollCaptureEnd(Runnable runnable) {
        ca.y(this.e, sm2.o, null, new n(this, runnable, null, 12), 2);
    }

    public final void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Rect rect, Consumer consumer) {
        final ir3 ir3VarY = ca.y(this.e, null, null, new qd(this, scrollCaptureSession, rect, consumer, null, 1), 3);
        ir3VarY.V(new c8(9, cancellationSignal));
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: gb0
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                ir3VarY.j(null);
            }
        });
    }

    public final void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer consumer) {
        consumer.accept(dm0.M(this.b));
    }

    public final void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.f.c = 0.0f;
        ((ws2) this.c.o).setValue(Boolean.TRUE);
        runnable.run();
    }
}
