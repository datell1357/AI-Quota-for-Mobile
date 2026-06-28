package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cj0 implements Callable {
    public final /* synthetic */ long a;
    public final /* synthetic */ dj0 b;

    public cj0(dj0 dj0Var, long j) {
        this.b = dj0Var;
        this.a = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.a);
        this.b.k.j(bundle);
        return null;
    }
}
