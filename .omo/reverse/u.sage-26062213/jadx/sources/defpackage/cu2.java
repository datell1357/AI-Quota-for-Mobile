package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cu2 implements yp3 {
    public final fz n;
    public final sy o;
    public qg3 p;
    public int q;
    public boolean r;
    public long s;

    public cu2(fz fzVar) {
        this.n = fzVar;
        sy syVarH = fzVar.H();
        this.o = syVarH;
        qg3 qg3Var = syVarH.n;
        this.p = qg3Var;
        this.q = qg3Var != null ? qg3Var.b : -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.r = true;
    }

    @Override // defpackage.yp3
    public final mz3 g() {
        return this.n.g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r3 == r5.b) goto L15;
     */
    @Override // defpackage.yp3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long l(long r9, defpackage.sy r11) {
        /*
            r8 = this;
            r11.getClass()
            r0 = 0
            int r2 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r2 < 0) goto L65
            boolean r3 = r8.r
            if (r3 != 0) goto L5f
            qg3 r3 = r8.p
            sy r4 = r8.o
            if (r3 == 0) goto L27
            qg3 r5 = r4.n
            if (r3 != r5) goto L21
            int r3 = r8.q
            r5.getClass()
            int r5 = r5.b
            if (r3 != r5) goto L21
            goto L27
        L21:
            java.lang.String r8 = "Peek source is invalid because upstream source was used"
            defpackage.k21.n(r8)
            return r0
        L27:
            if (r2 != 0) goto L2a
            return r0
        L2a:
            long r0 = r8.s
            r2 = 1
            long r0 = r0 + r2
            fz r2 = r8.n
            boolean r0 = r2.u(r0)
            if (r0 != 0) goto L3a
            r8 = -1
            return r8
        L3a:
            qg3 r0 = r8.p
            if (r0 != 0) goto L48
            qg3 r0 = r4.n
            if (r0 == 0) goto L48
            r8.p = r0
            int r0 = r0.b
            r8.q = r0
        L48:
            long r0 = r4.o
            long r2 = r8.s
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r9, r0)
            sy r2 = r8.o
            long r4 = r8.s
            r3 = r11
            r2.j(r3, r4, r6)
            long r9 = r8.s
            long r9 = r9 + r6
            r8.s = r9
            return r6
        L5f:
            java.lang.String r8 = "closed"
            defpackage.k21.n(r8)
            return r0
        L65:
            java.lang.String r8 = "byteCount < 0: "
            java.lang.String r8 = defpackage.di0.s(r9, r8)
            defpackage.k21.l(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cu2.l(long, sy):long");
    }
}
