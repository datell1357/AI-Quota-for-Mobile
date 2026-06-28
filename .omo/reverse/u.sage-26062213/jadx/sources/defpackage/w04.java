package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class w04 {
    public static final q04 a;

    static {
        q04 q04Var;
        Logger logger = Logger.getLogger(w04.class.getName());
        ClassLoader classLoader = q04.class.getClassLoader();
        try {
            q04Var = (q04) ca.j(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryTraceComponentImpl", true, classLoader), q04.class);
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry TraceComponent, now trying to load original implementation.", (Throwable) e);
            try {
                q04Var = (q04) ca.j(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), q04.class);
            } catch (ClassNotFoundException e2) {
                logger.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e2);
                try {
                    q04Var = (q04) ca.j(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), q04.class);
                } catch (ClassNotFoundException e3) {
                    logger.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e3);
                    q04Var = new q04();
                }
            }
        }
        a = q04Var;
    }
}
