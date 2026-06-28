package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class op1 extends cp1 {
    public final vh2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public op1() {
        super(4);
        vh2 vh2Var = vh2.o;
        this.d = vh2Var;
    }

    public final g53 c() {
        g53 g53Var;
        Object[] objArrCopyOf = this.a;
        int i = this.b;
        vh2 vh2Var = this.d;
        if (i == 0) {
            g53Var = vh2.o != vh2Var ? new g53(z43.r, vh2Var) : g53.f107u;
        } else {
            w80.m(i, objArrCopyOf);
            Arrays.sort(objArrCopyOf, 0, i, vh2Var);
            int i2 = 1;
            for (int i3 = 1; i3 < i; i3++) {
                Object obj = objArrCopyOf[i3];
                if (vh2Var.compare(obj, objArrCopyOf[i2 - 1]) != 0) {
                    objArrCopyOf[i2] = obj;
                    i2++;
                }
            }
            Arrays.fill(objArrCopyOf, i2, i, (Object) null);
            if (i2 < objArrCopyOf.length / 2) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i2);
            }
            g53Var = new g53(lp1.i(i2, objArrCopyOf), vh2Var);
        }
        this.b = g53Var.t.size();
        this.c = true;
        return g53Var;
    }
}
