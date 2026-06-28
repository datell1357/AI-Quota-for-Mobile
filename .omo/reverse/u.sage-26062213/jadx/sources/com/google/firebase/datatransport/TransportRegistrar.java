package com.google.firebase.datatransport;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.fs0;
import defpackage.h00;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.q73;
import defpackage.u14;
import defpackage.w14;
import defpackage.w90;
import defpackage.y14;
import defpackage.z03;
import defpackage.z12;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ w14 lambda$getComponents$0(w90 w90Var) {
        y14.b((Context) w90Var.a(Context.class));
        return y14.a().c(h00.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ w14 lambda$getComponents$1(w90 w90Var) {
        y14.b((Context) w90Var.a(Context.class));
        return y14.a().c(h00.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ w14 lambda$getComponents$2(w90 w90Var) {
        y14.b((Context) w90Var.a(Context.class));
        return y14.a().c(h00.e);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        h90 h90VarB = i90.b(w14.class);
        h90VarB.a = LIBRARY_NAME;
        h90VarB.a(fs0.b(Context.class));
        h90VarB.f = new q73(13);
        i90 i90VarB = h90VarB.b();
        h90 h90VarA = i90.a(new z03(z12.class, w14.class));
        h90VarA.a(fs0.b(Context.class));
        h90VarA.f = new q73(14);
        i90 i90VarB2 = h90VarA.b();
        h90 h90VarA2 = i90.a(new z03(u14.class, w14.class));
        h90VarA2.a(fs0.b(Context.class));
        h90VarA2.f = new q73(15);
        return Arrays.asList(i90VarB, i90VarB2, h90VarA2.b(), ht4.l(LIBRARY_NAME, "19.0.0"));
    }
}
