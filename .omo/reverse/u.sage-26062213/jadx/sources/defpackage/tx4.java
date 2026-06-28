package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tx4 extends my4 {
    public final /* synthetic */ int r;
    public final /* synthetic */ uy4 s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tx4(uy4 uy4Var, Boolean bool) {
        super(uy4Var, true);
        this.r = 0;
        this.t = bool;
        Objects.requireNonNull(uy4Var);
        this.s = uy4Var;
    }

    @Override // defpackage.my4
    public final void a() {
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(this.s.g)).setMeasurementEnabled(((Boolean) this.t).booleanValue(), this.n);
                break;
            case 1:
                ((hw4) Preconditions.checkNotNull(this.s.g)).retrieveAndUploadBatches(new zx4(this, (w85) this.t));
                break;
            case 2:
                ((hw4) Preconditions.checkNotNull(this.s.g)).logHealthData(5, "Error with data collection. Data lost.", new yn2((Exception) this.t), new yn2(null), new yn2(null));
                break;
            default:
                ((hw4) Preconditions.checkNotNull(this.s.g)).registerOnMeasurementEventListener((py4) this.t);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ tx4(uy4 uy4Var, Object obj, int i) {
        super(uy4Var, true);
        this.r = i;
        this.t = obj;
        this.s = uy4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tx4(uy4 uy4Var, Exception exc) {
        super(uy4Var, false);
        this.r = 2;
        this.t = exc;
        this.s = uy4Var;
    }
}
