package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zv0 {
    public final qf2 a;
    public final qf2 b;

    static {
        Float fValueOf = Float.valueOf(0.0f);
        js2 js2Var = new js2(fValueOf, fValueOf);
        Float fValueOf2 = Float.valueOf(0.5f);
        new zv0(js2Var, new js2(fValueOf2, fValueOf2));
    }

    public zv0(js2... js2VarArr) {
        this.a = new qf2(js2VarArr.length);
        this.b = new qf2(js2VarArr.length);
        int length = js2VarArr.length;
        int i = 0;
        while (true) {
            qf2 qf2Var = this.a;
            if (i >= length) {
                se0.I(qf2Var);
                se0.I(this.b);
                return;
            } else {
                qf2Var.a(((Number) js2VarArr[i].n).floatValue());
                this.b.a(((Number) js2VarArr[i].o).floatValue());
                i++;
            }
        }
    }
}
