package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u00 extends x00 implements Serializable {
    public final /* synthetic */ int n = 1;
    public final Object o;

    public u00(ze1 ze1Var) {
        ze1Var.getClass();
        this.o = ze1Var;
    }

    @Override // defpackage.x00
    public final Object load(Object obj) {
        int i = this.n;
        Object obj2 = this.o;
        switch (i) {
            case 0:
                obj.getClass();
                return ((ze1) obj2).apply(obj);
            default:
                obj.getClass();
                return ((cu3) obj2).get();
        }
    }

    public u00(cu3 cu3Var) {
        cu3Var.getClass();
        this.o = cu3Var;
    }
}
