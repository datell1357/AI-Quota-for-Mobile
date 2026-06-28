package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class on3 {
    public static final u51 a = new u51(ju0.o);
    public static final u51 b;
    public static final jh4 c;
    public static final jh4 d;

    static {
        ju0 ju0Var = ju0.p;
        b = new u51(ju0Var);
        cw cwVar = mj1.s;
        int i = 25;
        c = new jh4(ju0Var, new sp0(i, cwVar), cwVar);
        cw cwVar2 = mj1.o;
        d = new jh4(ju0Var, new sp0(i, cwVar2), cwVar2);
    }

    public static final nd2 a(nd2 nd2Var, float f, float f2) {
        return nd2Var.c(new o74(f, f2));
    }

    public static final nd2 b(nd2 nd2Var, float f) {
        return nd2Var.c(new nn3(0.0f, f, 0.0f, f, 5));
    }

    public static final nd2 c(nd2 nd2Var, float f) {
        return nd2Var.c(new nn3(f, f, f, f, true));
    }

    public static final nd2 d(nd2 nd2Var, float f, float f2) {
        return nd2Var.c(new nn3(f, f2, f, f2, true));
    }

    public static nd2 e(nd2 nd2Var, float f, float f2, int i) {
        return nd2Var.c(new nn3(f, (i & 2) != 0 ? Float.NaN : 24.0f, f2, Float.NaN, true));
    }

    public static final nd2 f(float f) {
        return new nn3(f, 0.0f, f, 0.0f, 10);
    }

    public static nd2 g(float f) {
        return new nn3(Float.NaN, 0.0f, f, 0.0f, 10);
    }

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
    public static nd2 h(nd2 nd2Var) {
        jh4 jh4Var;
        cw cwVar = mj1.s;
        if (cwVar.equals(cwVar)) {
            jh4Var = c;
        } else if (cwVar.equals(mj1.o)) {
            jh4Var = d;
        } else {
            jh4Var = new jh4(ju0.p, new sp0(25, cwVar), cwVar);
        }
        return nd2Var.c(jh4Var);
    }
}
