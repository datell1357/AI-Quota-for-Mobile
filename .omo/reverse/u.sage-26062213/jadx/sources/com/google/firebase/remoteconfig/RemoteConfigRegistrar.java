package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.a61;
import defpackage.e61;
import defpackage.fs0;
import defpackage.g8;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.l2;
import defpackage.n61;
import defpackage.rw;
import defpackage.s53;
import defpackage.w61;
import defpackage.w90;
import defpackage.wo0;
import defpackage.z03;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    /* JADX INFO: Access modifiers changed from: private */
    public static s53 lambda$getComponents$0(z03 z03Var, w90 w90Var) {
        a61 a61Var;
        Context context = (Context) w90Var.a(Context.class);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) w90Var.l(z03Var);
        e61 e61Var = (e61) w90Var.a(e61.class);
        n61 n61Var = (n61) w90Var.a(n61.class);
        l2 l2Var = (l2) w90Var.a(l2.class);
        synchronized (l2Var) {
            try {
                if (!l2Var.a.containsKey("frc")) {
                    l2Var.a.put("frc", new a61(l2Var.b));
                }
                a61Var = (a61) l2Var.a.get("frc");
            } catch (Throwable th) {
                throw th;
            }
        }
        return new s53(context, scheduledExecutorService, e61Var, n61Var, a61Var, w90Var.g(g8.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<i90> getComponents() {
        z03 z03Var = new z03(rw.class, ScheduledExecutorService.class);
        h90 h90Var = new h90(s53.class, new Class[]{w61.class});
        h90Var.a = LIBRARY_NAME;
        h90Var.a(fs0.b(Context.class));
        h90Var.a(new fs0(z03Var, 1, 0));
        h90Var.a(fs0.b(e61.class));
        h90Var.a(fs0.b(n61.class));
        h90Var.a(fs0.b(l2.class));
        h90Var.a(new fs0(0, 1, g8.class));
        h90Var.f = new wo0(z03Var, 1);
        h90Var.c();
        return Arrays.asList(h90Var.b(), ht4.l(LIBRARY_NAME, "23.1.0"));
    }
}
