package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cy4 extends my4 {
    public final /* synthetic */ int r = 1;
    public final /* synthetic */ String s;
    public final /* synthetic */ String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ boolean f59u;
    public final /* synthetic */ uy4 v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cy4(uy4 uy4Var, String str, String str2, boolean z, dw4 dw4Var) {
        super(uy4Var, true);
        this.s = str;
        this.t = str2;
        this.f59u = z;
        this.w = dw4Var;
        Objects.requireNonNull(uy4Var);
        this.v = uy4Var;
    }

    @Override // defpackage.my4
    public final void a() {
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(this.v.g)).getUserProperties(this.s, this.t, this.f59u, (dw4) this.w);
                break;
            default:
                ((hw4) Preconditions.checkNotNull(this.v.g)).logEventWithElapsedTime(this.s, this.t, (Bundle) this.w, this.f59u, true, this.n, this.o);
                break;
        }
    }

    @Override // defpackage.my4
    public void b() {
        switch (this.r) {
            case 0:
                ((dw4) this.w).i(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cy4(uy4 uy4Var, String str, String str2, Bundle bundle, boolean z) {
        super(uy4Var, true);
        this.s = str;
        this.t = str2;
        this.w = bundle;
        this.f59u = z;
        this.v = uy4Var;
    }
}
