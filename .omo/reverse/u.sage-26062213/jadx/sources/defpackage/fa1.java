package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fa1 {
    public static final fa1 n;
    public static final fa1 o;
    public static final fa1 p;
    public static final /* synthetic */ fa1[] q;

    static {
        fa1 fa1Var = new fa1("Active", 0);
        n = fa1Var;
        fa1 fa1Var2 = new fa1("ActiveParent", 1);
        o = fa1Var2;
        fa1 fa1Var3 = new fa1("Captured", 2);
        fa1 fa1Var4 = new fa1("Inactive", 3);
        p = fa1Var4;
        q = new fa1[]{fa1Var, fa1Var2, fa1Var3, fa1Var4};
    }

    public static fa1 valueOf(String str) {
        return (fa1) Enum.valueOf(fa1.class, str);
    }

    public static fa1[] values() {
        return (fa1[]) q.clone();
    }

    public final boolean a() {
        int iOrdinal = ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                return false;
            }
            if (iOrdinal != 2) {
                if (iOrdinal == 3) {
                    return false;
                }
                p61.x();
                return false;
            }
        }
        return true;
    }
}
