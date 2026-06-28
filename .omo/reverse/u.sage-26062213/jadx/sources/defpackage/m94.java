package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class m94 {
    public static final long a = nf0.b(0, 0, 5);
    public static final /* synthetic */ int b = 0;

    /* JADX WARN: Removed duplicated region for block: B:6:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.qn3 a(defpackage.mg0 r2, defpackage.ag1 r3) {
        /*
            l71 r0 = defpackage.lg0.c
            boolean r2 = defpackage.nt1.g(r2, r0)
            boolean r0 = r3.g(r2)
            java.lang.Object r1 = r3.K()
            if (r0 != 0) goto L14
            bx3 r0 = defpackage.rb0.a
            if (r1 != r0) goto L2e
        L14:
            if (r2 == 0) goto L1a
            v23 r2 = defpackage.qn3.a
        L18:
            r1 = r2
            goto L2b
        L1a:
            pf0 r2 = new pf0
            r2.<init>()
            long r0 = defpackage.m94.a
            r2.b = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2.c = r0
            goto L18
        L2b:
            r3.g0(r1)
        L2e:
            qn3 r1 = (defpackage.qn3) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m94.a(mg0, ag1):qn3");
    }

    public static final long b(long j) {
        int iV = is0.V(Float.intBitsToFloat((int) (j >> 32)));
        return (((long) is0.V(Float.intBitsToFloat((int) (j & 4294967295L)))) & 4294967295L) | (((long) iV) << 32);
    }

    public static void c(String str) {
        throw new IllegalArgumentException("Unsupported type: " + str + ". " + di0.v("If you wish to display this ", str, ", use androidx.compose.foundation.Image."));
    }
}
