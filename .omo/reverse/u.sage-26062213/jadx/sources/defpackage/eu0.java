package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eu0 implements Executor {
    public static final eu0 n;
    public static final /* synthetic */ eu0[] o;

    static {
        eu0 eu0Var = new eu0("INSTANCE", 0);
        n = eu0Var;
        o = new eu0[]{eu0Var};
    }

    public static eu0 valueOf(String str) {
        return (eu0) Enum.valueOf(eu0.class, str);
    }

    public static eu0[] values() {
        return (eu0[]) o.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
