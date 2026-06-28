package defpackage;

import java.util.AbstractQueue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a62 extends y64 {
    public Object o;
    public final /* synthetic */ int p;
    public final /* synthetic */ AbstractQueue q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a62(AbstractQueue abstractQueue, x33 x33Var, int i) {
        super(0);
        this.p = i;
        this.q = abstractQueue;
        this.o = x33Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.o != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c A[PHI: r2
  0x001c: PHI (r2v4 x33) = (r2v3 x33), (r2v7 x33) binds: [B:11:0x002b, B:7:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object next() {
        /*
            r4 = this;
            java.lang.Object r0 = r4.o
            r1 = 0
            if (r0 == 0) goto L30
            int r2 = r4.p
            java.util.AbstractQueue r3 = r4.q
            switch(r2) {
                case 0: goto L1e;
                default: goto Lc;
            }
        Lc:
            r2 = r0
            x33 r2 = (defpackage.x33) r2
            x33 r2 = r2.l()
            b62 r3 = (defpackage.b62) r3
            y52 r3 = r3.o
            z52 r3 = (defpackage.z52) r3
            if (r2 != r3) goto L1c
            goto L2d
        L1c:
            r1 = r2
            goto L2d
        L1e:
            r2 = r0
            x33 r2 = (defpackage.x33) r2
            x33 r2 = r2.e()
            b62 r3 = (defpackage.b62) r3
            y52 r3 = r3.o
            z52 r3 = (defpackage.z52) r3
            if (r2 != r3) goto L1c
        L2d:
            r4.o = r1
            return r0
        L30:
            defpackage.p61.v()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a62.next():java.lang.Object");
    }
}
