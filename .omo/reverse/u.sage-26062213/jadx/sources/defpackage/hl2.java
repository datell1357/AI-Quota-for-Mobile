package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hl2 {
    public static final SparseArray n;
    public static final /* synthetic */ hl2[] o;

    /* JADX INFO: Fake field, exist only in values array */
    hl2 EF1;

    static {
        hl2 hl2Var = new hl2("MOBILE", 0);
        hl2 hl2Var2 = new hl2("WIFI", 1);
        hl2 hl2Var3 = new hl2("MOBILE_MMS", 2);
        hl2 hl2Var4 = new hl2("MOBILE_SUPL", 3);
        hl2 hl2Var5 = new hl2("MOBILE_DUN", 4);
        hl2 hl2Var6 = new hl2("MOBILE_HIPRI", 5);
        hl2 hl2Var7 = new hl2("WIMAX", 6);
        hl2 hl2Var8 = new hl2("BLUETOOTH", 7);
        hl2 hl2Var9 = new hl2("DUMMY", 8);
        hl2 hl2Var10 = new hl2("ETHERNET", 9);
        hl2 hl2Var11 = new hl2("MOBILE_FOTA", 10);
        hl2 hl2Var12 = new hl2("MOBILE_IMS", 11);
        hl2 hl2Var13 = new hl2("MOBILE_CBS", 12);
        hl2 hl2Var14 = new hl2("WIFI_P2P", 13);
        hl2 hl2Var15 = new hl2("MOBILE_IA", 14);
        hl2 hl2Var16 = new hl2("MOBILE_EMERGENCY", 15);
        hl2 hl2Var17 = new hl2("PROXY", 16);
        hl2 hl2Var18 = new hl2("VPN", 17);
        hl2 hl2Var19 = new hl2("NONE", 18);
        o = new hl2[]{hl2Var, hl2Var2, hl2Var3, hl2Var4, hl2Var5, hl2Var6, hl2Var7, hl2Var8, hl2Var9, hl2Var10, hl2Var11, hl2Var12, hl2Var13, hl2Var14, hl2Var15, hl2Var16, hl2Var17, hl2Var18, hl2Var19};
        SparseArray sparseArray = new SparseArray();
        n = sparseArray;
        sparseArray.put(0, hl2Var);
        sparseArray.put(1, hl2Var2);
        sparseArray.put(2, hl2Var3);
        sparseArray.put(3, hl2Var4);
        sparseArray.put(4, hl2Var5);
        sparseArray.put(5, hl2Var6);
        sparseArray.put(6, hl2Var7);
        sparseArray.put(7, hl2Var8);
        sparseArray.put(8, hl2Var9);
        sparseArray.put(9, hl2Var10);
        sparseArray.put(10, hl2Var11);
        sparseArray.put(11, hl2Var12);
        sparseArray.put(12, hl2Var13);
        sparseArray.put(13, hl2Var14);
        sparseArray.put(14, hl2Var15);
        sparseArray.put(15, hl2Var16);
        sparseArray.put(16, hl2Var17);
        sparseArray.put(17, hl2Var18);
        sparseArray.put(-1, hl2Var19);
    }

    public static hl2 valueOf(String str) {
        return (hl2) Enum.valueOf(hl2.class, str);
    }

    public static hl2[] values() {
        return (hl2[]) o.clone();
    }
}
