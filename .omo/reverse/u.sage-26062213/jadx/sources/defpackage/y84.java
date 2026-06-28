package defpackage;

import u.sage.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y84 {
    public static final y84 r;
    public static final y84 s;
    public static final y84 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final y84 f419u;
    public static final y84 v;
    public static final /* synthetic */ y84[] w;
    public static final /* synthetic */ t11 x;
    public final String n;
    public final int o;
    public final int p;
    public final String q;

    static {
        y84 y84Var = new y84("CLAUDE", 0, "Claude", R.drawable.ic_claude, 1001, "claude_usage");
        r = y84Var;
        y84 y84Var2 = new y84("GEMINI", 1, "Gemini", R.drawable.gemini, 1004, "gemini_usage");
        s = y84Var2;
        y84 y84Var3 = new y84("ANTIGRAVITY", 2, "Antigravity", R.drawable.antigravity_24px, 1003, "antigravity_usage");
        t = y84Var3;
        y84 y84Var4 = new y84("CODEX", 3, "Codex", R.drawable.codex, 1005, "codex_usage");
        f419u = y84Var4;
        y84 y84Var5 = new y84("COPILOT", 4, "Copilot", R.drawable.ic_copilot_16, 1002, "copilot_usage");
        v = y84Var5;
        y84[] y84VarArr = {y84Var, y84Var2, y84Var3, y84Var4, y84Var5};
        w = y84VarArr;
        x = new t11(y84VarArr);
    }

    public y84(String str, int i, String str2, int i2, int i3, String str3) {
        this.n = str2;
        this.o = i2;
        this.p = i3;
        this.q = str3;
    }

    public static y84 valueOf(String str) {
        return (y84) Enum.valueOf(y84.class, str);
    }

    public static y84[] values() {
        return (y84[]) w.clone();
    }

    public final ts1 a() {
        ts1 ts1Var = ts1.b;
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return ts1Var;
        }
        if (iOrdinal == 1) {
            return ts1.d;
        }
        if (iOrdinal == 2 || iOrdinal == 3) {
            return ts1Var;
        }
        if (iOrdinal == 4) {
            return ts1.c;
        }
        p61.x();
        return null;
    }
}
