package defpackage;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qy3 implements g60 {
    public final Log n = LogFactory.getLog(qy3.class);
    public final je3 o;
    public final sd0 p;

    public qy3(km1 km1Var, je3 je3Var) {
        this.o = je3Var;
        new ConcurrentHashMap();
        w80.N(2, "Default max per route");
        this.p = new sd0(new eo0(je3Var), km1Var);
    }

    @Override // defpackage.g60
    public final void c(t92 t92Var, long j) {
        boolean z;
        w80.l("Connection class mismatch, connection not obtained from this manager", t92Var instanceof gv);
        gv gvVar = (gv) t92Var;
        if (gvVar.s != null) {
            mt1.n("Connection not obtained from this manager", gvVar.n == this);
        }
        synchronized (gvVar) {
            fv fvVar = gvVar.s;
            try {
                if (fvVar == null) {
                    return;
                }
                try {
                    if (gvVar.isOpen() && !gvVar.p) {
                        gvVar.shutdown();
                    }
                    z = gvVar.p;
                    if (this.n.isDebugEnabled()) {
                        Log log = this.n;
                        if (z) {
                            log.debug("Released connection is reusable.");
                        } else {
                            log.debug("Released connection is not reusable.");
                        }
                    }
                    gvVar.F();
                } catch (IOException e) {
                    if (this.n.isDebugEnabled()) {
                        this.n.debug("Exception shutting down released connection.", e);
                    }
                    z = gvVar.p;
                    if (this.n.isDebugEnabled()) {
                        Log log2 = this.n;
                        if (z) {
                            log2.debug("Released connection is reusable.");
                        } else {
                            log2.debug("Released connection is not reusable.");
                        }
                    }
                    gvVar.F();
                }
                this.p.d(fvVar, z, j);
            } catch (Throwable th) {
                boolean z2 = gvVar.p;
                if (this.n.isDebugEnabled()) {
                    Log log3 = this.n;
                    if (z2) {
                        log3.debug("Released connection is reusable.");
                    } else {
                        log3.debug("Released connection is not reusable.");
                    }
                }
                gvVar.F();
                this.p.d(fvVar, z2, j);
                throw th;
            }
        }
    }

    @Override // defpackage.g60
    public final je3 d() {
        return this.o;
    }

    public final void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    @Override // defpackage.g60
    public final i60 g(ym1 ym1Var, Object obj) {
        sd0 sd0Var = this.p;
        sd0Var.getClass();
        return new py3(this, new qd1(sd0Var, new sb0(), ym1Var, obj), ym1Var);
    }

    @Override // defpackage.g60
    public final void shutdown() {
        this.n.debug("Shutting down");
        this.p.i();
    }
}
