package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.cm0;
import defpackage.e61;
import defpackage.fs0;
import defpackage.g21;
import defpackage.g8;
import defpackage.h8;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.ls3;
import defpackage.ut3;
import defpackage.uy4;
import defpackage.w90;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static g8 lambda$getComponents$0(w90 w90Var) {
        boolean z;
        e61 e61Var = (e61) w90Var.a(e61.class);
        Context context = (Context) w90Var.a(Context.class);
        ut3 ut3Var = (ut3) w90Var.a(ut3.class);
        Preconditions.checkNotNull(e61Var);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(ut3Var);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (h8.c == null) {
            synchronized (h8.class) {
                if (h8.c == null) {
                    Bundle bundle = new Bundle(1);
                    e61Var.a();
                    if ("[DEFAULT]".equals(e61Var.b)) {
                        ((g21) ut3Var).a();
                        e61Var.a();
                        cm0 cm0Var = (cm0) e61Var.g.get();
                        synchronized (cm0Var) {
                            z = cm0Var.a;
                        }
                        bundle.putBoolean("dataCollectionDefaultEnabled", z);
                    }
                    h8.c = new h8(uy4.e(context, bundle).c);
                }
            }
        }
        return h8.c;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        h90 h90VarB = i90.b(g8.class);
        h90VarB.a(fs0.b(e61.class));
        h90VarB.a(fs0.b(Context.class));
        h90VarB.a(fs0.b(ut3.class));
        h90VarB.f = ls3.r;
        h90VarB.c();
        return Arrays.asList(h90VarB.b(), ht4.l("fire-analytics", "23.2.0"));
    }
}
