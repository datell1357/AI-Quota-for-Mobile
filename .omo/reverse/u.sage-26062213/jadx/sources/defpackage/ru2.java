package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ru2 extends c2 {
    public final /* synthetic */ int n;
    public final lu2 o;

    public /* synthetic */ ru2(lu2 lu2Var, int i) {
        this.n = i;
        this.o = lu2Var;
    }

    @Override // defpackage.w
    public final int a() {
        int i = this.n;
        lu2 lu2Var = this.o;
        switch (i) {
            case 0:
                lu2Var.getClass();
                break;
            default:
                lu2Var.getClass();
                break;
        }
        return lu2Var.o;
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        int i = this.n;
        lu2 lu2Var = this.o;
        switch (i) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = lu2Var.get(entry.getKey());
                return obj2 != null ? obj2.equals(entry.getValue()) : entry.getValue() == null && lu2Var.containsKey(entry.getKey());
            default:
                return lu2Var.containsKey(obj);
        }
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.n) {
            case 0:
                j24 j24Var = this.o.n;
                k24[] k24VarArr = new k24[8];
                for (int i = 0; i < 8; i++) {
                    k24VarArr[i] = new l24(0);
                }
                return new su2(j24Var, k24VarArr);
            default:
                j24 j24Var2 = this.o.n;
                k24[] k24VarArr2 = new k24[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    k24VarArr2[i2] = new l24(1);
                }
                return new su2(j24Var2, k24VarArr2);
        }
    }
}
