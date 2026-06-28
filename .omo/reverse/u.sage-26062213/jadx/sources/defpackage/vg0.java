package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class vg0 {
    public static final Logger c = Logger.getLogger(vg0.class.getName());
    public static final vg0 d = new vg0();
    public final ku2 a;
    public final int b;

    public vg0(vg0 vg0Var, ku2 ku2Var) {
        vg0Var.getClass();
        this.a = ku2Var;
        int i = vg0Var.b + 1;
        this.b = i;
        if (i == 1000) {
            c.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    public vg0() {
        this.a = null;
        this.b = 0;
    }
}
