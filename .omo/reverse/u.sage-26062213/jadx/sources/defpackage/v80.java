package defpackage;

import java.util.HashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v80 {
    public static final v80 n;
    public static final HashMap o;
    public static final /* synthetic */ v80[] p;

    /* JADX INFO: Fake field, exist only in values array */
    v80 EF0;

    static {
        v80 v80Var = new v80("X86_32", 0);
        v80 v80Var2 = new v80("X86_64", 1);
        v80 v80Var3 = new v80("ARM_UNKNOWN", 2);
        v80 v80Var4 = new v80("PPC", 3);
        v80 v80Var5 = new v80("PPC64", 4);
        v80 v80Var6 = new v80("ARMV6", 5);
        v80 v80Var7 = new v80("ARMV7", 6);
        v80 v80Var8 = new v80("UNKNOWN", 7);
        n = v80Var8;
        v80 v80Var9 = new v80("ARMV7S", 8);
        v80 v80Var10 = new v80("ARM64", 9);
        p = new v80[]{v80Var, v80Var2, v80Var3, v80Var4, v80Var5, v80Var6, v80Var7, v80Var8, v80Var9, v80Var10};
        HashMap map = new HashMap(4);
        o = map;
        map.put("armeabi-v7a", v80Var7);
        map.put("armeabi", v80Var6);
        map.put("arm64-v8a", v80Var10);
        map.put("x86", v80Var);
    }

    public static v80 valueOf(String str) {
        return (v80) Enum.valueOf(v80.class, str);
    }

    public static v80[] values() {
        return (v80[]) p.clone();
    }
}
