package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class v3 {
    public static final /* synthetic */ kx1[] a = {new tz2(v3.class, "claudeAccountDataStore", "getClaudeAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1), new tz2(v3.class, "copilotAccountDataStore", "getCopilotAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1), new tz2(v3.class, "antigravityAccountDataStore", "getAntigravityAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1), new tz2(v3.class, "geminiAccountDataStore", "getGeminiAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1), new tz2(v3.class, "codexAccountDataStore", "getCodexAccountDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 1)};
    public static final qx2 b = on4.H("account_data", null, new t3(0), 10);
    public static final qx2 c = on4.H("account_data_copilot", null, null, 14);
    public static final qx2 d = on4.H("account_data_antigravity", null, null, 14);
    public static final qx2 e = on4.H("account_data_gemini", null, null, 14);
    public static final qx2 f = on4.H("account_data_codex", null, null, 14);

    public static final String a(w3 w3Var, y84 y84Var) {
        w3Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
            String strC = w3Var.c();
            return (strC == null && (strC = w3Var.i()) == null) ? w3Var.j() : strC;
        }
        if (iOrdinal == 4) {
            return w3Var.i();
        }
        p61.x();
        return null;
    }
}
