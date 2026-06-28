package defpackage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m92 implements j60 {
    public final Log a;
    public final qm1 b;
    public final ql1 c;
    public final ie0 d;
    public final mj1 e;
    public final fp1 f;
    public final yj g;
    public final yj h;
    public final ml1 i;
    public final mj1 j;
    public final bx3 k;

    public m92(qm1 qm1Var, ql1 ql1Var, ie0 ie0Var, fp1 fp1Var, yj yjVar, yj yjVar2) {
        mj1 mj1Var = mj1.J;
        mj1 mj1Var2 = mj1.L;
        this.a = LogFactory.getLog(m92.class);
        w80.L(yjVar, "Target authentication strategy");
        w80.L(yjVar2, "Proxy authentication strategy");
        this.i = new ml1(null);
        this.k = new bx3(15);
        this.b = qm1Var;
        this.c = ql1Var;
        this.d = ie0Var;
        this.e = mj1Var;
        this.f = fp1Var;
        this.g = yjVar;
        this.h = yjVar2;
        this.j = mj1Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:171:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x033d  */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v9, types: [e1, java.lang.Object, om1, um1] */
    /* JADX WARN: Type inference failed for: r1v11, types: [m92] */
    /* JADX WARN: Type inference failed for: r1v18, types: [m92] */
    /* JADX WARN: Type inference failed for: r1v24, types: [m92] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r26v0, types: [rl1, ul1, vl1] */
    /* JADX WARN: Type inference failed for: r27v0, types: [j0] */
    /* JADX WARN: Type inference failed for: r3v17, types: [qm1] */
    /* JADX WARN: Type inference failed for: r4v3, types: [ml1] */
    /* JADX WARN: Type inference failed for: r5v1, types: [um1] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v9 */
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
    @Override // defpackage.j60
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.t60 a(defpackage.ym1 r24, defpackage.um1 r25, defpackage.rl1 r26, defpackage.j0 r27) throws defpackage.cm1, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m92.a(ym1, um1, rl1, j0):t60");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x02b8 A[LOOP:0: B:3:0x0027->B:103:0x02b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(defpackage.tj r25, defpackage.l00 r26, defpackage.ym1 r27, defpackage.um1 r28, defpackage.rl1 r29) throws defpackage.cm1, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m92.b(tj, l00, ym1, um1, rl1):void");
    }

    public final boolean c(tj tjVar, tj tjVar2, ym1 ym1Var, vm1 vm1Var, rl1 rl1Var) {
        if (!rl1Var.d().w) {
            return false;
        }
        em1 em1Var = (em1) rl1Var.a("http.target_host", em1.class);
        if (em1Var == null) {
            em1Var = ym1Var.n;
        }
        em1 em1Var2 = em1Var.p < 0 ? new em1(em1Var.n, ym1Var.n.p, em1Var.q) : em1Var;
        yj yjVar = this.g;
        ml1 ml1Var = this.i;
        boolean zC = ml1Var.c(em1Var2, vm1Var, yjVar, tjVar, rl1Var);
        em1 em1Var3 = em1Var2;
        em1 em1VarE = ym1Var.e();
        if (em1VarE == null) {
            em1VarE = ym1Var.n;
        }
        boolean zC2 = ml1Var.c(em1VarE, vm1Var, this.h, tjVar2, rl1Var);
        if (zC) {
            return ml1Var.b(em1Var3, vm1Var, this.g, tjVar, rl1Var);
        }
        if (zC2) {
            return ml1Var.b(em1VarE, vm1Var, this.h, tjVar2, rl1Var);
        }
        return false;
    }
}
