package defpackage;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.autofill.AutofillId;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sf {
    public static final ColorSpace a(b80 b80Var) {
        if (nt1.g(b80Var, e80.e)) {
            return ColorSpace.get(ColorSpace.Named.SRGB);
        }
        if (nt1.g(b80Var, e80.q)) {
            return ColorSpace.get(ColorSpace.Named.ACES);
        }
        if (nt1.g(b80Var, e80.r)) {
            return ColorSpace.get(ColorSpace.Named.ACESCG);
        }
        if (nt1.g(b80Var, e80.o)) {
            return ColorSpace.get(ColorSpace.Named.ADOBE_RGB);
        }
        if (nt1.g(b80Var, e80.j)) {
            return ColorSpace.get(ColorSpace.Named.BT2020);
        }
        if (nt1.g(b80Var, e80.i)) {
            return ColorSpace.get(ColorSpace.Named.BT709);
        }
        if (nt1.g(b80Var, e80.t)) {
            return ColorSpace.get(ColorSpace.Named.CIE_LAB);
        }
        if (nt1.g(b80Var, e80.s)) {
            return ColorSpace.get(ColorSpace.Named.CIE_XYZ);
        }
        if (nt1.g(b80Var, e80.k)) {
            return ColorSpace.get(ColorSpace.Named.DCI_P3);
        }
        if (nt1.g(b80Var, e80.l)) {
            return ColorSpace.get(ColorSpace.Named.DISPLAY_P3);
        }
        if (nt1.g(b80Var, e80.g)) {
            return ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB);
        }
        if (nt1.g(b80Var, e80.h)) {
            return ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        }
        if (nt1.g(b80Var, e80.f)) {
            return ColorSpace.get(ColorSpace.Named.LINEAR_SRGB);
        }
        if (nt1.g(b80Var, e80.m)) {
            return ColorSpace.get(ColorSpace.Named.NTSC_1953);
        }
        if (nt1.g(b80Var, e80.p)) {
            return ColorSpace.get(ColorSpace.Named.PRO_PHOTO_RGB);
        }
        if (nt1.g(b80Var, e80.n)) {
            return ColorSpace.get(ColorSpace.Named.SMPTE_C);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            ColorSpace colorSpace = nt1.g(b80Var, e80.v) ? ColorSpace.get(ColorSpace.Named.BT2020_HLG) : nt1.g(b80Var, e80.w) ? ColorSpace.get(ColorSpace.Named.BT2020_PQ) : null;
            if (colorSpace != null) {
                return colorSpace;
            }
        }
        if (i >= 36) {
            ColorSpace colorSpace2 = nt1.g(b80Var, e80.x) ? ColorSpace.get(ColorSpace.Named.OK_LAB) : null;
            if (colorSpace2 != null) {
                return colorSpace2;
            }
        }
        if (!(b80Var instanceof w83)) {
            return ColorSpace.get(ColorSpace.Named.SRGB);
        }
        String str = b80Var.a;
        w83 w83Var = (w83) b80Var;
        float[] fArrA = w83Var.d.a();
        e14 e14Var = w83Var.g;
        ColorSpace.Rgb.TransferParameters transferParameters = e14Var != null ? new ColorSpace.Rgb.TransferParameters(e14Var.b, e14Var.c, e14Var.d, e14Var.e, e14Var.f, e14Var.g, e14Var.a) : null;
        float[] fArr = w83Var.i;
        final int i2 = 0;
        if (transferParameters != null) {
            ColorSpace.Rgb rgb = new ColorSpace.Rgb(str, w83Var.h, fArrA, transferParameters);
            return (Float.isNaN(fArr[0]) || Arrays.equals(rgb.getTransform(), fArr)) ? rgb : new ColorSpace.Rgb(str, fArr, transferParameters);
        }
        float[] fArr2 = w83Var.h;
        final v83 v83Var = w83Var.l;
        DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: c80
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d) {
                int i3 = i2;
                pe1 pe1Var = v83Var;
                switch (i3) {
                }
                return ((Number) pe1Var.k(Double.valueOf(d))).doubleValue();
            }
        };
        final v83 v83Var2 = w83Var.o;
        final int i3 = 1;
        return new ColorSpace.Rgb(str, fArr2, fArrA, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: c80
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d) {
                int i32 = i3;
                pe1 pe1Var = v83Var2;
                switch (i32) {
                }
                return ((Number) pe1Var.k(Double.valueOf(d))).doubleValue();
            }
        }, w83Var.e, w83Var.f);
    }

    public static Notification.Builder b(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static Icon c(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    public static AutofillId d(View view) {
        return view.getAutofillId();
    }

    public static float e(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHorizontalScrollFactor();
    }

    public static float f(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHorizontalScrollFactor();
    }

    public static float g(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledVerticalScrollFactor();
    }

    public static float h(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledVerticalScrollFactor();
    }

    public static boolean i(File file, File file2) {
        try {
            Files.move(file.toPath(), file2.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static Intent j(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return context.registerReceiver(broadcastReceiver, intentFilter, null, null, 0);
    }

    public static Intent k(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return context.registerReceiver(broadcastReceiver, intentFilter, null, null, 2);
    }

    public static void l(MenuItem menuItem, char c, int i) {
        menuItem.setAlphabeticShortcut(c, i);
    }

    public static void m(Notification.Builder builder) {
        builder.setBadgeIconType(0);
    }

    public static void n(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setContentDescription(charSequence);
    }

    public static void o(Notification.Builder builder, int i) {
        builder.setGroupAlertBehavior(i);
    }

    public static void p(MenuItem menuItem, ColorStateList colorStateList) {
        menuItem.setIconTintList(colorStateList);
    }

    public static void q(MenuItem menuItem, PorterDuff.Mode mode) {
        menuItem.setIconTintMode(mode);
    }

    public static void r(MenuItem menuItem, char c, int i) {
        menuItem.setNumericShortcut(c, i);
    }

    public static void s(Notification.Builder builder) {
        builder.setSettingsText(null);
    }

    public static void t(Notification.Builder builder) {
        builder.setShortcutId(null);
    }

    public static void u(Notification.Builder builder) {
        builder.setTimeoutAfter(0L);
    }

    public static void v(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setTooltipText(charSequence);
    }

    public static void w(Context context, Intent intent) {
        context.startForegroundService(intent);
    }
}
