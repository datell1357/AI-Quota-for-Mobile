package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aj0 {
    public final bm0 a;
    public final eh b;

    public aj0(bm0 bm0Var, q51 q51Var) {
        this.a = bm0Var;
        this.b = new eh(q51Var);
    }

    public final void a(String str) {
        eh ehVar = this.b;
        synchronized (ehVar) {
            if (!Objects.equals((String) ehVar.p, str)) {
                eh.D((q51) ehVar.o, str, (String) ehVar.q);
                ehVar.p = str;
            }
        }
    }
}
