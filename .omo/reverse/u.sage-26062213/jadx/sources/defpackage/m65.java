package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m65 implements Runnable {
    public final /* synthetic */ boolean n;
    public final /* synthetic */ m75 o;

    public m65(m75 m75Var, boolean z) {
        this.n = z;
        Objects.requireNonNull(m75Var);
        this.o = m75Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            m75 r0 = r8.o
            java.lang.Object r1 = r0.a
            r45 r1 = (defpackage.r45) r1
            boolean r2 = r1.a()
            java.lang.Boolean r3 = r1.y
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L1a
            java.lang.Boolean r3 = r1.y
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L1a
            r3 = r5
            goto L1b
        L1a:
            r3 = r4
        L1b:
            boolean r8 = r8.n
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r8)
            r1.y = r6
            if (r3 != r8) goto L35
            a25 r3 = r1.f
            defpackage.r45.l(r3)
            x15 r3 = r3.n
            java.lang.String r6 = "Default data collection state already set to"
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r8)
            r3.b(r7, r6)
        L35:
            boolean r3 = r1.a()
            if (r3 == r2) goto L4e
            boolean r3 = r1.a()
            java.lang.Boolean r6 = r1.y
            if (r6 == 0) goto L4c
            java.lang.Boolean r6 = r1.y
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L4c
            r4 = r5
        L4c:
            if (r3 == r4) goto L62
        L4e:
            a25 r1 = r1.f
            defpackage.r45.l(r1)
            x15 r1 = r1.k
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            java.lang.String r3 = "Default data collection is different than actual status"
            r1.c(r8, r2, r3)
        L62:
            r0.N()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m65.run():void");
    }
}
