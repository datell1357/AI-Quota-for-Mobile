package defpackage;

import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mm1 extends mw2 {
    public final Log h;
    public final ya3 i;

    public mm1(Log log, String str, ym1 ym1Var, do0 do0Var) {
        super(str, ym1Var, do0Var, 0L, TimeUnit.MILLISECONDS);
        this.h = log;
        this.i = new ya3(ym1Var);
    }

    @Override // defpackage.mw2
    public final void a() {
        try {
            ((do0) ((qp2) this.c)).close();
        } catch (IOException e) {
            this.h.debug("I/O error closing connection", e);
        }
    }

    @Override // defpackage.mw2
    public final boolean b() {
        return !((op3) ((qp2) this.c)).v;
    }

    @Override // defpackage.mw2
    public final boolean c(long j) {
        boolean z;
        long j2;
        synchronized (this) {
            z = j >= this.f;
        }
        if (!z || !this.h.isDebugEnabled()) {
            return z;
        }
        Log log = this.h;
        StringBuilder sb = new StringBuilder("Connection ");
        sb.append(this);
        sb.append(" expired @ ");
        synchronized (this) {
            j2 = this.f;
        }
        sb.append(new Date(j2));
        log.debug(sb.toString());
        return z;
    }
}
