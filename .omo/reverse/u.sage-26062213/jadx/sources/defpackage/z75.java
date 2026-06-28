package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z75 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ f85 o;

    public z75(f85 f85Var, int i) {
        this.n = i;
        switch (i) {
            case 1:
                Objects.requireNonNull(f85Var);
                this.o = f85Var;
                break;
            default:
                Objects.requireNonNull(f85Var);
                this.o = f85Var;
                break;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        f85 f85Var = this.o;
        switch (i) {
            case 0:
                f85Var.e = f85Var.j;
                break;
            default:
                f85Var.j = null;
                break;
        }
    }
}
