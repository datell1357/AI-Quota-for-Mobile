package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hu0 implements Executor {
    public static final hu0 n;
    public static final /* synthetic */ hu0[] o;

    static {
        hu0 hu0Var = new hu0("INSTANCE", 0);
        n = hu0Var;
        o = new hu0[]{hu0Var};
    }

    public static hu0 valueOf(String str) {
        return (hu0) Enum.valueOf(hu0.class, str);
    }

    public static hu0[] values() {
        return (hu0[]) o.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
