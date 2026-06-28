package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nx4 extends my4 {
    public final /* synthetic */ int r;
    public final /* synthetic */ Bundle s;
    public final /* synthetic */ uy4 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nx4(uy4 uy4Var, Bundle bundle, int i) {
        super(uy4Var, true);
        this.r = i;
        switch (i) {
            case 1:
                this.s = bundle;
                Objects.requireNonNull(uy4Var);
                this.t = uy4Var;
                super(uy4Var, true);
                break;
            default:
                this.s = bundle;
                Objects.requireNonNull(uy4Var);
                this.t = uy4Var;
                break;
        }
    }

    @Override // defpackage.my4
    public final void a() {
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(this.t.g)).setConditionalUserProperty(this.s, this.n);
                break;
            default:
                ((hw4) Preconditions.checkNotNull(this.t.g)).setDefaultEventParameters(this.s);
                break;
        }
    }
}
