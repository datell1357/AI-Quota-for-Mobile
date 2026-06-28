package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o65 implements ListenerHolder.Notifier {
    public final /* synthetic */ byte[] a;

    public o65(s65 s65Var, byte[] bArr) {
        this.a = bArr;
        Objects.requireNonNull(s65Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0099 A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:30:0x0079, B:32:0x007d, B:34:0x0081, B:39:0x008e, B:44:0x0099, B:45:0x00a3), top: B:57:0x0079 }] */
    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void notifyListener(java.lang.Object r12) {
        /*
            r11 = this;
            kc5 r12 = (defpackage.kc5) r12
            byte[] r11 = r11.a     // Catch: defpackage.fo4 -> Lb8
            kn4 r0 = defpackage.kn4.a     // Catch: defpackage.fo4 -> Lb8
            int r0 = defpackage.um4.a     // Catch: defpackage.fo4 -> Lb8
            kn4 r0 = defpackage.kn4.b     // Catch: defpackage.fo4 -> Lb8
            wb5 r11 = defpackage.wb5.u(r11, r0)     // Catch: defpackage.fo4 -> Lb8
            lc5 r0 = r12.b
            java.util.concurrent.CopyOnWriteArrayList r0 = r0.f
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
        L18:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto Lb7
            java.lang.Object r3 = r0.next()
            fb5 r3 = (defpackage.fb5) r3
            java.util.List r4 = r11.t()
            r3.getClass()
            ps0 r3 = defpackage.qb5.i
            r3.getClass()
            r5 = 1
            if (r4 == 0) goto Laa
            boolean r6 = r4.isEmpty()
            if (r6 == 0) goto L3b
            goto Laa
        L3b:
            java.util.Iterator r4 = r4.iterator()
            r6 = r1
        L40:
            boolean r7 = r4.hasNext()
            if (r7 == 0) goto Lab
            java.lang.Object r7 = r4.next()
            java.lang.String r7 = (java.lang.String) r7
            java.util.concurrent.ConcurrentHashMap r8 = r3.a
            java.lang.Object r7 = r8.get(r7)
            xa5 r7 = (defpackage.xa5) r7
            if (r7 == 0) goto L40
            qb5 r7 = r7.a
            boolean r8 = r7.e
            if (r8 != 0) goto L5e
            r7 = r5
            goto La8
        L5e:
            ic r8 = r7.a
            if (r8 == 0) goto La4
            boolean r9 = r8.a
            r10 = 3
            if (r9 != 0) goto L78
            java.lang.Object r8 = r8.e
            a13 r8 = (defpackage.a13) r8
            int r8 = r8.b
            if (r8 != r10) goto L70
            goto L78
        L70:
            ui3 r8 = r7.h
            boolean r8 = r8.p()
            if (r8 == 0) goto La4
        L78:
            monitor-enter(r7)
            ic r8 = r7.a     // Catch: java.lang.Throwable -> L97
            if (r8 == 0) goto La3
            boolean r9 = r8.a     // Catch: java.lang.Throwable -> L97
            if (r9 != 0) goto L99
            java.lang.Object r8 = r8.e     // Catch: java.lang.Throwable -> L97
            a13 r8 = (defpackage.a13) r8     // Catch: java.lang.Throwable -> L97
            int r8 = r8.b     // Catch: java.lang.Throwable -> L97
            if (r8 != r10) goto L8b
            r8 = r5
            goto L8c
        L8b:
            r8 = r1
        L8c:
            if (r8 != 0) goto L99
            ui3 r8 = r7.h     // Catch: java.lang.Throwable -> L97
            boolean r8 = r8.p()     // Catch: java.lang.Throwable -> L97
            if (r8 == 0) goto La3
            goto L99
        L97:
            r11 = move-exception
            goto La6
        L99:
            r8 = 0
            r7.a = r8     // Catch: java.lang.Throwable -> L97
            jj r8 = r7.g     // Catch: java.lang.Throwable -> L97
            java.util.concurrent.atomic.AtomicInteger r8 = r8.a     // Catch: java.lang.Throwable -> L97
            r8.incrementAndGet()     // Catch: java.lang.Throwable -> L97
        La3:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L97
        La4:
            r7 = r1
            goto La8
        La6:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L97
            throw r11
        La8:
            r6 = r6 | r7
            goto L40
        Laa:
            r6 = r1
        Lab:
            if (r6 == 0) goto L18
            if (r2 != 0) goto L18
            oc5 r2 = r12.a
            r2.zza()
            r2 = r5
            goto L18
        Lb7:
            return
        Lb8:
            r12.getClass()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o65.notifyListener(java.lang.Object):void");
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
