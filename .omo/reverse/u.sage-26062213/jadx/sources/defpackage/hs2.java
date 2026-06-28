package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class hs2 extends rd2 {
    public final gs2 b;
    public final ow c;

    public hs2(gs2 gs2Var, ow owVar) {
        this.b = gs2Var;
        this.c = owVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        cw cwVar = mj1.s;
        is2 is2Var = new is2();
        is2Var.B = this.b;
        is2Var.C = true;
        is2Var.D = cwVar;
        is2Var.E = lg0.a;
        is2Var.F = 1.0f;
        is2Var.G = this.c;
        return is2Var;
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
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hs2)) {
            return false;
        }
        hs2 hs2Var = (hs2) obj;
        if (!nt1.g(this.b, hs2Var.b)) {
            return false;
        }
        cw cwVar = mj1.s;
        return cwVar.equals(cwVar) && Float.compare(1.0f, 1.0f) == 0 && nt1.g(this.c, hs2Var.c);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        is2 is2Var = (is2) md2Var;
        boolean z = is2Var.C;
        gs2 gs2Var = this.b;
        boolean z2 = (z && mn3.a(is2Var.B.h(), gs2Var.h())) ? false : true;
        is2Var.B = gs2Var;
        is2Var.C = true;
        is2Var.D = mj1.s;
        is2Var.E = lg0.a;
        is2Var.F = 1.0f;
        is2Var.G = this.c;
        if (z2) {
            ca.u(is2Var);
        }
        kt4.Q(is2Var);
    }

    public final int hashCode() {
        int iL = di0.l(1.0f, (lg0.a.hashCode() + ((Float.hashCode(0.0f) + (Float.hashCode(0.0f) * 31) + xw1.n(this.b.hashCode() * 31, true, 31)) * 31)) * 31, 31);
        ow owVar = this.c;
        return iL + (owVar == null ? 0 : owVar.hashCode());
    }

    public final String toString() {
        return "PainterElement(painter=" + this.b + ", sizeToIntrinsics=true, alignment=" + mj1.s + ", contentScale=" + lg0.a + ", alpha=1.0, colorFilter=" + this.c + ")";
    }
}
