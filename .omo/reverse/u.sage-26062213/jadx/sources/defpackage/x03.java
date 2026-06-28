package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x03 {
    public static final x03 n;
    public static final /* synthetic */ x03[] o;

    static {
        x03 x03Var = new x03("DEFAULT", 0);
        n = x03Var;
        x03 x03Var2 = new x03("UNMETERED_ONLY", 1);
        x03 x03Var3 = new x03("UNMETERED_OR_DAILY", 2);
        x03 x03Var4 = new x03("FAST_IF_RADIO_AWAKE", 3);
        x03 x03Var5 = new x03("NEVER", 4);
        x03 x03Var6 = new x03("UNRECOGNIZED", 5);
        o = new x03[]{x03Var, x03Var2, x03Var3, x03Var4, x03Var5, x03Var6};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, x03Var);
        sparseArray.put(1, x03Var2);
        sparseArray.put(2, x03Var3);
        sparseArray.put(3, x03Var4);
        sparseArray.put(4, x03Var5);
        sparseArray.put(-1, x03Var6);
    }

    public static x03 valueOf(String str) {
        return (x03) Enum.valueOf(x03.class, str);
    }

    public static x03[] values() {
        return (x03[]) o.clone();
    }
}
