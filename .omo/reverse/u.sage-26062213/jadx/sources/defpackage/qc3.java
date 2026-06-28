package defpackage;

import android.os.Bundle;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qc3 implements tc3 {
    public final uc3 a;
    public boolean b;
    public Bundle c;
    public final nv3 d;

    public qc3(uc3 uc3Var, cc4 cc4Var) {
        uc3Var.getClass();
        this.a = uc3Var;
        this.d = new nv3(new cc(29, cc4Var));
    }

    @Override // defpackage.tc3
    public final Bundle a() {
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        Bundle bundle = this.c;
        if (bundle != null) {
            bundleX.putAll(bundle);
        }
        for (Map.Entry entry : ((rc3) this.d.getValue()).b.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleA = ((mc1) ((mc3) entry.getValue()).b.f).a();
            if (!bundleA.isEmpty()) {
                str.getClass();
                bundleX.putBundle(str, bundleA);
            }
        }
        this.b = false;
        return bundleX;
    }

    public final void b() {
        if (this.b) {
            return;
        }
        Bundle bundleA = this.a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        Bundle bundle = this.c;
        if (bundle != null) {
            bundleX.putAll(bundle);
        }
        if (bundleA != null) {
            bundleX.putAll(bundleA);
        }
        this.c = bundleX;
        this.b = true;
    }
}
