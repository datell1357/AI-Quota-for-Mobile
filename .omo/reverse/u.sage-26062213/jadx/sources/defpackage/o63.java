package defpackage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o63 implements rm1 {
    public final Log n = LogFactory.getLog(o63.class);

    @Override // defpackage.rm1
    public final void a(om1 om1Var, ul1 ul1Var) {
        oj ojVarA;
        oj ojVarA2;
        rl1 rl1VarC = rl1.c(ul1Var);
        mj mjVar = (mj) rl1VarC.a("http.auth.auth-cache", mj.class);
        if (mjVar == null) {
            this.n.debug("Auth cache not set in the context");
            return;
        }
        zk0 zk0Var = (zk0) rl1VarC.a("http.auth.credentials-provider", zk0.class);
        if (zk0Var == null) {
            this.n.debug("Credentials provider not set in the context");
            return;
        }
        ua3 ua3Var = (ua3) rl1VarC.a("http.route", ym1.class);
        if (ua3Var == null) {
            this.n.debug("Route info not set in the context");
            return;
        }
        em1 em1Var = (em1) rl1VarC.a("http.target_host", em1.class);
        if (em1Var == null) {
            this.n.debug("Target host not set in the context");
            return;
        }
        if (em1Var.p < 0) {
            em1Var = new em1(em1Var.n, ua3Var.d().p, em1Var.q);
        }
        tj tjVar = (tj) rl1VarC.a("http.auth.target-scope", tj.class);
        if (tjVar != null && tjVar.a == 1 && (ojVarA2 = ((gu) mjVar).a(em1Var)) != null) {
            b(em1Var, ojVarA2, tjVar, zk0Var);
        }
        em1 em1VarE = ua3Var.e();
        tj tjVar2 = (tj) rl1VarC.a("http.auth.proxy-scope", tj.class);
        if (em1VarE == null || tjVar2 == null || tjVar2.a != 1 || (ojVarA = ((gu) mjVar).a(em1VarE)) == null) {
            return;
        }
        b(em1VarE, ojVarA, tjVar2, zk0Var);
    }

    public final void b(em1 em1Var, oj ojVar, tj tjVar, zk0 zk0Var) {
        String strD = ojVar.d();
        if (this.n.isDebugEnabled()) {
            this.n.debug("Re-using cached '" + strD + "' auth scheme for " + em1Var);
        }
        yk0 yk0VarA = zk0Var.a(new sj(em1Var, null, strD));
        if (yk0VarA != null) {
            tjVar.e(ojVar, yk0VarA);
        } else {
            this.n.debug("No credentials for preemptive authentication");
        }
    }
}
