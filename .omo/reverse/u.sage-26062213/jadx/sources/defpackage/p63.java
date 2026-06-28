package defpackage;

import java.util.Queue;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class p63 implements rm1 {
    public final Log n = LogFactory.getLog(getClass());

    public final void b(tj tjVar, om1 om1Var, ul1 ul1Var) {
        oj ojVar = tjVar.b;
        yk0 yk0Var = tjVar.c;
        int iF = di0.F(tjVar.a);
        if (iF == 1) {
            Queue queue = tjVar.d;
            if (queue != null) {
                while (!queue.isEmpty()) {
                    nj njVar = (nj) queue.remove();
                    oj ojVar2 = njVar.a;
                    yk0 yk0Var2 = njVar.b;
                    tjVar.e(ojVar2, yk0Var2);
                    if (this.n.isDebugEnabled()) {
                        this.n.debug("Generating response to an authentication challenge using " + ojVar2.d() + " scheme");
                    }
                    try {
                        om1Var.addHeader(ojVar2 instanceof oj ? ojVar2.b(yk0Var2, om1Var, ul1Var) : ojVar2.a(yk0Var2, om1Var));
                        return;
                    } catch (uj e) {
                        if (this.n.isWarnEnabled()) {
                            this.n.warn(ojVar2 + " authentication error: " + e.getMessage());
                        }
                    }
                }
                return;
            }
            mt1.O(ojVar, "Auth scheme");
        } else {
            if (iF == 3) {
                return;
            }
            if (iF == 4) {
                mt1.O(ojVar, "Auth scheme");
                if (ojVar.f()) {
                    return;
                }
            }
        }
        if (ojVar != null) {
            try {
                om1Var.addHeader(ojVar instanceof oj ? ojVar.b(yk0Var, om1Var, ul1Var) : ojVar.a(yk0Var, om1Var));
            } catch (uj e2) {
                if (this.n.isErrorEnabled()) {
                    this.n.error(ojVar + " authentication error: " + e2.getMessage());
                }
            }
        }
    }
}
