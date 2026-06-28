package com.google.firebase;

import android.content.Context;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.e61;
import defpackage.fq;
import defpackage.fs0;
import defpackage.h90;
import defpackage.ht4;
import defpackage.i90;
import defpackage.mj1;
import defpackage.mk0;
import defpackage.mo;
import defpackage.nj1;
import defpackage.oj1;
import defpackage.tq0;
import defpackage.vx1;
import defpackage.wo0;
import defpackage.yo0;
import defpackage.z03;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        h90 h90VarB = i90.b(tq0.class);
        h90VarB.a(new fs0(2, 0, mo.class));
        h90VarB.f = new mk0(11);
        arrayList.add(h90VarB.b());
        z03 z03Var = new z03(fq.class, Executor.class);
        h90 h90Var = new h90(yo0.class, new Class[]{nj1.class, oj1.class});
        h90Var.a(fs0.b(Context.class));
        h90Var.a(fs0.b(e61.class));
        h90Var.a(new fs0(2, 0, mj1.class));
        h90Var.a(new fs0(1, 1, tq0.class));
        h90Var.a(new fs0(z03Var, 1, 0));
        h90Var.f = new wo0(z03Var, 0);
        arrayList.add(h90Var.b());
        arrayList.add(ht4.l("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(ht4.l("fire-core", "22.0.1"));
        arrayList.add(ht4.l("device-name", a(Build.PRODUCT)));
        arrayList.add(ht4.l("device-model", a(Build.DEVICE)));
        arrayList.add(ht4.l("device-brand", a(Build.BRAND)));
        arrayList.add(ht4.q("android-target-sdk", new mk0(25)));
        arrayList.add(ht4.q("android-min-sdk", new mk0(26)));
        arrayList.add(ht4.q("android-platform", new mk0(27)));
        arrayList.add(ht4.q("android-installer", new mk0(28)));
        try {
            vx1.o.getClass();
            str = "2.3.21";
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(ht4.l("kotlin", str));
        }
        return arrayList;
    }
}
