package com.google.firebase.installations;

import com.google.firebase.components.ComponentRegistrar;
import defpackage.e61;
import defpackage.ei3;
import defpackage.fq;
import defpackage.fs0;
import defpackage.g90;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.m61;
import defpackage.mj1;
import defpackage.n61;
import defpackage.nj1;
import defpackage.p61;
import defpackage.rw;
import defpackage.w90;
import defpackage.z03;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static n61 lambda$getComponents$0(w90 w90Var) {
        return new m61((e61) w90Var.a(e61.class), w90Var.g(nj1.class), (ExecutorService) w90Var.l(new z03(fq.class, ExecutorService.class)), new ei3((Executor) w90Var.l(new z03(rw.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        h90 h90VarB = i90.b(n61.class);
        h90VarB.a = LIBRARY_NAME;
        h90VarB.a(fs0.b(e61.class));
        int i = 0;
        h90VarB.a(new fs0(0, 1, nj1.class));
        h90VarB.a(new fs0(new z03(fq.class, ExecutorService.class), 1, 0));
        h90VarB.a(new fs0(new z03(rw.class, Executor.class), 1, 0));
        h90VarB.f = new p61(i);
        i90 i90VarB = h90VarB.b();
        mj1 mj1Var = new mj1(i);
        h90 h90VarB2 = i90.b(mj1.class);
        h90VarB2.e = 1;
        h90VarB2.f = new g90(i, mj1Var);
        return Arrays.asList(i90VarB, h90VarB2.b(), ht4.l(LIBRARY_NAME, "19.1.0"));
    }
}
