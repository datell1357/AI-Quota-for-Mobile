package defpackage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gp0 extends m1 {
    public final Log g;
    public final ep0 h;
    public final b40 i;

    public gp0(xj3 xj3Var, ep0 ep0Var, km1 km1Var) {
        super(xj3Var, km1Var);
        this.g = LogFactory.getLog(gp0.class);
        w80.L(ep0Var, "Response factory");
        this.h = ep0Var;
        this.i = new b40(128);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    @Override // defpackage.m1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.av b(defpackage.xj3 r17) throws defpackage.e03, defpackage.em2 {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gp0.b(xj3):av");
    }

    public gp0(xj3 xj3Var, bv bvVar, ep0 ep0Var) {
        super(xj3Var, bvVar);
        this.g = LogFactory.getLog(gp0.class);
        this.h = ep0Var == null ? ep0.b : ep0Var;
        this.i = new b40(128);
    }
}
