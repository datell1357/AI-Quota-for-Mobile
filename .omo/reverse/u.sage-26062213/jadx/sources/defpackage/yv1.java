package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class yv1 {
    public final String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            bx1 bx1Var = new bx1(new s72(sb));
            bx1Var.f36u = 1;
            dw1.a.getClass();
            dw1.e(bx1Var, this);
            return sb.toString();
        } catch (IOException e) {
            k21.c(e);
            return null;
        }
    }
}
