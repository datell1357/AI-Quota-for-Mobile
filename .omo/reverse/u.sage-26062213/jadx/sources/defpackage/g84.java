package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g84 extends bv3 implements df1 {
    public final /* synthetic */ int r = 1;
    public int s;
    public final /* synthetic */ long t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public /* synthetic */ Object f108u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g84(n84 n84Var, String str, long j, dh0 dh0Var) {
        super(2, dh0Var);
        this.f108u = n84Var;
        this.v = str;
        this.t = j;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return ((g84) o((dh0) obj2, (qi0) obj)).q(t64Var);
            default:
                return ((g84) o((dh0) obj2, (gz2) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.v;
        switch (i) {
            case 0:
                return new g84((n84) this.f108u, (String) obj2, this.t, dh0Var);
            default:
                g84 g84Var = new g84(this.t, (Context) obj2, dh0Var);
                g84Var.f108u = obj;
                return g84Var;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:17:0x004d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r14) {
        /*
            r13 = this;
            int r0 = r13.r
            r1 = 0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            ri0 r3 = defpackage.ri0.n
            r4 = 1
            java.lang.Object r5 = r13.v
            switch(r0) {
                case 0: goto L58;
                default: goto Ld;
            }
        Ld:
            android.content.Context r5 = (android.content.Context) r5
            java.lang.Object r0 = r13.f108u
            gz2 r0 = (defpackage.gz2) r0
            int r6 = r13.s
            long r7 = r13.t
            if (r6 == 0) goto L23
            if (r6 != r4) goto L1f
            defpackage.gg4.T(r14)
            goto L4d
        L1f:
            defpackage.k21.n(r2)
            goto L57
        L23:
            defpackage.gg4.T(r14)
            java.lang.String r14 = defpackage.kt4.x(r7, r5)
            r0.setValue(r14)
            r1 = 0
            int r14 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r14 == 0) goto L55
        L33:
            long r1 = java.lang.System.currentTimeMillis()
            long r1 = r1 - r7
            r9 = 60000(0xea60, double:2.9644E-319)
            int r14 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r14 >= 0) goto L41
            r9 = 10000(0x2710, double:4.9407E-320)
        L41:
            r13.f108u = r0
            r13.s = r4
            java.lang.Object r14 = defpackage.zf5.A(r9, r13)
            if (r14 != r3) goto L4d
            r1 = r3
            goto L57
        L4d:
            java.lang.String r14 = defpackage.kt4.x(r7, r5)
            r0.setValue(r14)
            goto L33
        L55:
            t64 r1 = defpackage.t64.a
        L57:
            return r1
        L58:
            int r0 = r13.s
            if (r0 == 0) goto L67
            if (r0 != r4) goto L62
            defpackage.gg4.T(r14)
            goto L84
        L62:
            defpackage.k21.n(r2)
            r14 = r1
            goto L84
        L67:
            defpackage.gg4.T(r14)
            java.lang.Object r14 = r13.f108u
            r7 = r14
            n84 r7 = (defpackage.n84) r7
            r10 = r5
            java.lang.String r10 = (java.lang.String) r10
            r13.s = r4
            q r6 = new q
            r11 = 0
            r12 = 3
            long r8 = r13.t
            r6.<init>(r7, r8, r10, r11, r12)
            java.lang.Object r14 = defpackage.dm0.r(r6, r13)
            if (r14 != r3) goto L84
            r14 = r3
        L84:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g84.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g84(long j, Context context, dh0 dh0Var) {
        super(2, dh0Var);
        this.t = j;
        this.v = context;
    }
}
