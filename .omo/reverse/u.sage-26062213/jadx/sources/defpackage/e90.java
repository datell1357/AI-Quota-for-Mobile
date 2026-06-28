package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e90 {
    public static final e90 n;
    public static final /* synthetic */ e90[] o;

    /* JADX INFO: Fake field, exist only in values array */
    e90 EF0;

    static {
        e90 e90Var = new e90("NOT_SET", 0);
        e90 e90Var2 = new e90("EVENT_OVERRIDE", 1);
        n = e90Var2;
        o = new e90[]{e90Var, e90Var2};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, e90Var);
        sparseArray.put(5, e90Var2);
    }

    public static e90 valueOf(String str) {
        return (e90) Enum.valueOf(e90.class, str);
    }

    public static e90[] values() {
        return (e90[]) o.clone();
    }
}
