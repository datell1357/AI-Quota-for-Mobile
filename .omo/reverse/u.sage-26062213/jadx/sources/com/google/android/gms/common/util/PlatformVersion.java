package com.google.android.gms.common.util;

import android.os.Build;
import defpackage.hz;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class PlatformVersion {
    private PlatformVersion() {
    }

    @Deprecated
    public static boolean isAtLeastHoneycomb() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastHoneycombMR1() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastIceCreamSandwich() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastIceCreamSandwichMR1() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastJellyBean() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastJellyBeanMR1() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastJellyBeanMR2() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastKitKat() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastKitKatWatch() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastLollipop() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastLollipopMR1() {
        return true;
    }

    @Deprecated
    public static boolean isAtLeastM() {
        return true;
    }

    public static boolean isAtLeastN() {
        return true;
    }

    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isAtLeastP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean isAtLeastQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isAtLeastS() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static boolean isAtLeastSv2() {
        return Build.VERSION.SDK_INT >= 32;
    }

    public static boolean isAtLeastT() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public static boolean isAtLeastU() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public static boolean isAtLeastV() {
        int i = hz.a;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35) {
            return true;
        }
        if (i2 >= 34) {
            String str = Build.VERSION.CODENAME;
            str.getClass();
            if (!"REL".equals(str)) {
                Locale locale = Locale.ROOT;
                String upperCase = str.toUpperCase(locale);
                upperCase.getClass();
                Integer num = upperCase.equals("BAKLAVA") ? num : null;
                String upperCase2 = "VanillaIceCream".toUpperCase(locale);
                upperCase2.getClass();
                num = upperCase2.equals("BAKLAVA") ? 0 : null;
                if (num == null || num == null) {
                    if (num == null && num == null) {
                        String upperCase3 = str.toUpperCase(locale);
                        upperCase3.getClass();
                        String upperCase4 = "VanillaIceCream".toUpperCase(locale);
                        upperCase4.getClass();
                        if (upperCase3.compareTo(upperCase4) >= 0) {
                            return true;
                        }
                    } else if (num != null) {
                        return true;
                    }
                } else if (num.intValue() >= num.intValue()) {
                    return true;
                }
            }
        }
        return false;
    }
}
