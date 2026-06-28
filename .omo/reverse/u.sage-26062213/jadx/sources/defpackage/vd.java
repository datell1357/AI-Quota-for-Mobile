package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vd extends xx1 implements ff1 {
    public final /* synthetic */ gp3 o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ he q;
    public final /* synthetic */ ka0 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vd(gp3 gp3Var, Object obj, he heVar, ka0 ka0Var) {
        super(3);
        this.o = gp3Var;
        this.p = obj;
        this.q = heVar;
        this.r = ka0Var;
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
    @Override // defpackage.ff1
    public final Object d(Object obj, Object obj2, Object obj3) {
        pe peVar = (pe) obj;
        ag1 ag1Var = (ag1) obj2;
        int iIntValue = ((Number) obj3).intValue();
        if ((iIntValue & 6) == 0) {
            iIntValue |= (iIntValue & 8) == 0 ? ag1Var.f(peVar) : ag1Var.h(peVar) ? 4 : 2;
        }
        if (ag1Var.N(iIntValue & 1, (iIntValue & 19) != 18)) {
            gp3 gp3Var = this.o;
            boolean zF = ag1Var.f(gp3Var);
            Object obj4 = this.p;
            boolean zH = zF | ag1Var.h(obj4);
            he heVar = this.q;
            boolean zH2 = zH | ag1Var.h(heVar);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (zH2 || objK == bx3Var) {
                objK = new yc(gp3Var, obj4, heVar, 1);
                ag1Var.g0(objK);
            }
            zf5.a(peVar, (pe1) objK, ag1Var);
            kg2 kg2Var = heVar.d;
            peVar.getClass();
            kg2Var.m(obj4, ((qe) peVar).a);
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = new ae();
                ag1Var.g0(objK2);
            }
            this.r.n((ae) objK2, obj4, ag1Var, 0);
        } else {
            ag1Var.Q();
        }
        return t64.a;
    }
}
