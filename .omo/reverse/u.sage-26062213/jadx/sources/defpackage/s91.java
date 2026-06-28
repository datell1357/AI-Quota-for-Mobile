package defpackage;

import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s91 extends md2 implements da1, ViewTreeObserver.OnGlobalFocusChangeListener {
    public ViewTreeObserver B;
    public final r91 C = new r91(this, 0);
    public final r91 D = new r91(this, 1);

    public final ka1 G0() {
        boolean z;
        if (!this.n.A) {
            ar1.b("visitLocalDescendants called on an unattached node");
        }
        md2 md2Var = this.n;
        if ((md2Var.q & 1024) != 0) {
            boolean z2 = false;
            for (md2 md2Var2 = md2Var.s; md2Var2 != null; md2Var2 = md2Var2.s) {
                if ((md2Var2.p & 1024) != 0) {
                    md2 md2VarG = md2Var2;
                    ug2 ug2Var = null;
                    while (md2VarG != null) {
                        if (md2VarG instanceof ka1) {
                            ka1 ka1Var = (ka1) md2VarG;
                            if (z2) {
                                return ka1Var;
                            }
                            z = false;
                            z2 = true;
                        } else {
                            z = true;
                        }
                        if (z && (md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                            int i = 0;
                            for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                if ((md2Var3.p & 1024) != 0) {
                                    i++;
                                    if (i == 1) {
                                        md2VarG = md2Var3;
                                    } else {
                                        if (ug2Var == null) {
                                            ug2Var = new ug2(new md2[16]);
                                        }
                                        if (md2VarG != null) {
                                            ug2Var.c(md2VarG);
                                            md2VarG = null;
                                        }
                                        ug2Var.c(md2Var3);
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        md2VarG = w80.g(ug2Var);
                    }
                }
            }
        }
        k21.n("Could not find focus target of embedded view wrapper");
        return null;
    }

    @Override // defpackage.da1
    public final void Q(ba1 ba1Var) {
        ba1Var.d(false);
        ba1Var.b(this.C);
        ba1Var.a(this.D);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        boolean z;
        boolean z2;
        if (w80.R(this).A == null) {
            return;
        }
        View viewI = is0.i(this);
        y91 focusOwner = ((q9) w80.S(this)).getFocusOwner();
        sr2 sr2VarS = w80.S(this);
        if (view == null || view.equals(sr2VarS)) {
            z = false;
        } else {
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                if (parent == viewI.getParent()) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        if (view2 == null || view2.equals(sr2VarS)) {
            z2 = false;
        } else {
            for (ViewParent parent2 = view2.getParent(); parent2 != null; parent2 = parent2.getParent()) {
                if (parent2 == viewI.getParent()) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        }
        if (z && z2) {
            return;
        }
        if (!z2) {
            if (z && G0().L0().a()) {
                ((dh) focusOwner).b(8, false, false);
                return;
            }
            return;
        }
        ka1 ka1VarG0 = G0();
        int iOrdinal = ka1VarG0.L0().ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2) {
            return;
        }
        if (iOrdinal == 3) {
            n44.D0(ka1VarG0);
        } else {
            p61.x();
        }
    }

    @Override // defpackage.md2
    public final void y0() {
        ViewTreeObserver viewTreeObserver = ca.F(this).getViewTreeObserver();
        this.B = viewTreeObserver;
        viewTreeObserver.addOnGlobalFocusChangeListener(this);
    }

    @Override // defpackage.md2
    public final void z0() {
        ViewTreeObserver viewTreeObserver = this.B;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        }
        this.B = null;
        ca.F(this).getViewTreeObserver().removeOnGlobalFocusChangeListener(this);
    }
}
