package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class tg0 {
    public static final ug0 a;

    static {
        ug0 ky3Var;
        AtomicReference atomicReference = new AtomicReference();
        try {
            ky3Var = (ug0) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(ug0.class).getConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            atomicReference.set(e);
            ky3Var = new ky3();
        } catch (Exception e2) {
            k21.i("Storage override failed to initialize", e2);
            return;
        }
        a = ky3Var;
        Throwable th = (Throwable) atomicReference.get();
        if (th != null) {
            vg0.c.log(Level.FINE, "Storage override doesn't exist. Using default", th);
        }
    }
}
