package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iu implements g60 {
    public static final AtomicLong t = new AtomicLong();
    public final Log n = LogFactory.getLog(iu.class);
    public final je3 o;
    public final eo0 p;
    public mm1 q;
    public u92 r;
    public volatile boolean s;

    public iu(je3 je3Var) {
        this.o = je3Var;
        this.p = new eo0(je3Var);
    }

    public final u92 a(ym1 ym1Var) {
        u92 u92Var;
        w80.L(ym1Var, "Route");
        synchronized (this) {
            try {
                boolean z = true;
                mt1.n("Connection manager has been shut down", !this.s);
                if (this.n.isDebugEnabled()) {
                    this.n.debug("Get connection for route " + ym1Var);
                }
                if (this.r != null) {
                    z = false;
                }
                mt1.n("Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.", z);
                mm1 mm1Var = this.q;
                if (mm1Var != null && !((ym1) mm1Var.b).equals(ym1Var)) {
                    this.q.a();
                    this.q = null;
                }
                if (this.q == null) {
                    String string = Long.toString(t.getAndIncrement());
                    this.p.getClass();
                    this.q = new mm1(this.n, string, ym1Var, new do0());
                }
                if (this.q.c(System.currentTimeMillis())) {
                    this.q.a();
                    this.q.i.g();
                }
                u92Var = new u92(this, this.p, this.q);
                this.r = u92Var;
            } catch (Throwable th) {
                throw th;
            }
        }
        return u92Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0087 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:33:0x0062, B:35:0x0068, B:37:0x006c, B:40:0x0071, B:42:0x0079, B:45:0x0083, B:47:0x0087, B:51:0x009a, B:53:0x00b1), top: B:68:0x0062, outer: #4, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c6 A[Catch: all -> 0x005e, TryCatch #4 {, blocks: (B:19:0x0043, B:21:0x0047, B:27:0x005b, B:54:0x00ba, B:56:0x00c6, B:57:0x00c8, B:60:0x00cb, B:62:0x00d7, B:63:0x00d9, B:24:0x004c, B:26:0x0054, B:33:0x0062, B:35:0x0068, B:37:0x006c, B:40:0x0071, B:42:0x0079, B:45:0x0083, B:47:0x0087, B:51:0x009a, B:53:0x00b1), top: B:75:0x0043, outer: #2, inners: #0, #3 }] */
    @Override // defpackage.g60
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(defpackage.t92 r8, long r9) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.iu.c(t92, long):void");
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
        return new eh(this, ym1Var, obj, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.g60
    public final void shutdown() {
        synchronized (this) {
            try {
                this.s = true;
                try {
                    mm1 mm1Var = this.q;
                    if (mm1Var != null) {
                        mm1Var.a();
                    }
                } finally {
                    this.q = null;
                    this.r = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
