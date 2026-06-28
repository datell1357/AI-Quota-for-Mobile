package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c42 {
    public static ct1 a(long j, Object obj) {
        ct1 ct1Var = (ct1) n74.c.h(j, obj);
        if (((a03) ct1Var).n) {
            return ct1Var;
        }
        a03 a03Var = (a03) ct1Var;
        int i = a03Var.p;
        a03 a03VarD = a03Var.d(i == 0 ? 10 : i * 2);
        n74.o(obj, j, a03VarD);
        return a03VarD;
    }
}
