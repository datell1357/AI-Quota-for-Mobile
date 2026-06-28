package defpackage;

import java.util.Queue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tj {
    public int a = 1;
    public oj b;
    public yk0 c;
    public Queue d;

    public final int a() {
        return this.a;
    }

    public final boolean b() {
        oj ojVar = this.b;
        return ojVar != null && ojVar.f();
    }

    public final void c() {
        this.a = 1;
        this.d = null;
        this.b = null;
        this.c = null;
    }

    public final void d(int i) {
        if (i == 0) {
            i = 1;
        }
        this.a = i;
    }

    public final void e(oj ojVar, yk0 yk0Var) {
        w80.L(ojVar, "Auth scheme");
        w80.L(yk0Var, "Credentials");
        this.b = ojVar;
        this.c = yk0Var;
        this.d = null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("state:");
        sb.append(di0.G(this.a));
        sb.append(";");
        if (this.b != null) {
            sb.append("auth scheme:");
            sb.append(this.b.d());
            sb.append(";");
        }
        if (this.c != null) {
            sb.append("credentials present");
        }
        return sb.toString();
    }
}
