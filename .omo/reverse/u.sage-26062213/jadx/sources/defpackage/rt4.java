package defpackage;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rt4 {
    public static final rt4 f = new rt4((Boolean) null, 100, (Boolean) null, (String) null);
    public final int a;
    public final String b;
    public final Boolean c;
    public final String d;
    public final EnumMap e;

    public rt4(Boolean bool, int i, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(x55.class);
        this.e = enumMap;
        enumMap.put(x55.AD_USER_DATA, bool == null ? u55.UNINITIALIZED : bool.booleanValue() ? u55.GRANTED : u55.DENIED);
        this.a = i;
        this.b = d();
        this.c = bool2;
        this.d = str;
    }

    public static rt4 b(String str) {
        if (str == null || str.length() <= 0) {
            return f;
        }
        String[] strArrSplit = str.split(":");
        int i = Integer.parseInt(strArrSplit[0]);
        EnumMap enumMap = new EnumMap(x55.class);
        x55[] x55VarArr = v55.DMA.n;
        int length = x55VarArr.length;
        int i2 = 1;
        int i3 = 0;
        while (i3 < length) {
            enumMap.put(x55VarArr[i3], y55.e(strArrSplit[i2].charAt(0)));
            i3++;
            i2++;
        }
        return new rt4(enumMap, i, (Boolean) null, (String) null);
    }

    public static rt4 c(int i, Bundle bundle) {
        if (bundle == null) {
            return new rt4((Boolean) null, i, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(x55.class);
        for (x55 x55Var : v55.DMA.n) {
            enumMap.put(x55Var, y55.d(bundle.getString(x55Var.n)));
        }
        return new rt4(enumMap, i, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public final u55 a() {
        u55 u55Var = (u55) this.e.get(x55.AD_USER_DATA);
        return u55Var == null ? u55.UNINITIALIZED : u55Var;
    }

    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        for (x55 x55Var : v55.DMA.n) {
            sb.append(":");
            sb.append(y55.h((u55) this.e.get(x55Var)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof rt4)) {
            return false;
        }
        rt4 rt4Var = (rt4) obj;
        if (this.b.equalsIgnoreCase(rt4Var.b) && Objects.equals(this.c, rt4Var.c)) {
            return Objects.equals(this.d, rt4Var.d);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.c;
        int i = bool == null ? 3 : true != bool.booleanValue() ? 13 : 7;
        String str = this.d;
        return ((str == null ? 17 : str.hashCode()) * 137) + this.b.hashCode() + (i * 29);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(y55.a(this.a));
        for (x55 x55Var : v55.DMA.n) {
            sb.append(",");
            sb.append(x55Var.n);
            sb.append("=");
            u55 u55Var = (u55) this.e.get(x55Var);
            if (u55Var == null) {
                sb.append("uninitialized");
            } else {
                int iOrdinal = u55Var.ordinal();
                if (iOrdinal == 0) {
                    sb.append("uninitialized");
                } else if (iOrdinal == 1) {
                    sb.append("eu_consent_policy");
                } else if (iOrdinal == 2) {
                    sb.append("denied");
                } else if (iOrdinal == 3) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.c;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.d;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    public rt4(EnumMap enumMap, int i, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(x55.class);
        this.e = enumMap2;
        enumMap2.putAll(enumMap);
        this.a = i;
        this.b = d();
        this.c = bool;
        this.d = str;
    }
}
