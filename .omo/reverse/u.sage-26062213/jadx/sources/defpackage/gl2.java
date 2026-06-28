package defpackage;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gl2 {
    public static final SparseArray n;
    public static final /* synthetic */ gl2[] o;

    /* JADX INFO: Fake field, exist only in values array */
    gl2 EF1;

    static {
        gl2 gl2Var = new gl2("UNKNOWN_MOBILE_SUBTYPE", 0);
        gl2 gl2Var2 = new gl2("GPRS", 1);
        gl2 gl2Var3 = new gl2("EDGE", 2);
        gl2 gl2Var4 = new gl2("UMTS", 3);
        gl2 gl2Var5 = new gl2("CDMA", 4);
        gl2 gl2Var6 = new gl2("EVDO_0", 5);
        gl2 gl2Var7 = new gl2("EVDO_A", 6);
        gl2 gl2Var8 = new gl2("RTT", 7);
        gl2 gl2Var9 = new gl2("HSDPA", 8);
        gl2 gl2Var10 = new gl2("HSUPA", 9);
        gl2 gl2Var11 = new gl2("HSPA", 10);
        gl2 gl2Var12 = new gl2("IDEN", 11);
        gl2 gl2Var13 = new gl2("EVDO_B", 12);
        gl2 gl2Var14 = new gl2("LTE", 13);
        gl2 gl2Var15 = new gl2("EHRPD", 14);
        gl2 gl2Var16 = new gl2("HSPAP", 15);
        gl2 gl2Var17 = new gl2("GSM", 16);
        gl2 gl2Var18 = new gl2("TD_SCDMA", 17);
        gl2 gl2Var19 = new gl2("IWLAN", 18);
        gl2 gl2Var20 = new gl2("LTE_CA", 19);
        o = new gl2[]{gl2Var, gl2Var2, gl2Var3, gl2Var4, gl2Var5, gl2Var6, gl2Var7, gl2Var8, gl2Var9, gl2Var10, gl2Var11, gl2Var12, gl2Var13, gl2Var14, gl2Var15, gl2Var16, gl2Var17, gl2Var18, gl2Var19, gl2Var20, new gl2("COMBINED", 20)};
        SparseArray sparseArray = new SparseArray();
        n = sparseArray;
        sparseArray.put(0, gl2Var);
        sparseArray.put(1, gl2Var2);
        sparseArray.put(2, gl2Var3);
        sparseArray.put(3, gl2Var4);
        sparseArray.put(4, gl2Var5);
        sparseArray.put(5, gl2Var6);
        sparseArray.put(6, gl2Var7);
        sparseArray.put(7, gl2Var8);
        sparseArray.put(8, gl2Var9);
        sparseArray.put(9, gl2Var10);
        sparseArray.put(10, gl2Var11);
        sparseArray.put(11, gl2Var12);
        sparseArray.put(12, gl2Var13);
        sparseArray.put(13, gl2Var14);
        sparseArray.put(14, gl2Var15);
        sparseArray.put(15, gl2Var16);
        sparseArray.put(16, gl2Var17);
        sparseArray.put(17, gl2Var18);
        sparseArray.put(18, gl2Var19);
        sparseArray.put(19, gl2Var20);
    }

    public static gl2 valueOf(String str) {
        return (gl2) Enum.valueOf(gl2.class, str);
    }

    public static gl2[] values() {
        return (gl2[]) o.clone();
    }
}
