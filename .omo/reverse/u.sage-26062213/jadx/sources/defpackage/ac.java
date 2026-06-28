package defpackage;

import android.os.Trace;
import android.view.Choreographer;
import android.view.View;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ac implements dy2, View.OnAttachStateChangeListener, Runnable, Choreographer.FrameCallback {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static long f3u;
    public final View n;
    public boolean p;
    public boolean s;
    public long t;
    public final PriorityQueue o = new PriorityQueue(11, new yb(0));
    public final Choreographer q = Choreographer.getInstance();
    public final zb r = new zb();

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ac(android.view.View r5) {
        /*
            r4 = this;
            r4.<init>()
            r4.n = r5
            java.util.PriorityQueue r0 = new java.util.PriorityQueue
            yb r1 = new yb
            r2 = 0
            r1.<init>(r2)
            r2 = 11
            r0.<init>(r2, r1)
            r4.o = r0
            android.view.Choreographer r0 = android.view.Choreographer.getInstance()
            r4.q = r0
            zb r0 = new zb
            r0.<init>()
            r4.r = r0
            long r0 = defpackage.ac.f3u
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L49
            android.view.Display r0 = r5.getDisplay()
            boolean r1 = r5.isInEditMode()
            if (r1 != 0) goto L40
            if (r0 == 0) goto L40
            float r0 = r0.getRefreshRate()
            r1 = 1106247680(0x41f00000, float:30.0)
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 < 0) goto L40
            goto L42
        L40:
            r0 = 1114636288(0x42700000, float:60.0)
        L42:
            r1 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r1 = r1 / r0
            long r0 = (long) r1
            defpackage.ac.f3u = r0
        L49:
            r5.addOnAttachStateChangeListener(r4)
            boolean r5 = r5.isAttachedToWindow()
            if (r5 == 0) goto L55
            r5 = 1
            r4.s = r5
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ac.<init>(android.view.View):void");
    }

    @Override // defpackage.dy2
    public final void a(cy2 cy2Var) {
        this.o.add(new ty2(1, cy2Var));
        if (this.p) {
            return;
        }
        this.p = true;
        this.n.post(this);
    }

    public final boolean b() {
        zb zbVar = this.r;
        long jA = zbVar.a();
        kt4.h0(jA, "compose:lazy:prefetch:available_time_nanos");
        boolean z = true;
        if (jA > 0) {
            PriorityQueue priorityQueue = this.o;
            Object objPeek = priorityQueue.peek();
            objPeek.getClass();
            if (!((ty2) objPeek).b.c(zbVar)) {
                priorityQueue.poll();
                z = false;
            }
            zbVar.a = false;
        }
        return z;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        if (this.s) {
            this.t = j;
            this.n.post(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.s = true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.s = false;
        this.n.removeCallbacks(this);
        this.q.removeFrameCallback(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        PriorityQueue priorityQueue = this.o;
        if (!priorityQueue.isEmpty() && this.p && this.s) {
            View view = this.n;
            if (view.getWindowVisibility() == 0) {
                long nanos = TimeUnit.MILLISECONDS.toNanos(view.getDrawingTime());
                boolean z = System.nanoTime() > (2 * f3u) + nanos;
                zb zbVar = this.r;
                zbVar.a = z;
                zbVar.b = Math.max(this.t, nanos) + f3u;
                boolean zB = false;
                while (!priorityQueue.isEmpty() && !zB) {
                    if (zbVar.a) {
                        Trace.beginSection("compose:lazy:prefetch:idle_frame");
                        try {
                            zB = b();
                        } finally {
                            Trace.endSection();
                        }
                    } else {
                        zB = b();
                    }
                }
                if (zB) {
                    this.q.postFrameCallback(this);
                } else {
                    this.p = false;
                }
                kt4.h0(0L, "compose:lazy:prefetch:available_time_nanos");
                return;
            }
        }
        this.p = false;
    }
}
