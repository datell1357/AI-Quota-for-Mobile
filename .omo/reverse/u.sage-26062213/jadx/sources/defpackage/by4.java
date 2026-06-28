package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class by4 extends my4 {
    public final /* synthetic */ int r;
    public final /* synthetic */ dw4 s;
    public final /* synthetic */ uy4 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public by4(uy4 uy4Var, dw4 dw4Var, int i) {
        super(uy4Var, true);
        this.r = i;
        switch (i) {
            case 1:
                this.s = dw4Var;
                Objects.requireNonNull(uy4Var);
                this.t = uy4Var;
                super(uy4Var, true);
                break;
            case 2:
                this.s = dw4Var;
                Objects.requireNonNull(uy4Var);
                this.t = uy4Var;
                super(uy4Var, true);
                break;
            default:
                this.s = dw4Var;
                Objects.requireNonNull(uy4Var);
                this.t = uy4Var;
                break;
        }
    }

    @Override // defpackage.my4
    public final void a() {
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(this.t.g)).getGmpAppId(this.s);
                break;
            case 1:
                ((hw4) Preconditions.checkNotNull(this.t.g)).getCachedAppInstanceId(this.s);
                break;
            case 2:
                ((hw4) Preconditions.checkNotNull(this.t.g)).generateEventId(this.s);
                break;
            case 3:
                ((hw4) Preconditions.checkNotNull(this.t.g)).getCurrentScreenName(this.s);
                break;
            default:
                ((hw4) Preconditions.checkNotNull(this.t.g)).getCurrentScreenClass(this.s);
                break;
        }
    }

    @Override // defpackage.my4
    public final void b() {
        int i = this.r;
        dw4 dw4Var = this.s;
        switch (i) {
            case 0:
                dw4Var.i(null);
                break;
            case 1:
                dw4Var.i(null);
                break;
            case 2:
                dw4Var.i(null);
                break;
            case 3:
                dw4Var.i(null);
                break;
            default:
                dw4Var.i(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ by4(uy4 uy4Var, dw4 dw4Var, int i, boolean z) {
        super(uy4Var, true);
        this.r = i;
        this.s = dw4Var;
        this.t = uy4Var;
    }
}
