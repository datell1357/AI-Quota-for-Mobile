package okhttp3.internal.platform;

import android.content.Context;
import defpackage.g01;
import defpackage.iv2;
import defpackage.uq1;
import defpackage.xg0;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class PlatformInitializer implements uq1 {
    @Override // defpackage.uq1
    public final List a() {
        return g01.n;
    }

    @Override // defpackage.uq1
    public final Object b(Context context) {
        context.getClass();
        iv2 iv2Var = iv2.a;
        Object obj = iv2.a;
        xg0 xg0Var = obj != null ? (xg0) obj : null;
        if (xg0Var != null) {
            xg0Var.a(context);
        }
        return iv2.a;
    }
}
