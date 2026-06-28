package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.fs0;
import defpackage.g8;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.k21;
import defpackage.l2;
import defpackage.w90;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2 lambda$getComponents$0(w90 w90Var) {
        return new l2((Context) w90Var.a(Context.class), w90Var.g(g8.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        h90 h90VarB = i90.b(l2.class);
        h90VarB.a = LIBRARY_NAME;
        h90VarB.a(fs0.b(Context.class));
        h90VarB.a(new fs0(0, 1, g8.class));
        h90VarB.f = new k21(1);
        return Arrays.asList(h90VarB.b(), ht4.l(LIBRARY_NAME, "21.1.1"));
    }
}
