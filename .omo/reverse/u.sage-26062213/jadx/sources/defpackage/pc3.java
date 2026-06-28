package defpackage;

import android.os.Bundle;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class pc3 {
    public static final b21 a = new b21(26);
    public static final qz0 b;
    public static final b21 c;

    static {
        int i = 27;
        b = new qz0(i);
        c = new b21(i);
    }

    public static final mc3 a(vk0 vk0Var) {
        mc3 mc3Var;
        vk0Var.getClass();
        yc3 yc3Var = (yc3) vk0Var.a(a);
        Bundle bundle = null;
        if (yc3Var == null) {
            k21.f("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
            return null;
        }
        cc4 cc4Var = (cc4) vk0Var.a(b);
        if (cc4Var == null) {
            k21.f("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        Bundle bundle2 = (Bundle) vk0Var.a(c);
        String str = (String) vk0Var.a(wu4.q);
        if (str == null) {
            k21.f("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            return null;
        }
        tc3 tc3VarB = yc3Var.getSavedStateRegistry().b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        qc3 qc3Var = tc3VarB instanceof qc3 ? (qc3) tc3VarB : null;
        if (qc3Var == null) {
            k21.n("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
            return null;
        }
        LinkedHashMap linkedHashMap = c(cc4Var).b;
        mc3 mc3Var2 = (mc3) linkedHashMap.get(str);
        if (mc3Var2 != null) {
            return mc3Var2;
        }
        qc3Var.b();
        Bundle bundle3 = qc3Var.c;
        if (bundle3 != null && bundle3.containsKey(str)) {
            Bundle bundle4 = bundle3.getBundle(str);
            if (bundle4 == null) {
                bundle4 = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
            }
            bundle3.remove(str);
            if (bundle3.isEmpty()) {
                qc3Var.c = null;
            }
            bundle = bundle4;
        }
        if (bundle != null) {
            bundle2 = bundle;
        }
        if (bundle2 == null) {
            mc3Var = new mc3();
        } else {
            ClassLoader classLoader = mc3.class.getClassLoader();
            classLoader.getClass();
            bundle2.setClassLoader(classLoader);
            ca2 ca2Var = new ca2(bundle2.size());
            for (String str2 : bundle2.keySet()) {
                str2.getClass();
                ca2Var.put(str2, bundle2.get(str2));
            }
            mc3Var = new mc3(ca2Var.b());
        }
        linkedHashMap.put(str, mc3Var);
        return mc3Var;
    }

    public static final void b(yc3 yc3Var) {
        g22 g22Var = ((r22) yc3Var.getLifecycle()).d;
        if (g22Var != g22.o && g22Var != g22.p) {
            k21.f("Failed requirement.");
        } else if (yc3Var.getSavedStateRegistry().b("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            qc3 qc3Var = new qc3(yc3Var.getSavedStateRegistry(), (cc4) yc3Var);
            yc3Var.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", qc3Var);
            yc3Var.getLifecycle().a(new k33(4, qc3Var));
        }
    }

    public static final rc3 c(cc4 cc4Var) {
        wu4 wu4VarG = pr3.g(cc4Var, new vq0(1), 4);
        return (rc3) ((qd1) wu4VarG.o).B(y33.a(rc3.class), "androidx.lifecycle.internal.SavedStateHandlesVM");
    }
}
