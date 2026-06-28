package defpackage;

import android.os.Parcelable;
import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ad extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ pb4 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ad(pb4 pb4Var, int i) {
        super(0);
        this.o = i;
        this.p = pb4Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.o;
        t64 t64Var = t64.a;
        pb4 pb4Var = this.p;
        switch (i) {
            case 0:
                pb4Var.getLayoutNode().C();
                break;
            case 1:
                if (pb4Var.r && pb4Var.isAttachedToWindow() && pb4Var.getView().getParent() == pb4Var) {
                    ur2 snapshotObserver = pb4Var.getSnapshotObserver();
                    snapshotObserver.a.c(pb4Var, l9.f179u, pb4Var.getUpdate());
                }
                break;
            case 2:
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                pb4Var.N.saveHierarchyState(sparseArray);
                break;
            case 3:
                pb4Var.getReleaseBlock().k(pb4Var.N);
                pb4.n(pb4Var);
                break;
            case 4:
                pb4Var.getResetBlock().k(pb4Var.N);
                break;
            default:
                pb4Var.getUpdateBlock().k(pb4Var.N);
                break;
        }
        return t64Var;
    }
}
