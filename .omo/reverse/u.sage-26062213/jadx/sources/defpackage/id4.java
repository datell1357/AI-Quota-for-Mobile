package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.PathInterpolator;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class id4 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ qd4 a;
    public final /* synthetic */ ke4 b;
    public final /* synthetic */ ke4 c;
    public final /* synthetic */ int d;
    public final /* synthetic */ View e;

    public id4(qd4 qd4Var, ke4 ke4Var, ke4 ke4Var2, int i, View view) {
        this.a = qd4Var;
        this.b = ke4Var;
        this.c = ke4Var2;
        this.d = i;
        this.e = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        qd4 qd4Var = this.a;
        pd4 pd4Var = qd4Var.a;
        pd4Var.d(animatedFraction);
        float fB = pd4Var.b();
        PathInterpolator pathInterpolator = ld4.e;
        int i = Build.VERSION.SDK_INT;
        ke4 ke4Var = this.b;
        yd4 xd4Var = i >= 36 ? new xd4(ke4Var) : i >= 35 ? new wd4(ke4Var) : i >= 34 ? new vd4(ke4Var) : i >= 31 ? new ud4(ke4Var) : i >= 30 ? new td4(ke4Var) : i >= 29 ? new sd4(ke4Var) : new rd4(ke4Var);
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            int i3 = this.d & i2;
            he4 he4Var = ke4Var.a;
            if (i3 == 0) {
                xd4Var.d(i2, he4Var.i(i2));
            } else {
                nr1 nr1VarI = he4Var.i(i2);
                nr1 nr1VarI2 = this.c.a.i(i2);
                float f = 1.0f - fB;
                xd4Var.d(i2, ke4.a(nr1VarI, (int) (((double) ((nr1VarI.a - nr1VarI2.a) * f)) + 0.5d), (int) (((double) ((nr1VarI.b - nr1VarI2.b) * f)) + 0.5d), (int) (((double) ((nr1VarI.c - nr1VarI2.c) * f)) + 0.5d), (int) (((double) ((nr1VarI.d - nr1VarI2.d) * f)) + 0.5d)));
            }
        }
        ld4.g(this.e, xd4Var.b(), Collections.singletonList(qd4Var));
    }
}
