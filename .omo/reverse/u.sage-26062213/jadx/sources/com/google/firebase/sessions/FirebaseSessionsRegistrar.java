package com.google.firebase.sessions;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.a71;
import defpackage.b71;
import defpackage.e61;
import defpackage.fq;
import defpackage.fs0;
import defpackage.g71;
import defpackage.h71;
import defpackage.h90;
import defpackage.hi0;
import defpackage.ht4;
import defpackage.i21;
import defpackage.i90;
import defpackage.ij3;
import defpackage.ji0;
import defpackage.k03;
import defpackage.lm3;
import defpackage.mt1;
import defpackage.n03;
import defpackage.n61;
import defpackage.p61;
import defpackage.pl0;
import defpackage.qn0;
import defpackage.rw;
import defpackage.tv4;
import defpackage.vj3;
import defpackage.vv0;
import defpackage.w14;
import defpackage.w90;
import defpackage.y53;
import defpackage.y61;
import defpackage.z03;
import defpackage.z61;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {

    @Deprecated
    public static final String LIBRARY_NAME = "fire-sessions";
    private static final g71 Companion = new g71();
    private static final z03 appContext = z03.a(Context.class);
    private static final z03 firebaseApp = z03.a(e61.class);
    private static final z03 firebaseInstallationsApi = z03.a(n61.class);
    private static final z03 backgroundDispatcher = new z03(fq.class, ji0.class);
    private static final z03 blockingDispatcher = new z03(rw.class, ji0.class);
    private static final z03 transportFactory = z03.a(w14.class);
    private static final z03 firebaseSessionsComponent = z03.a(z61.class);

    /* JADX INFO: Access modifiers changed from: private */
    public static final y61 getComponents$lambda$0(w90 w90Var) {
        return (y61) ((pl0) ((z61) w90Var.l(firebaseSessionsComponent))).p.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z61 getComponents$lambda$1(w90 w90Var) {
        Object objL = w90Var.l(appContext);
        objL.getClass();
        Object objL2 = w90Var.l(backgroundDispatcher);
        objL2.getClass();
        Object objL3 = w90Var.l(blockingDispatcher);
        objL3.getClass();
        Object objL4 = w90Var.l(firebaseApp);
        objL4.getClass();
        Object objL5 = w90Var.l(firebaseInstallationsApi);
        objL5.getClass();
        n03 n03VarK = w90Var.k(transportFactory);
        n03VarK.getClass();
        pl0 pl0Var = new pl0();
        pl0Var.a = ij3.a((e61) objL4);
        ij3 ij3VarA = ij3.a((Context) objL);
        pl0Var.b = ij3VarA;
        pl0Var.c = vv0.a(new i21(ij3VarA, 2));
        pl0Var.d = vv0.a(qn0.c);
        pl0Var.e = ij3.a((n61) objL5);
        int i = 1;
        pl0Var.f = vv0.a(new i21(pl0Var.a, i));
        ij3 ij3VarA2 = ij3.a((hi0) objL3);
        pl0Var.g = ij3VarA2;
        pl0Var.h = vv0.a(new a71(pl0Var.f, ij3VarA2));
        pl0Var.i = ij3.a((hi0) objL2);
        int i2 = 0;
        pl0Var.j = vv0.a(new vj3(pl0Var.c, vv0.a(new y53(pl0Var.d, pl0Var.e, pl0Var.f, pl0Var.h, vv0.a(new b71((k03) pl0Var.i, pl0Var.d, vv0.a(new a71(pl0Var.b, pl0Var.g, i2)))))), i));
        k03 k03VarA = vv0.a(mt1.b);
        pl0Var.k = k03VarA;
        pl0Var.l = vv0.a(new vj3(pl0Var.d, k03VarA, i2));
        pl0Var.m = vv0.a(new y53(pl0Var.a, (k03) pl0Var.e, pl0Var.j, vv0.a(new i21(ij3.a(n03VarK), i2)), (k03) pl0Var.i));
        pl0Var.n = vv0.a(new b71(pl0Var.b, (k03) pl0Var.g, vv0.a(new ij3(i2, pl0Var.l))));
        k03 k03VarA2 = vv0.a(new lm3(pl0Var.j, pl0Var.l, pl0Var.m, pl0Var.d, pl0Var.n, vv0.a(new a71(pl0Var.b, pl0Var.k, i)), pl0Var.i));
        pl0Var.o = k03VarA2;
        pl0Var.p = vv0.a(new h71(pl0Var.a, pl0Var.j, pl0Var.i, vv0.a(new ij3(i, k03VarA2))));
        return pl0Var;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        h90 h90VarB = i90.b(y61.class);
        h90VarB.a = LIBRARY_NAME;
        h90VarB.a(fs0.a(firebaseSessionsComponent));
        h90VarB.f = new p61(4);
        h90VarB.c();
        i90 i90VarB = h90VarB.b();
        h90 h90VarB2 = i90.b(z61.class);
        h90VarB2.a = "fire-sessions-component";
        h90VarB2.a(fs0.a(appContext));
        h90VarB2.a(fs0.a(backgroundDispatcher));
        h90VarB2.a(fs0.a(blockingDispatcher));
        h90VarB2.a(fs0.a(firebaseApp));
        h90VarB2.a(fs0.a(firebaseInstallationsApi));
        h90VarB2.a(new fs0(transportFactory, 1, 1));
        h90VarB2.f = new p61(5);
        return tv4.F(i90VarB, h90VarB2.b(), ht4.l(LIBRARY_NAME, "3.0.6"));
    }
}
