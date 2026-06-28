package defpackage;

import android.os.Bundle;
import java.util.Arrays;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j33 implements tc3 {
    public final LinkedHashSet a = new LinkedHashSet();

    public j33(uc3 uc3Var) {
        uc3Var.c("androidx.savedstate.Restarter", this);
    }

    @Override // defpackage.tc3
    public final Bundle a() {
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        is0.R(bundleX, "classes_to_restore", o70.C0(this.a));
        return bundleX;
    }
}
