package defpackage;

import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class j51 implements r60 {
    public final File a;
    public final oi3 b;
    public final AtomicBoolean c;

    public j51(File file, oi3 oi3Var) {
        oi3Var.getClass();
        this.a = file;
        this.b = oi3Var;
        this.c = new AtomicBoolean(false);
    }

    @Override // defpackage.r60
    public final void close() {
        this.c.set(true);
    }
}
