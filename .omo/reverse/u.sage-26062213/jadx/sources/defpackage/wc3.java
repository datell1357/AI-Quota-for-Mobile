package defpackage;

import android.os.Bundle;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wc3 {
    public final xc3 a;
    public final uc3 b;

    public wc3(xc3 xc3Var) {
        this.a = xc3Var;
        this.b = new uc3(xc3Var);
    }

    public final void a() {
        this.a.a();
    }

    public final void b(Bundle bundle) {
        xc3 xc3Var = this.a;
        yc3 yc3Var = xc3Var.a;
        if (!xc3Var.e) {
            xc3Var.a();
        }
        if (((r22) yc3Var.getLifecycle()).d.compareTo(g22.q) >= 0) {
            p61.y(((r22) yc3Var.getLifecycle()).d, "performRestore cannot be called when owner is ");
            return;
        }
        if (xc3Var.g) {
            k21.n("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundle2 = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            Bundle bundle3 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            if (bundle3 == null) {
                nt1.I("androidx.lifecycle.BundlableSavedStateRegistry.key");
                throw null;
            }
            bundle2 = bundle3;
        }
        xc3Var.f = bundle2;
        xc3Var.g = true;
    }

    public final void c(Bundle bundle) {
        bundle.getClass();
        xc3 xc3Var = this.a;
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        Bundle bundle2 = xc3Var.f;
        if (bundle2 != null) {
            bundleX.putAll(bundle2);
        }
        synchronized (xc3Var.c) {
            for (Map.Entry entry : xc3Var.d.entrySet()) {
                String str = (String) entry.getKey();
                Bundle bundleA = ((tc3) entry.getValue()).a();
                str.getClass();
                bundleX.putBundle(str, bundleA);
            }
        }
        if (bundleX.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundleX);
    }
}
