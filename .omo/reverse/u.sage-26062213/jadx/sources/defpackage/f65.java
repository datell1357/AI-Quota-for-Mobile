package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f65 {
    public final Context a;
    public final Boolean b;
    public final long c;
    public final ix4 d;
    public final boolean e;
    public final Long f;
    public final Long g;
    public final String h;

    public f65(Context context, ix4 ix4Var, Long l, Long l2) {
        this.e = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.a = applicationContext;
        this.f = l;
        this.g = l2;
        if (ix4Var != null) {
            this.d = ix4Var;
            this.e = ix4Var.p;
            this.c = ix4Var.o;
            this.h = ix4Var.r;
            Bundle bundle = ix4Var.q;
            if (bundle != null) {
                this.b = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
