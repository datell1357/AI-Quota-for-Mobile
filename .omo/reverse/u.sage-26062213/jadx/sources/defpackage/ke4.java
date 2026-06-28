package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ke4 {
    public static final ke4 b;
    public final he4 a;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            b = fe4.x;
        } else if (i >= 30) {
            b = de4.w;
        } else {
            b = he4.b;
        }
    }

    public ke4(ke4 ke4Var) {
        if (ke4Var == null) {
            this.a = new he4(this);
            return;
        }
        he4 he4Var = ke4Var.a;
        int i = Build.VERSION.SDK_INT;
        if (i >= 35 && (he4Var instanceof ge4)) {
            this.a = new ge4(this, (ge4) he4Var);
        } else if (i >= 34 && (he4Var instanceof fe4)) {
            this.a = new fe4(this, (fe4) he4Var);
        } else if (i >= 31 && (he4Var instanceof ee4)) {
            this.a = new ee4(this, (ee4) he4Var);
        } else if (i >= 30 && (he4Var instanceof de4)) {
            this.a = new de4(this, (de4) he4Var);
        } else if (i >= 29 && (he4Var instanceof ce4)) {
            this.a = new ce4(this, (ce4) he4Var);
        } else if (i >= 28 && (he4Var instanceof be4)) {
            this.a = new be4(this, (be4) he4Var);
        } else if (he4Var instanceof ae4) {
            this.a = new ae4(this, (ae4) he4Var);
        } else if (he4Var instanceof zd4) {
            this.a = new zd4(this, (zd4) he4Var);
        } else {
            this.a = new he4(this);
        }
        he4Var.e(this);
    }

    public static nr1 a(nr1 nr1Var, int i, int i2, int i3, int i4) {
        int iMax = Math.max(0, nr1Var.a - i);
        int iMax2 = Math.max(0, nr1Var.b - i2);
        int iMax3 = Math.max(0, nr1Var.c - i3);
        int iMax4 = Math.max(0, nr1Var.d - i4);
        return (iMax == i && iMax2 == i2 && iMax3 == i3 && iMax4 == i4) ? nr1Var : nr1.b(iMax, iMax2, iMax3, iMax4);
    }

    public static ke4 c(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        ke4 ke4Var = new ke4(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            Field field = lb4.a;
            ke4 ke4VarA = gb4.a(view);
            he4 he4Var = ke4Var.a;
            he4Var.y(ke4VarA);
            View rootView = view.getRootView();
            he4Var.d(rootView);
            he4Var.p(rootView);
            he4Var.q();
            he4Var.A(view.getWindowSystemUiVisibility());
        }
        return ke4Var;
    }

    public final WindowInsets b() {
        he4 he4Var = this.a;
        if (he4Var instanceof zd4) {
            return ((zd4) he4Var).c;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ke4) {
            return Objects.equals(this.a, ((ke4) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        he4 he4Var = this.a;
        if (he4Var == null) {
            return 0;
        }
        return he4Var.hashCode();
    }

    public ke4(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            this.a = new ge4(this, windowInsets);
            return;
        }
        if (i >= 34) {
            this.a = new fe4(this, windowInsets);
            return;
        }
        if (i >= 31) {
            this.a = new ee4(this, windowInsets);
            return;
        }
        if (i >= 30) {
            this.a = new de4(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.a = new ce4(this, windowInsets);
        } else if (i >= 28) {
            this.a = new be4(this, windowInsets);
        } else {
            this.a = new ae4(this, windowInsets);
        }
    }
}
