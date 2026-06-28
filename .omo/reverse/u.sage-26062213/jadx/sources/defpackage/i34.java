package defpackage;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class i34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        return new AtomicBoolean(ww1Var.V());
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        bx1Var.o0(((AtomicBoolean) obj).get());
    }
}
