package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i61 implements Executor {
    public static final i61 n;
    public static final /* synthetic */ i61[] o;

    static {
        i61 i61Var = new i61("INSTANCE", 0);
        n = i61Var;
        o = new i61[]{i61Var};
    }

    public static i61 valueOf(String str) {
        return (i61) Enum.valueOf(i61.class, str);
    }

    public static i61[] values() {
        return (i61[]) o.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
