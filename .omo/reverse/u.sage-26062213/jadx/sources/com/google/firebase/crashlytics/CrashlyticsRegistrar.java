package com.google.firebase.crashlytics;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.a32;
import defpackage.ck3;
import defpackage.d71;
import defpackage.e61;
import defpackage.f61;
import defpackage.f71;
import defpackage.fq;
import defpackage.fs0;
import defpackage.g8;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.jj0;
import defpackage.n61;
import defpackage.r6;
import defpackage.rw;
import defpackage.w61;
import defpackage.z03;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {
    public static final /* synthetic */ int d = 0;
    public final z03 a = new z03(fq.class, ExecutorService.class);
    public final z03 b = new z03(rw.class, ExecutorService.class);
    public final z03 c = new z03(a32.class, ExecutorService.class);

    static {
        Map map = f71.b;
        ck3 ck3Var = ck3.n;
        if (map.containsKey(ck3Var)) {
            Log.d("FirebaseSessions", "Dependency " + ck3Var + " already added.");
            return;
        }
        map.put(ck3Var, new d71(new CountDownLatch(1)));
        Log.d("FirebaseSessions", "Dependency to " + ck3Var + " added.");
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        h90 h90VarB = i90.b(f61.class);
        h90VarB.a = "fire-cls";
        h90VarB.a(fs0.b(e61.class));
        h90VarB.a(fs0.b(n61.class));
        h90VarB.a(new fs0(this.a, 1, 0));
        h90VarB.a(new fs0(this.b, 1, 0));
        h90VarB.a(new fs0(this.c, 1, 0));
        h90VarB.a(new fs0(0, 2, jj0.class));
        h90VarB.a(new fs0(0, 2, g8.class));
        h90VarB.a(new fs0(0, 2, w61.class));
        h90VarB.f = new r6(7, this);
        h90VarB.c();
        return Arrays.asList(h90VarB.b(), ht4.l("fire-cls", "20.0.6"));
    }
}
