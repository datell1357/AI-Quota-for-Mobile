package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wq1 extends tv2 {
    public final boolean l;

    public wq1(String str, xq1 xq1Var) {
        super(str, xq1Var, 1);
        this.l = true;
    }

    @Override // defpackage.tv2
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof wq1) {
            gi3 gi3Var = (gi3) obj;
            if (this.a.equals(gi3Var.b())) {
                wq1 wq1Var = (wq1) obj;
                if (wq1Var.l && Arrays.equals((gi3[]) this.j.getValue(), (gi3[]) wq1Var.j.getValue())) {
                    int iD = gi3Var.d();
                    int i = this.c;
                    if (i == iD) {
                        for (int i2 = 0; i2 < i; i2++) {
                            if (nt1.g(j(i2).b(), gi3Var.j(i2).b()) && nt1.g(j(i2).c(), gi3Var.j(i2).c())) {
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.tv2, defpackage.gi3
    public final boolean f() {
        return this.l;
    }

    @Override // defpackage.tv2
    public final int hashCode() {
        return super.hashCode() * 31;
    }
}
