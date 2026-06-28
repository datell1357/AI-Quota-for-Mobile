package defpackage;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ph4 {
    public static final ViewGroup.LayoutParams a = new ViewGroup.LayoutParams(-2, -2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.mh4 a(defpackage.a0 r7, defpackage.pb0 r8, defpackage.ka0 r9) {
        /*
            java.util.concurrent.atomic.AtomicBoolean r0 = defpackage.kh1.a
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)
            r3 = 0
            if (r0 == 0) goto L41
            r0 = 6
            zy r0 = defpackage.ix.c(r2, r0, r3)
            nv3 r4 = defpackage.nc.z
            java.lang.Object r4 = r4.getValue()
            hi0 r4 = (defpackage.hi0) r4
            bh0 r4 = defpackage.dm0.c(r4)
            p r5 = new p
            r6 = 14
            r5.<init>(r0, r3, r6)
            r6 = 3
            defpackage.ca.y(r4, r3, r3, r5, r6)
            c8 r4 = new c8
            r5 = 13
            r4.<init>(r5, r0)
            java.lang.Object r0 = defpackage.wo3.c
            monitor-enter(r0)
            java.util.List r5 = defpackage.wo3.i     // Catch: java.lang.Throwable -> L3e
            java.util.ArrayList r4 = defpackage.o70.r0(r5, r4)     // Catch: java.lang.Throwable -> L3e
            defpackage.wo3.i = r4     // Catch: java.lang.Throwable -> L3e
            monitor-exit(r0)
            defpackage.wo3.a()
            goto L41
        L3e:
            r7 = move-exception
            monitor-exit(r0)
            throw r7
        L41:
            int r0 = r7.getChildCount()
            if (r0 <= 0) goto L54
            android.view.View r0 = r7.getChildAt(r1)
            boolean r1 = r0 instanceof defpackage.q9
            if (r1 == 0) goto L52
            q9 r0 = (defpackage.q9) r0
            goto L58
        L52:
            r0 = r3
            goto L58
        L54:
            r7.removeAllViews()
            goto L52
        L58:
            if (r0 != 0) goto L6c
            q9 r0 = new q9
            android.content.Context r1 = r7.getContext()
            r0.<init>(r1, r8)
            android.view.View r1 = r0.getView()
            android.view.ViewGroup$LayoutParams r4 = defpackage.ph4.a
            r7.addView(r1, r4)
        L6c:
            pb0 r1 = r0.getComposeViewContext()
            if (r1 == r8) goto L75
            r7.m(r8)
        L75:
            pb0 r7 = r7.getComposeViewContext$ui()
            if (r7 == 0) goto L81
            r8.d()
            r0.setComposeViewContextIncrementedDuringInit$ui(r2)
        L81:
            r7 = 2131296511(0x7f0900ff, float:1.821094E38)
            java.lang.Object r1 = r0.getTag(r7)
            boolean r2 = r1 instanceof defpackage.mh4
            if (r2 == 0) goto L8f
            r3 = r1
            mh4 r3 = (defpackage.mh4) r3
        L8f:
            if (r3 != 0) goto Laf
            mh4 r3 = new mh4
            g64 r1 = new g64
            xy1 r2 = r0.getRoot()
            r1.<init>(r2)
            r8.f()
            zb0 r2 = r8.c
            r2.getClass()
            ec0 r4 = new ec0
            r4.<init>(r2, r1)
            r3.<init>(r0, r4)
            r0.setTag(r7, r3)
        Laf:
            r3.b(r9)
            r8.f()
            zb0 r7 = r8.c
            r7.getClass()
            oh4 r8 = new oh4
            r8.<init>(r7)
            r0.setFrameEndScheduler$ui(r8)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ph4.a(a0, pb0, ka0):mh4");
    }
}
