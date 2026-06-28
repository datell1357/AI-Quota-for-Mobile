package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ua extends e83 implements df1 {
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ wa r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ua(wa waVar, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = waVar;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((ua) o((dh0) obj2, (ev3) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        ua uaVar = new ua(this.r, dh0Var);
        uaVar.q = obj;
        return uaVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
    
        if (r15 == r7) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
    
        if (r15 != r7) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        return r7;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:17:0x0050). Please report as a decompilation issue!!! */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r15) {
        /*
            r14 = this;
            int r0 = r14.p
            wv2 r1 = defpackage.wv2.o
            r2 = 0
            r3 = 2
            r4 = 0
            wa r5 = r14.r
            r6 = 1
            ri0 r7 = defpackage.ri0.n
            if (r0 == 0) goto L28
            if (r0 == r6) goto L20
            if (r0 != r3) goto L1a
            java.lang.Object r0 = r14.q
            ev3 r0 = (defpackage.ev3) r0
            defpackage.gg4.T(r15)
            goto L50
        L1a:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r14)
            return r4
        L20:
            java.lang.Object r0 = r14.q
            ev3 r0 = (defpackage.ev3) r0
            defpackage.gg4.T(r15)
            goto L3b
        L28:
            defpackage.gg4.T(r15)
            java.lang.Object r15 = r14.q
            r0 = r15
            ev3 r0 = (defpackage.ev3) r0
            r14.q = r0
            r14.p = r6
            java.lang.Object r15 = defpackage.qj0.s(r0, r2, r1, r14)
            if (r15 != r7) goto L3b
            goto L4f
        L3b:
            zv2 r15 = (defpackage.zv2) r15
            long r8 = r15.a
            r5.h = r8
            long r8 = r15.c
            r5.b = r8
        L45:
            r14.q = r0
            r14.p = r3
            java.lang.Object r15 = r0.a(r1, r14)
            if (r15 != r7) goto L50
        L4f:
            return r7
        L50:
            vv2 r15 = (defpackage.vv2) r15
            java.util.List r15 = r15.a
            java.util.ArrayList r6 = new java.util.ArrayList
            int r8 = r15.size()
            r6.<init>(r8)
            int r8 = r15.size()
            r9 = r2
        L62:
            if (r9 >= r8) goto L75
            java.lang.Object r10 = r15.get(r9)
            r11 = r10
            zv2 r11 = (defpackage.zv2) r11
            boolean r11 = r11.d
            if (r11 == 0) goto L72
            r6.add(r10)
        L72:
            int r9 = r9 + 1
            goto L62
        L75:
            int r15 = r6.size()
            r8 = r2
        L7a:
            if (r8 >= r15) goto L91
            java.lang.Object r9 = r6.get(r8)
            r10 = r9
            zv2 r10 = (defpackage.zv2) r10
            long r10 = r10.a
            long r12 = r5.h
            boolean r10 = defpackage.qj0.G(r10, r12)
            if (r10 == 0) goto L8e
            goto L92
        L8e:
            int r8 = r8 + 1
            goto L7a
        L91:
            r9 = r4
        L92:
            zv2 r9 = (defpackage.zv2) r9
            if (r9 != 0) goto L9d
            java.lang.Object r15 = defpackage.o70.i0(r6)
            r9 = r15
            zv2 r9 = (defpackage.zv2) r9
        L9d:
            if (r9 == 0) goto La7
            long r10 = r9.a
            r5.h = r10
            long r8 = r9.c
            r5.b = r8
        La7:
            boolean r15 = r6.isEmpty()
            if (r15 == 0) goto L45
            r14 = -1
            r5.h = r14
            t64 r14 = defpackage.t64.a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ua.q(java.lang.Object):java.lang.Object");
    }
}
