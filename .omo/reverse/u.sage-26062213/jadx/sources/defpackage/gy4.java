package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gy4 implements Callable {
    public static final /* synthetic */ gy4 b = new gy4(0);
    public static final /* synthetic */ gy4 c = new gy4(1);
    public final /* synthetic */ int a;

    public /* synthetic */ gy4(int i) {
        this.a = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.a) {
            case 0:
                e95 e95Var = new e95("internal.platform", 4);
                e95Var.o.put("getVersion", new e95("getVersion", 3));
                return e95Var;
            default:
                return null;
        }
    }
}
