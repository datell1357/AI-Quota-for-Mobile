package defpackage;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pb4 extends bd {
    public final View N;
    public final tk2 O;
    public hc3 P;
    public pe1 Q;
    public pe1 R;
    public pe1 S;

    public pb4(Context context, pe1 pe1Var, yf1 yf1Var, ic3 ic3Var, int i, sr2 sr2Var) {
        View view = (View) pe1Var.k(context);
        tk2 tk2Var = new tk2();
        super(context, yf1Var, i, tk2Var, view, sr2Var);
        this.N = view;
        this.O = tk2Var;
        setClipChildren(false);
        String strValueOf = String.valueOf(i);
        Object objD = ic3Var != null ? ic3Var.d(strValueOf) : null;
        SparseArray<Parcelable> sparseArray = objD instanceof SparseArray ? (SparseArray) objD : null;
        if (sparseArray != null) {
            view.restoreHierarchyState(sparseArray);
        }
        if (ic3Var != null) {
            setSavableRegistryEntry(ic3Var.a(strValueOf, new ad(this, 2)));
        }
        l9 l9Var = l9.x;
        this.Q = l9Var;
        this.R = l9Var;
        this.S = l9Var;
    }

    public static final void n(pb4 pb4Var) {
        pb4Var.setSavableRegistryEntry(null);
    }

    private final void setSavableRegistryEntry(hc3 hc3Var) {
        hc3 hc3Var2 = this.P;
        if (hc3Var2 != null) {
            ((eh) hc3Var2).L();
        }
        this.P = hc3Var;
    }

    public final tk2 getDispatcher() {
        return this.O;
    }

    public final pe1 getReleaseBlock() {
        return this.S;
    }

    public final pe1 getResetBlock() {
        return this.R;
    }

    public /* bridge */ /* synthetic */ a0 getSubCompositionView() {
        return null;
    }

    public final pe1 getUpdateBlock() {
        return this.Q;
    }

    public final void setReleaseBlock(pe1 pe1Var) {
        this.S = pe1Var;
        setRelease(new ad(this, 3));
    }

    public final void setResetBlock(pe1 pe1Var) {
        this.R = pe1Var;
        setReset(new ad(this, 4));
    }

    public final void setUpdateBlock(pe1 pe1Var) {
        this.Q = pe1Var;
        setUpdate(new ad(this, 5));
    }

    public View getViewRoot() {
        return this;
    }
}
