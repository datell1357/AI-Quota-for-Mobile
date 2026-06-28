package defpackage;

import android.os.Bundle;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xc3 {
    public final yc3 a;
    public final vc3 b;
    public boolean e;
    public Bundle f;
    public boolean g;
    public final ls3 c = new ls3(2);
    public final LinkedHashMap d = new LinkedHashMap();
    public boolean h = true;

    public xc3(yc3 yc3Var, vc3 vc3Var) {
        this.a = yc3Var;
        this.b = vc3Var;
    }

    public final void a() {
        yc3 yc3Var = this.a;
        if (((r22) yc3Var.getLifecycle()).d != g22.o) {
            k21.n("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.e) {
                k21.n("SavedStateRegistry was already attached.");
                return;
            }
            this.b.a();
            yc3Var.getLifecycle().a(new fi2(1, this));
            this.e = true;
        }
    }
}
