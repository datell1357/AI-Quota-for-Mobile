package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h64 implements Executor {
    public static final h64 n;
    public static final Handler o;
    public static final /* synthetic */ h64[] p;

    static {
        h64 h64Var = new h64("INSTANCE", 0);
        n = h64Var;
        p = new h64[]{h64Var};
        o = new Handler(Looper.getMainLooper());
    }

    public static h64 valueOf(String str) {
        return (h64) Enum.valueOf(h64.class, str);
    }

    public static h64[] values() {
        return (h64[]) p.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        o.post(runnable);
    }
}
