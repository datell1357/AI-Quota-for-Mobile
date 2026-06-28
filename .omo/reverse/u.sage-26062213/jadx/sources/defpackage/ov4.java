package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ov4 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final /* synthetic */ long o;
    public final /* synthetic */ az4 p;

    public ov4(bx4 bx4Var, long j) {
        this.o = j;
        Objects.requireNonNull(bx4Var);
        this.p = bx4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        long j = this.o;
        az4 az4Var = this.p;
        switch (i) {
            case 0:
                ((bx4) az4Var).B(j);
                break;
            default:
                f85 f85Var = (f85) az4Var;
                bx4 bx4Var = ((r45) f85Var.a).n;
                r45.i(bx4Var);
                bx4Var.y(j);
                f85Var.e = null;
                break;
        }
    }

    public ov4(f85 f85Var, long j) {
        this.o = j;
        Objects.requireNonNull(f85Var);
        this.p = f85Var;
    }
}
