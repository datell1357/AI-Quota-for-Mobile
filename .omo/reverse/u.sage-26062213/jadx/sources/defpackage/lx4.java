package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lx4 extends my4 {
    public final /* synthetic */ int r = 4;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f193u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx4(ty4 ty4Var, Activity activity, dw4 dw4Var) {
        super((uy4) ty4Var.o, true);
        this.t = activity;
        this.f193u = dw4Var;
        this.s = ty4Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.my4
    public final void a() {
        Boolean boolValueOf;
        Bundle bundle = null;
        hw4 hw4VarAsInterface = null;
        switch (this.r) {
            case 0:
                ((hw4) Preconditions.checkNotNull(((uy4) this.s).g)).setUserProperty(null, (String) this.t, new yn2(this.f193u), false, this.n);
                break;
            case 1:
                try {
                    Context context = (Context) this.t;
                    Preconditions.checkNotNull(context);
                    String strA = y35.a(context);
                    Preconditions.checkNotNull(context);
                    Resources resources = context.getResources();
                    if (TextUtils.isEmpty(strA)) {
                        strA = y35.a(context);
                    }
                    int identifier = resources.getIdentifier("google_analytics_force_disable_updates", "bool", strA);
                    if (identifier == 0) {
                        boolValueOf = null;
                    } else {
                        try {
                            boolValueOf = Boolean.valueOf(resources.getBoolean(identifier));
                        } catch (Resources.NotFoundException unused) {
                            boolValueOf = null;
                        }
                    }
                    uy4 uy4Var = (uy4) this.s;
                    Object[] objArr = boolValueOf == null || !boolValueOf.booleanValue();
                    uy4Var.getClass();
                    try {
                        hw4VarAsInterface = fw4.asInterface(ly0.c(context, objArr != false ? ly0.c : ly0.b, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
                    } catch (iy0 e) {
                        uy4Var.d(e, true, false);
                    }
                    uy4Var.g = hw4VarAsInterface;
                    if (uy4Var.g != null) {
                        int iA = ly0.a(context, ModuleDescriptor.MODULE_ID);
                        int iD = ly0.d(context, ModuleDescriptor.MODULE_ID, false);
                        int iMax = Math.max(iA, iD);
                        boolean z = Boolean.TRUE.equals(boolValueOf) || iD < iA;
                        long j = iMax;
                        uy4Var.h = j;
                        ix4 ix4Var = new ix4(161000L, j, z, (Bundle) this.f193u, y35.a(context));
                        Object[] objArr2 = uy4Var.h >= 169;
                        hw4 hw4Var = uy4Var.g;
                        if (objArr2 != true) {
                            ((hw4) Preconditions.checkNotNull(hw4Var)).initialize(new yn2(context), ix4Var, this.n);
                        } else {
                            ((hw4) Preconditions.checkNotNull(hw4Var)).initializeWithElapsedTime(new yn2(context), ix4Var, this.n, this.o);
                        }
                    } else {
                        Log.w("FA", "Failed to connect to measurement client.");
                    }
                } catch (Exception e2) {
                    ((uy4) this.s).d(e2, true, false);
                    return;
                }
                break;
            case 2:
                ((hw4) Preconditions.checkNotNull(((uy4) this.s).g)).getMaxUserProperties((String) this.t, (dw4) this.f193u);
                break;
            case 3:
                Bundle bundle2 = (Bundle) this.t;
                if (bundle2 != null) {
                    bundle = new Bundle();
                    if (bundle2.containsKey("com.google.app_measurement.screen_service")) {
                        Object obj = bundle2.get("com.google.app_measurement.screen_service");
                        if (obj instanceof Bundle) {
                            bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                        }
                    }
                }
                ((hw4) Preconditions.checkNotNull(((uy4) ((ty4) this.s).o).g)).onActivityCreatedByScionActivityInfo(jx4.Y((Activity) this.f193u), bundle, this.o);
                break;
            default:
                ((hw4) Preconditions.checkNotNull(((uy4) ((ty4) this.s).o).g)).onActivitySaveInstanceStateByScionActivityInfo(jx4.Y((Activity) this.t), (dw4) this.f193u, this.o);
                break;
        }
    }

    @Override // defpackage.my4
    public void b() {
        switch (this.r) {
            case 2:
                ((dw4) this.f193u).i(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx4(ty4 ty4Var, Bundle bundle, Activity activity) {
        super((uy4) ty4Var.o, true);
        this.t = bundle;
        this.f193u = activity;
        this.s = ty4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx4(uy4 uy4Var, Context context, Bundle bundle) {
        super(uy4Var, true);
        this.t = context;
        this.f193u = bundle;
        this.s = uy4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx4(uy4 uy4Var, String str, String str2) {
        super(uy4Var, true);
        this.t = str;
        this.f193u = str2;
        Objects.requireNonNull(uy4Var);
        this.s = uy4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx4(uy4 uy4Var, String str, dw4 dw4Var) {
        super(uy4Var, true);
        this.t = str;
        this.f193u = dw4Var;
        Objects.requireNonNull(uy4Var);
        this.s = uy4Var;
    }
}
