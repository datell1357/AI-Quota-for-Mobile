package defpackage;

import android.util.Log;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class v43 {
    public final String a;

    public /* synthetic */ v43(String str) {
        this.a = str;
    }

    public abstract boolean a(Level level);

    public abstract void b(cg5 cg5Var);

    public void c(RuntimeException runtimeException, cg5 cg5Var) {
        Log.e("AbstractAndroidBackend", "Internal logging error", runtimeException);
    }
}
