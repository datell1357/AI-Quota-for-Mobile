package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fu0 implements Executor {
    public static final fu0 n;
    public static final /* synthetic */ fu0[] o;

    static {
        fu0 fu0Var = new fu0("INSTANCE", 0);
        n = fu0Var;
        o = new fu0[]{fu0Var};
    }

    public static fu0 valueOf(String str) {
        return (fu0) Enum.valueOf(fu0.class, str);
    }

    public static fu0[] values() {
        return (fu0[]) o.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
