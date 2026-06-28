package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ml4 extends ql4 {
    public static final ml4 b = new ml4(rl4.a);
    public final AtomicReference a;

    public ml4(ql4 ql4Var) {
        this.a = new AtomicReference(ql4Var);
    }

    @Override // defpackage.ql4
    public final void a(String str, Level level, boolean z) {
        ((ql4) this.a.get()).a(str, level, z);
    }

    @Override // defpackage.ql4
    public final zl4 b() {
        return ((ql4) this.a.get()).b();
    }

    @Override // defpackage.ql4
    public final ye4 c() {
        return ((ql4) this.a.get()).c();
    }
}
