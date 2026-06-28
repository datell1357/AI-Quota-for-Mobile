package defpackage;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oo2 implements OnBackAnimationCallback {
    public final /* synthetic */ mo2 a;

    public oo2(mo2 mo2Var) {
        this.a = mo2Var;
    }

    public final void onBackCancelled() {
        mo2 mo2Var = this.a;
        ck2 ck2Var = mo2Var.a;
        if (ck2Var == null) {
            k21.n("This input is not added to any dispatcher.");
            return;
        }
        if (!mo2Var.b) {
            ck2Var.e(mo2Var, null);
        }
        ck2Var.d();
        if (ck2Var.b) {
            hk2 hk2Var = ck2Var.c;
            hk2Var.getClass();
            if (mo2Var.equals(hk2Var.h) && -1 == hk2Var.g) {
                ek2 ek2VarC = hk2Var.f;
                if (ek2VarC == null) {
                    ek2VarC = hk2Var.c(-1);
                }
                hk2Var.f = null;
                hk2Var.g = 0;
                hk2Var.h = null;
                if (ek2VarC != null) {
                    ek2VarC.b();
                }
                wr3 wr3Var = hk2Var.a;
                ik2 ik2Var = ik2.z;
                wr3Var.getClass();
                wr3Var.i(null, ik2Var);
            }
        }
        mo2Var.b = false;
    }

    public final void onBackInvoked() {
        this.a.a();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        backEvent.getClass();
        bk2 bk2VarG = ht4.G(backEvent);
        mo2 mo2Var = this.a;
        ck2 ck2Var = mo2Var.a;
        if (ck2Var == null) {
            k21.n("This input is not added to any dispatcher.");
            return;
        }
        if (mo2Var.b) {
            ck2Var.d();
            if (ck2Var.b) {
                hk2 hk2Var = ck2Var.c;
                hk2Var.getClass();
                if (mo2Var.equals(hk2Var.h) && -1 == hk2Var.g) {
                    ek2 ek2VarC = hk2Var.f;
                    if (ek2VarC == null) {
                        ek2VarC = hk2Var.c(-1);
                    }
                    if (ek2VarC != null) {
                        ek2VarC.d(bk2VarG);
                    }
                    wr3 wr3Var = hk2Var.a;
                    jk2 jk2Var = new jk2(bk2VarG);
                    wr3Var.getClass();
                    wr3Var.i(null, jk2Var);
                }
            }
        }
    }

    public final void onBackStarted(BackEvent backEvent) {
        backEvent.getClass();
        bk2 bk2VarG = ht4.G(backEvent);
        mo2 mo2Var = this.a;
        ck2 ck2Var = mo2Var.a;
        if (ck2Var == null) {
            k21.n("This input is not added to any dispatcher.");
        } else {
            if (mo2Var.b) {
                return;
            }
            ck2Var.e(mo2Var, bk2VarG);
            mo2Var.b = true;
        }
    }
}
