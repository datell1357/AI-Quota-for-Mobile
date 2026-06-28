package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x14 implements w14 {
    public final Set a;
    public final hp b;
    public final y14 c;

    public x14(Set set, hp hpVar, y14 y14Var) {
        this.a = set;
        this.b = hpVar;
        this.c = y14Var;
    }

    public final rp a(String str, o01 o01Var, mk0 mk0Var) {
        Set set = this.a;
        if (set.contains(o01Var)) {
            return new rp(this.b, str, o01Var, mk0Var, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", o01Var, set));
    }
}
