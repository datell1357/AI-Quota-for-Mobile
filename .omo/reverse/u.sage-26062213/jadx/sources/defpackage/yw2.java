package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yw2 {
    public final /* synthetic */ ax2 a;

    public yw2(ax2 ax2Var) {
        this.a = ax2Var;
    }

    public final void a(mw2 mw2Var) {
        v92 v92Var = (v92) mw2Var.c;
        if (v92Var != null) {
            try {
                v92Var.shutdown();
            } catch (IOException e) {
                ax2 ax2Var = this.a;
                if (ax2Var.n.isDebugEnabled()) {
                    ax2Var.n.debug("I/O exception shutting down connection", e);
                }
            }
        }
    }
}
