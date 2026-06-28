package defpackage;

import android.content.Context;
import android.os.Build;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fb implements yh1 {
    public static boolean f = true;
    public final q9 a;
    public final Object b = new Object();
    public ub4 c;
    public boolean d;
    public final db e;

    public fb(q9 q9Var) {
        this.a = q9Var;
        db dbVar = new db();
        this.e = dbVar;
        if (q9Var.isAttachedToWindow()) {
            Context context = q9Var.getContext();
            if (!this.d) {
                context.getApplicationContext().registerComponentCallbacks(dbVar);
                this.d = true;
            }
        }
        q9Var.addOnAttachStateChangeListener(new eb(0, this));
    }

    @Override // defpackage.yh1
    public final void a(zh1 zh1Var) {
        synchronized (this.b) {
            if (!zh1Var.s) {
                zh1Var.s = true;
                zh1Var.b();
            }
        }
    }

    @Override // defpackage.yh1
    public final zh1 b() {
        bi1 ii1Var;
        bi1 gi1Var;
        zh1 zh1Var;
        synchronized (this.b) {
            try {
                q9 q9Var = this.a;
                int i = Build.VERSION.SDK_INT;
                if (i >= 29) {
                    q9Var.getUniqueDrawingId();
                }
                if (i >= 29) {
                    gi1Var = new gi1();
                } else {
                    if (f) {
                        try {
                            ii1Var = new ei1(this.a, new y20(), new x20());
                        } catch (Throwable unused) {
                            f = false;
                            ii1Var = new ii1(c(this.a));
                        }
                    } else {
                        ii1Var = new ii1(c(this.a));
                    }
                    gi1Var = ii1Var;
                }
                zh1Var = new zh1(gi1Var);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zh1Var;
    }

    public final hx0 c(q9 q9Var) {
        ub4 ub4Var = this.c;
        if (ub4Var != null) {
            return ub4Var;
        }
        ub4 ub4Var2 = new ub4(q9Var.getContext());
        ub4Var2.setClipChildren(false);
        ub4Var2.setClipToPadding(false);
        ub4Var2.setTag(R.id.hide_graphics_layer_in_inspector_tag, Boolean.TRUE);
        q9Var.addView(ub4Var2, -1);
        this.c = ub4Var2;
        return ub4Var2;
    }
}
