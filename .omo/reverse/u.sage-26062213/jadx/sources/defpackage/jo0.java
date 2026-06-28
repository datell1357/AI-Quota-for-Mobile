package defpackage;

import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class jo0 implements h34 {
    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        if (q44Var.a == Date.class) {
            return new mo0(lo0.b, 2, 2);
        }
        return null;
    }

    public final String toString() {
        return "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY";
    }
}
