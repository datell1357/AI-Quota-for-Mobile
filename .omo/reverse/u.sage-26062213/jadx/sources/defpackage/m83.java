package defpackage;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m83 implements j60 {
    public final Log a = LogFactory.getLog(m83.class);
    public final f03 b;
    public final sm1 c;

    public m83(f03 f03Var, sm1 sm1Var) {
        w80.L(sm1Var, "HTTP request retry handler");
        this.b = f03Var;
        this.c = sm1Var;
    }

    @Override // defpackage.j60
    public final t60 a(ym1 ym1Var, um1 um1Var, rl1 rl1Var, j0 j0Var) throws IOException, um2 {
        w80.L(ym1Var, "HTTP route");
        gj1[] allHeaders = um1Var.getAllHeaders();
        int i = 1;
        while (true) {
            try {
                return this.b.a(ym1Var, um1Var, rl1Var, j0Var);
            } catch (IOException e) {
                if (j0Var != null && j0Var.isAborted()) {
                    this.a.debug("Request has been aborted");
                    throw e;
                }
                if (!((cp0) this.c).a(e, i, rl1Var)) {
                    if (!(e instanceof em2)) {
                        throw e;
                    }
                    em2 em2Var = new em2(cm1.a(ym1Var.n.a() + " failed to respond"));
                    em2Var.setStackTrace(e.getStackTrace());
                    throw em2Var;
                }
                if (this.a.isInfoEnabled()) {
                    this.a.info("I/O exception (" + e.getClass().getName() + ") caught when processing request to " + ym1Var + ": " + e.getMessage());
                }
                if (this.a.isDebugEnabled()) {
                    this.a.debug(e.getMessage(), e);
                }
                if (!z63.a(um1Var)) {
                    this.a.debug("Cannot retry non-repeatable request");
                    throw new um2("Cannot retry request with a non-repeatable request entity", e);
                }
                um1Var.setHeaders(allHeaders);
                if (this.a.isInfoEnabled()) {
                    this.a.info("Retrying request to " + ym1Var);
                }
                i++;
            }
        }
    }
}
