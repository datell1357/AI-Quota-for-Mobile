package defpackage;

import java.util.Queue;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ml1 {
    public final Log a;

    public ml1(Log log) {
        this.a = log == null ? LogFactory.getLog(getClass()) : log;
    }

    public final void a(om1 om1Var, tj tjVar, rl1 rl1Var) {
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
                    if (this.a.isDebugEnabled()) {
                        this.a.debug("Generating response to an authentication challenge using " + ojVar2.d() + " scheme");
                    }
                    try {
                        om1Var.addHeader(ojVar2 instanceof oj ? ojVar2.b(yk0Var2, om1Var, rl1Var) : ojVar2.a(yk0Var2, om1Var));
                        return;
                    } catch (uj e) {
                        if (this.a.isWarnEnabled()) {
                            this.a.warn(ojVar2 + " authentication error: " + e.getMessage());
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
                om1Var.addHeader(ojVar instanceof oj ? ojVar.b(yk0Var, om1Var, rl1Var) : ojVar.a(yk0Var, om1Var));
            } catch (uj e2) {
                if (this.a.isErrorEnabled()) {
                    this.a.error(ojVar + " authentication error: " + e2.getMessage());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080 A[Catch: o92 -> 0x0032, TRY_LEAVE, TryCatch #1 {o92 -> 0x0032, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x0037, B:10:0x0041, B:12:0x0049, B:19:0x0063, B:22:0x006d, B:25:0x0080), top: B:52:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(defpackage.em1 r18, defpackage.vm1 r19, defpackage.yj r20, defpackage.tj r21, defpackage.ul1 r22) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ml1.b(em1, vm1, yj, tj, ul1):boolean");
    }

    public final boolean c(em1 em1Var, vm1 vm1Var, yj yjVar, tj tjVar, ul1 ul1Var) {
        if (yjVar.b(vm1Var, ul1Var)) {
            this.a.debug("Authentication required");
            if (tjVar.a == 5) {
                yjVar.a(em1Var, tjVar.b, ul1Var);
            }
            return true;
        }
        int iF = di0.F(tjVar.a);
        if (iF == 1 || iF == 2) {
            this.a.debug("Authentication succeeded");
            tjVar.d(5);
            yjVar.e(em1Var, tjVar.b, ul1Var);
            return false;
        }
        if (iF == 4) {
            return false;
        }
        tjVar.d(1);
        return false;
    }
}
