package defpackage;

import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qx0 extends gs2 implements m53 {
    public final Drawable s;
    public final ws2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ws2 f286u;
    public final nv3 v;

    public qx0(Drawable drawable) {
        drawable.getClass();
        this.s = drawable;
        this.t = ca.A(0);
        this.f286u = ca.A(new mn3(rx0.a(drawable)));
        this.v = new nv3(new cc(7, this));
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.m53
    public final void a() {
        Drawable.Callback callback = (Drawable.Callback) this.v.getValue();
        Drawable drawable = this.s;
        drawable.setCallback(callback);
        drawable.setVisible(true, true);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }

    @Override // defpackage.gs2
    public final boolean b(float f) {
        this.s.setAlpha(ix.k(is0.V(f * 255.0f), 0, 255));
        return true;
    }

    @Override // defpackage.m53
    public final void c() {
        e();
    }

    @Override // defpackage.gs2
    public final boolean d(ow owVar) {
        this.s.setColorFilter(owVar != null ? owVar.a : null);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.m53
    public final void e() {
        Drawable drawable = this.s;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        drawable.setVisible(false, false);
        drawable.setCallback(null);
    }

    @Override // defpackage.gs2
    public final void f(hy1 hy1Var) {
        int i;
        hy1Var.getClass();
        int iOrdinal = hy1Var.ordinal();
        if (iOrdinal != 0) {
            i = 1;
            if (iOrdinal != 1) {
                p61.x();
                return;
            }
        } else {
            i = 0;
        }
        this.s.setLayoutDirection(i);
    }

    @Override // defpackage.gs2
    public final long h() {
        return ((mn3) this.f286u.getValue()).a;
    }

    @Override // defpackage.gs2
    public final void i(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        v20 v20VarU = x20Var.o.u();
        ((Number) this.t.getValue()).intValue();
        try {
            v20VarU.j();
            int i = Build.VERSION.SDK_INT;
            Drawable drawable = this.s;
            if (i < 28 || i >= 31 || !x2.A(drawable)) {
                drawable.setBounds(0, 0, is0.V(Float.intBitsToFloat((int) (x20Var.d() >> 32))), is0.V(Float.intBitsToFloat((int) (x20Var.d() & 4294967295L))));
            } else {
                v20VarU.a(Float.intBitsToFloat((int) (x20Var.d() >> 32)) / Float.intBitsToFloat((int) (h() >> 32)), Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)) / Float.intBitsToFloat((int) (h() & 4294967295L)));
            }
            Canvas canvas = z8.a;
            drawable.draw(((y8) v20VarU).a);
            v20VarU.h();
        } catch (Throwable th) {
            v20VarU.h();
            throw th;
        }
    }
}
