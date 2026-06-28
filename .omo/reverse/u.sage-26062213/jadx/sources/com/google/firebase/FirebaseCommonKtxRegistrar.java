package com.google.firebase;

import com.google.firebase.components.ComponentRegistrar;
import defpackage.a32;
import defpackage.fq;
import defpackage.fs0;
import defpackage.h90;
import defpackage.i64;
import defpackage.i90;
import defpackage.ji0;
import defpackage.mj1;
import defpackage.rw;
import defpackage.tv4;
import defpackage.w13;
import defpackage.z03;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        h90 h90VarA = i90.a(new z03(fq.class, ji0.class));
        h90VarA.a(new fs0(new z03(fq.class, Executor.class), 1, 0));
        h90VarA.f = mj1.S;
        i90 i90VarB = h90VarA.b();
        h90 h90VarA2 = i90.a(new z03(a32.class, ji0.class));
        h90VarA2.a(new fs0(new z03(a32.class, Executor.class), 1, 0));
        h90VarA2.f = w13.B;
        i90 i90VarB2 = h90VarA2.b();
        h90 h90VarA3 = i90.a(new z03(rw.class, ji0.class));
        h90VarA3.a(new fs0(new z03(rw.class, Executor.class), 1, 0));
        h90VarA3.f = mj1.T;
        i90 i90VarB3 = h90VarA3.b();
        h90 h90VarA4 = i90.a(new z03(i64.class, ji0.class));
        h90VarA4.a(new fs0(new z03(i64.class, Executor.class), 1, 0));
        h90VarA4.f = w13.C;
        return tv4.F(i90VarB, i90VarB2, i90VarB3, h90VarA4.b());
    }
}
