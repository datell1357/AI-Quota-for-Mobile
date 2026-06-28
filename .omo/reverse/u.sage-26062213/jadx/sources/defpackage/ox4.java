package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ox4 extends my4 {
    public final /* synthetic */ int r = 0;
    public final /* synthetic */ String s;
    public final /* synthetic */ String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ uy4 f249u;
    public final /* synthetic */ Object v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ox4(uy4 uy4Var, String str, String str2, Bundle bundle) {
        super(uy4Var, true);
        this.s = str;
        this.t = str2;
        this.v = bundle;
        Objects.requireNonNull(uy4Var);
        this.f249u = uy4Var;
    }

    @Override // defpackage.my4
    public final void a() {
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(this.f249u.g)).clearConditionalUserProperty(this.s, this.t, (Bundle) this.v);
                break;
            case 1:
                ((hw4) Preconditions.checkNotNull(this.f249u.g)).getConditionalUserProperties(this.s, this.t, (dw4) this.v);
                break;
            default:
                ((hw4) Preconditions.checkNotNull(this.f249u.g)).setCurrentScreenByScionActivityInfo((jx4) this.v, this.s, this.t, this.n);
                break;
        }
    }

    @Override // defpackage.my4
    public void b() {
        switch (this.r) {
            case 1:
                ((dw4) this.v).i(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ox4(uy4 uy4Var, String str, String str2, dw4 dw4Var) {
        super(uy4Var, true);
        this.s = str;
        this.t = str2;
        this.v = dw4Var;
        Objects.requireNonNull(uy4Var);
        this.f249u = uy4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ox4(uy4 uy4Var, jx4 jx4Var, String str, String str2) {
        super(uy4Var, true);
        this.v = jx4Var;
        this.s = str;
        this.t = str2;
        Objects.requireNonNull(uy4Var);
        this.f249u = uy4Var;
    }
}
