package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ss3 extends IOException {
    public final d21 n;

    public ss3(d21 d21Var) {
        super("stream was reset: " + d21Var);
        this.n = d21Var;
    }
}
