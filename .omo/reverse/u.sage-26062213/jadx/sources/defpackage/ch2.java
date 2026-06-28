package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ch2 extends bv3 implements df1 {
    public final /* synthetic */ cq0 A;
    public fh2 r;
    public Object s;
    public cq0 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public dh2 f50u;
    public int v;
    public /* synthetic */ Object w;
    public final /* synthetic */ xg2 x;
    public final /* synthetic */ dh2 y;
    public final /* synthetic */ df1 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ch2(xg2 xg2Var, dh2 dh2Var, df1 df1Var, cq0 cq0Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.x = xg2Var;
        this.y = dh2Var;
        this.z = df1Var;
        this.A = cq0Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        return ((ch2) o((dh0) obj2, (qi0) obj)).q(t64.a);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        ch2 ch2Var = new ch2(this.x, this.y, this.z, this.A, dh0Var);
        ch2Var.w = obj;
        return ch2Var;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstInlineVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Unexpected instance arg in invoke
        	at jadx.core.dex.visitors.ConstInlineVisitor.addExplicitCast(ConstInlineVisitor.java:285)
        	at jadx.core.dex.visitors.ConstInlineVisitor.replaceArg(ConstInlineVisitor.java:267)
        	at jadx.core.dex.visitors.ConstInlineVisitor.replaceConst(ConstInlineVisitor.java:177)
        	at jadx.core.dex.visitors.ConstInlineVisitor.checkInsn(ConstInlineVisitor.java:110)
        	at jadx.core.dex.visitors.ConstInlineVisitor.process(ConstInlineVisitor.java:55)
        	at jadx.core.dex.visitors.ConstInlineVisitor.visit(ConstInlineVisitor.java:47)
        */
    @Override // defpackage.dr
    public final java.lang.Object q(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ch2.q(java.lang.Object):java.lang.Object");
    }
}
