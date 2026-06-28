package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zg0 {
    public static final Logger a = Logger.getLogger(zg0.class.getName());
    public static final ah0 b;

    static {
        ah0 ah0Var;
        try {
            ah0Var = (ah0) ca.j(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryContextManager", true, ah0.class.getClassLoader()), ah0.class);
        } catch (ClassNotFoundException e) {
            a.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry context manager, now loading original implementation.", (Throwable) e);
            ah0Var = new ah0();
        }
        b = ah0Var;
    }

    public static dh1 a() {
        b.getClass();
        Logger logger = vg0.c;
        ((ky3) tg0.a).getClass();
        vg0 vg0Var = (vg0) ky3.b.get();
        if (vg0Var == null) {
            vg0Var = vg0.d;
        }
        if (vg0Var == null) {
            vg0Var = vg0.d;
        }
        return new dh1(vg0Var);
    }
}
