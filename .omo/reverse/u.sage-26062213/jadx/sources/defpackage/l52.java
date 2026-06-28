package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class l52 extends vb4 {
    public static final kd1 d = new kd1(1);
    public final mq3 b = new mq3(0);
    public boolean c = false;

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.vb4
    public final void b() {
        mq3 mq3Var = this.b;
        int iF = mq3Var.f();
        for (int i = 0; i < iF; i++) {
            k52 k52Var = (k52) mq3Var.g(i);
            h52 h52Var = k52Var.l;
            h52Var.cancelLoad();
            h52Var.abandon();
            ft1 ft1Var = k52Var.n;
            if (ft1Var != null) {
                k52Var.g(ft1Var);
                if (ft1Var.o) {
                    ((i52) ft1Var.q).onLoaderReset((h52) ft1Var.p);
                }
            }
            h52Var.unregisterListener(k52Var);
            if (ft1Var != null) {
                boolean z = ft1Var.o;
            }
            h52Var.reset();
        }
        int i2 = mq3Var.q;
        Object[] objArr = mq3Var.p;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        mq3Var.q = 0;
        mq3Var.n = false;
    }
}
