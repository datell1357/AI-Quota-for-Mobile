package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class jf4 {
    public static final kg2 a;

    static {
        long[] jArr = td3.a;
        a = new kg2();
    }

    public static final zb0 a(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof zb0) {
            return (zb0) tag;
        }
        return null;
    }

    public static final h33 b(View view) {
        hi0 hi0Var;
        qc qcVar;
        if (!view.isAttachedToWindow()) {
            ar1.b("Cannot locate windowRecomposer; View " + view + " is not attached to a window");
        }
        Object objQ = fl4.q(view);
        while (objQ instanceof View) {
            View view2 = (View) objQ;
            if (view2.getId() == 16908290) {
                break;
            }
            objQ = view2.getParent();
            view = view2;
        }
        zb0 zb0VarA = a(view);
        dh0 dh0Var = null;
        if (zb0VarA != null) {
            if (zb0VarA instanceof h33) {
                return (h33) zb0VarA;
            }
            k21.n("root viewTreeParentCompositionContext is not a Recomposer");
            return null;
        }
        ((ef4) ff4.a.get()).getClass();
        hi0 hi0Var2 = d01.n;
        nv3 nv3Var = nc.z;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            hi0Var = (hi0) nc.z.getValue();
        } else {
            hi0Var = (hi0) nc.A.get();
            if (hi0Var == null) {
                k21.n("no AndroidUiDispatcher for this thread");
                return null;
            }
        }
        hi0 hi0VarF = hi0Var.F(hi0Var2);
        qc qcVar2 = (qc) hi0VarF.K(mj1.Y);
        if (qcVar2 != null) {
            qcVar = new qc(qcVar2);
            mu0 mu0Var = (mu0) qcVar.p;
            synchronized (mu0Var.b) {
                mu0Var.a = false;
            }
        } else {
            qcVar = null;
        }
        w33 w33Var = new w33();
        hi0 zd2Var = (yd2) hi0VarF.K(w13.I);
        if (zd2Var == null) {
            zd2Var = new zd2(view.getContext().getApplicationContext());
            w33Var.n = zd2Var;
        }
        if (qcVar != null) {
            hi0Var2 = qcVar;
        }
        hi0 hi0VarF2 = hi0VarF.F(hi0Var2).F(zd2Var);
        h33 h33Var = new h33(hi0VarF2);
        synchronized (h33Var.c) {
            h33Var.t = true;
        }
        bh0 bh0VarC = dm0.c(hi0VarF2);
        p22 p22VarU = on4.u(view);
        h22 lifecycle = p22VarU != null ? p22VarU.getLifecycle() : null;
        if (lifecycle == null) {
            ar1.c("ViewTreeLifecycleOwner not found from " + view);
            p61.q();
            return null;
        }
        view.addOnAttachStateChangeListener(new wc1(view, h33Var));
        lifecycle.a(new hf4(bh0VarC, qcVar, h33Var, w33Var));
        view.setTag(R.id.androidx_compose_ui_view_composition_context, h33Var);
        hh1 hh1Var = hh1.n;
        Handler handler = view.getHandler();
        int i = yi1.a;
        view.addOnAttachStateChangeListener(new eb(5, ca.y(hh1Var, new xi1(handler, "windowRecomposer cleanup", false).s, null, new d93(h33Var, view, dh0Var, 11), 2)));
        return h33Var;
    }
}
