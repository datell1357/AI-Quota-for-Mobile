package defpackage;

import android.app.Activity;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qy4 extends my4 {
    public final /* synthetic */ int r;
    public final /* synthetic */ Activity s;
    public final /* synthetic */ ty4 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qy4(ty4 ty4Var, Activity activity, int i) {
        super((uy4) ty4Var.o, true);
        this.r = i;
        switch (i) {
            case 1:
                this.s = activity;
                this.t = ty4Var;
                super((uy4) ty4Var.o, true);
                break;
            case 2:
                this.s = activity;
                this.t = ty4Var;
                super((uy4) ty4Var.o, true);
                break;
            case 3:
                this.s = activity;
                this.t = ty4Var;
                super((uy4) ty4Var.o, true);
                break;
            case 4:
                this.s = activity;
                this.t = ty4Var;
                super((uy4) ty4Var.o, true);
                break;
            default:
                this.s = activity;
                this.t = ty4Var;
                break;
        }
    }

    @Override // defpackage.my4
    public final void a() {
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(((uy4) this.t.o).g)).onActivityStartedByScionActivityInfo(jx4.Y(this.s), this.o);
                break;
            case 1:
                ((hw4) Preconditions.checkNotNull(((uy4) this.t.o).g)).onActivityResumedByScionActivityInfo(jx4.Y(this.s), this.o);
                break;
            case 2:
                ((hw4) Preconditions.checkNotNull(((uy4) this.t.o).g)).onActivityPausedByScionActivityInfo(jx4.Y(this.s), this.o);
                break;
            case 3:
                ((hw4) Preconditions.checkNotNull(((uy4) this.t.o).g)).onActivityStoppedByScionActivityInfo(jx4.Y(this.s), this.o);
                break;
            default:
                ((hw4) Preconditions.checkNotNull(((uy4) this.t.o).g)).onActivityDestroyedByScionActivityInfo(jx4.Y(this.s), this.o);
                break;
        }
    }
}
