package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kd4 implements View.OnApplyWindowInsetsListener {
    public final b70 a;
    public ke4 b;

    public kd4(View view, b70 b70Var) {
        ke4 ke4VarB;
        this.a = b70Var;
        Field field = lb4.a;
        ke4 ke4VarA = gb4.a(view);
        if (ke4VarA != null) {
            int i = Build.VERSION.SDK_INT;
            ke4VarB = (i >= 36 ? new xd4(ke4VarA) : i >= 35 ? new wd4(ke4VarA) : i >= 34 ? new vd4(ke4VarA) : i >= 31 ? new ud4(ke4VarA) : i >= 30 ? new td4(ke4VarA) : i >= 29 ? new sd4(ke4VarA) : new rd4(ke4VarA)).b();
        } else {
            ke4VarB = null;
        }
        this.b = ke4VarB;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        int[] iArr;
        boolean z;
        if (!view.isLaidOut()) {
            this.b = ke4.c(view, windowInsets);
            return ld4.i(view, windowInsets);
        }
        ke4 ke4VarC = ke4.c(view, windowInsets);
        he4 he4Var = ke4VarC.a;
        if (this.b == null) {
            Field field = lb4.a;
            this.b = gb4.a(view);
        }
        if (this.b == null) {
            this.b = ke4VarC;
            return ld4.i(view, windowInsets);
        }
        b70 b70VarJ = ld4.j(view);
        if (b70VarJ != null && Objects.equals((ke4) b70VarJ.o, ke4VarC)) {
            return ld4.i(view, windowInsets);
        }
        int[] iArr2 = new int[1];
        int[] iArr3 = new int[1];
        ke4 ke4Var = this.b;
        int i = 1;
        while (i <= 512) {
            nr1 nr1VarI = he4Var.i(i);
            nr1 nr1VarI2 = ke4Var.a.i(i);
            int i2 = nr1VarI.a;
            int i3 = nr1VarI.d;
            int i4 = nr1VarI.c;
            int i5 = nr1VarI.b;
            int i6 = nr1VarI2.a;
            int i7 = nr1VarI2.d;
            int i8 = nr1VarI2.c;
            int i9 = nr1VarI2.b;
            if (i2 > i6 || i5 > i9 || i4 > i8 || i3 > i7) {
                iArr = iArr2;
                z = true;
            } else {
                iArr = iArr2;
                z = false;
            }
            if (z != (i2 < i6 || i5 < i9 || i4 < i8 || i3 < i7)) {
                if (z) {
                    iArr[0] = iArr[0] | i;
                } else {
                    iArr3[0] = iArr3[0] | i;
                }
            }
            i <<= 1;
            iArr2 = iArr;
        }
        int i10 = iArr2[0];
        int i11 = iArr3[0];
        int i12 = i10 | i11;
        if (i12 == 0) {
            this.b = ke4VarC;
            return ld4.i(view, windowInsets);
        }
        ke4 ke4Var2 = this.b;
        qd4 qd4Var = new qd4(i12, (i10 & 8) != 0 ? ld4.e : (i11 & 8) != 0 ? ld4.f : (i10 & 519) != 0 ? ld4.g : (i11 & 519) != 0 ? ld4.h : null, (i12 & 8) != 0 ? 160L : 250L);
        qd4Var.a.d(0.0f);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(qd4Var.a.a());
        nr1 nr1VarI3 = he4Var.i(i12);
        nr1 nr1VarI4 = ke4Var2.a.i(i12);
        int iMin = Math.min(nr1VarI3.a, nr1VarI4.a);
        int i13 = nr1VarI3.b;
        int i14 = nr1VarI4.b;
        int iMin2 = Math.min(i13, i14);
        int i15 = nr1VarI3.c;
        int i16 = nr1VarI4.c;
        int iMin3 = Math.min(i15, i16);
        int i17 = nr1VarI3.d;
        int i18 = nr1VarI4.d;
        pc4 pc4Var = new pc4(1, nr1.b(iMin, iMin2, iMin3, Math.min(i17, i18)), nr1.b(Math.max(nr1VarI3.a, nr1VarI4.a), Math.max(i13, i14), Math.max(i15, i16), Math.max(i17, i18)));
        ld4.f(view, qd4Var, ke4VarC, false);
        duration.addUpdateListener(new id4(qd4Var, ke4VarC, ke4Var2, i12, view));
        duration.addListener(new jd4(qd4Var, view));
        mp2.a(view, new e30(view, qd4Var, pc4Var, duration, 1, false));
        this.b = ke4VarC;
        return ld4.i(view, windowInsets);
    }
}
