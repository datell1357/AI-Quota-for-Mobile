package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zx {
    public final ug2 a;

    public zx(int i) {
        switch (i) {
            case 1:
                this.a = new ug2(new vz1[16]);
                break;
            default:
                this.a = new ug2(new dg0[16]);
                break;
        }
    }

    public void a(CancellationException cancellationException) {
        ug2 ug2Var = this.a;
        int i = ug2Var.p;
        n20[] n20VarArr = new n20[i];
        for (int i2 = 0; i2 < i; i2++) {
            n20VarArr[i2] = ((dg0) ug2Var.n[i2]).b;
        }
        for (int i3 = 0; i3 < i; i3++) {
            n20VarArr[i3].l(cancellationException);
        }
        if (ug2Var.p == 0) {
            return;
        }
        dr1.c("uncancelled requests present");
    }

    public void b() {
        ug2 ug2Var = this.a;
        ms1 ms1VarA0 = ix.a0(0, ug2Var.p);
        int i = ms1VarA0.n;
        int i2 = ms1VarA0.o;
        if (i <= i2) {
            while (true) {
                ((dg0) ug2Var.n[i]).b.g(t64.a);
                if (i == i2) {
                    break;
                } else {
                    i++;
                }
            }
        }
        ug2Var.h();
    }
}
