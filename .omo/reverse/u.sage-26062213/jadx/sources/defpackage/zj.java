package defpackage;

import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zj implements yj {
    public final Log a = LogFactory.getLog(zj.class);
    public final xj b;

    public zj(xj xjVar) {
        this.b = xjVar;
    }

    @Override // defpackage.yj
    public final void a(em1 em1Var, oj ojVar, ul1 ul1Var) {
        mj mjVar = (mj) ul1Var.b("http.auth.auth-cache");
        if (mjVar == null) {
            return;
        }
        if (this.a.isDebugEnabled()) {
            this.a.debug("Removing from cache '" + ojVar.d() + "' auth scheme for " + em1Var);
        }
        gu guVar = (gu) mjVar;
        w80.L(em1Var, "HTTP host");
        guVar.b.remove(guVar.b(em1Var));
    }

    @Override // defpackage.yj
    public final boolean b(vm1 vm1Var, ul1 ul1Var) {
        return this.b.b(vm1Var);
    }

    @Override // defpackage.yj
    public final LinkedList c(Map map, em1 em1Var, vm1 vm1Var, ul1 ul1Var) throws o92 {
        w80.L(em1Var, "Host");
        LinkedList linkedList = new LinkedList();
        zk0 zk0Var = (zk0) ul1Var.b("http.auth.credentials-provider");
        if (zk0Var == null) {
            this.a.debug("Credentials provider not set in the context");
            return linkedList;
        }
        try {
            oj ojVarE = ((h) this.b).e(map, vm1Var, ul1Var);
            ojVarE.i((gj1) map.get(ojVarE.d().toLowerCase(Locale.ROOT)));
            yk0 yk0VarA = zk0Var.a(new sj(em1Var.n, em1Var.p, ojVarE.c(), ojVarE.d()));
            if (yk0VarA != null) {
                linkedList.add(new nj(ojVarE, yk0VarA));
                return linkedList;
            }
        } catch (uj e) {
            if (this.a.isWarnEnabled()) {
                this.a.warn(e.getMessage(), e);
            }
        }
        return linkedList;
    }

    @Override // defpackage.yj
    public final Map d(vm1 vm1Var, ul1 ul1Var) {
        return this.b.a(vm1Var);
    }

    @Override // defpackage.yj
    public final void e(em1 em1Var, oj ojVar, ul1 ul1Var) {
        Object guVar = (mj) ul1Var.b("http.auth.auth-cache");
        if ((ojVar == null || !ojVar.e()) ? false : ojVar.d().equalsIgnoreCase("Basic")) {
            if (guVar == null) {
                guVar = new gu();
                ul1Var.z(guVar, "http.auth.auth-cache");
            }
            if (this.a.isDebugEnabled()) {
                this.a.debug("Caching '" + ojVar.d() + "' auth scheme for " + em1Var);
            }
            ((gu) guVar).c(em1Var, ojVar);
        }
    }
}
