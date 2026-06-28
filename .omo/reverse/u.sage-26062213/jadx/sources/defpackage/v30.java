package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v30 implements b81 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Serializable o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;

    public v30(w33 w33Var, b81 b81Var, String[] strArr, int[] iArr) {
        this.n = 2;
        this.o = w33Var;
        this.r = b81Var;
        this.p = strArr;
        this.q = iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        if (r4.m(r2, r5) == r10) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00aa, code lost:
    
        if (r4.m(r2, r5) == r10) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ac, code lost:
    
        return r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(int[] r18, defpackage.dh0 r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            java.lang.Object r3 = r0.p
            java.lang.String[] r3 = (java.lang.String[]) r3
            java.lang.Object r4 = r0.r
            b81 r4 = (defpackage.b81) r4
            boolean r5 = r2 instanceof defpackage.o24
            if (r5 == 0) goto L21
            r5 = r2
            o24 r5 = (defpackage.o24) r5
            int r6 = r5.f233u
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r8 = r6 & r7
            if (r8 == 0) goto L21
            int r6 = r6 - r7
            r5.f233u = r6
            goto L26
        L21:
            o24 r5 = new o24
            r5.<init>(r0, r2)
        L26:
            java.lang.Object r2 = r5.s
            int r6 = r5.f233u
            r7 = 0
            r8 = 2
            r9 = 1
            if (r6 == 0) goto L47
            if (r6 == r9) goto L3a
            if (r6 != r8) goto L34
            goto L3a
        L34:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r0)
            return r7
        L3a:
            int[] r0 = r5.r
            v30 r1 = r5.q
            defpackage.gg4.T(r2)
            r16 = r1
            r1 = r0
            r0 = r16
            goto Lad
        L47:
            defpackage.gg4.T(r2)
            java.io.Serializable r2 = r0.o
            w33 r2 = (defpackage.w33) r2
            java.lang.Object r6 = r2.n
            ri0 r10 = defpackage.ri0.n
            if (r6 != 0) goto L65
            java.util.Set r2 = defpackage.ji.d0(r3)
            r5.q = r0
            r5.r = r1
            r5.f233u = r9
            java.lang.Object r2 = r4.m(r2, r5)
            if (r2 != r10) goto Lad
            goto Lac
        L65:
            java.lang.Object r6 = r0.q
            int[] r6 = (int[]) r6
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            int r11 = r3.length
            r12 = 0
            r13 = r12
        L71:
            if (r12 >= r11) goto L96
            r14 = r3[r12]
            int r15 = r13 + 1
            r19 = r7
            java.lang.Object r7 = r2.n
            if (r7 == 0) goto L90
            int[] r7 = (int[]) r7
            r13 = r6[r13]
            r7 = r7[r13]
            r13 = r1[r13]
            if (r7 == r13) goto L8a
            r9.add(r14)
        L8a:
            int r12 = r12 + 1
            r7 = r19
            r13 = r15
            goto L71
        L90:
            java.lang.String r0 = "Required value was null."
            defpackage.k21.n(r0)
            return r19
        L96:
            boolean r2 = r9.isEmpty()
            if (r2 != 0) goto Lad
            java.util.Set r2 = defpackage.o70.F0(r9)
            r5.q = r0
            r5.r = r1
            r5.f233u = r8
            java.lang.Object r2 = r4.m(r2, r5)
            if (r2 != r10) goto Lad
        Lac:
            return r10
        Lad:
            java.io.Serializable r0 = r0.o
            w33 r0 = (defpackage.w33) r0
            r0.n = r1
            t64 r0 = defpackage.t64.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v30.a(int[], dh0):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00af  */
    @Override // defpackage.b81
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(java.lang.Object r8, defpackage.dh0 r9) {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v30.m(java.lang.Object, dh0):java.lang.Object");
    }

    public /* synthetic */ v30(int i, Serializable serializable, Object obj, Object obj2, Object obj3) {
        this.n = i;
        this.o = serializable;
        this.p = obj;
        this.q = obj2;
        this.r = obj3;
    }
}
