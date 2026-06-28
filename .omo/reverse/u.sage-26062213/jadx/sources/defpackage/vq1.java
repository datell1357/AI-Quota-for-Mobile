package defpackage;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vq1 {
    public final LinkedHashMap a;

    public vq1(int i) {
        switch (i) {
            case 1:
                this.a = new LinkedHashMap();
                break;
            default:
                this.a = new LinkedHashMap();
                break;
        }
    }

    public void a(i50 i50Var, pe1 pe1Var) {
        pe1Var.getClass();
        LinkedHashMap linkedHashMap = this.a;
        if (linkedHashMap.containsKey(i50Var)) {
            p61.l("A `initializer` with the same `clazz` has already been added: ", i50Var.b(), 46);
        } else {
            linkedHashMap.put(i50Var, new xb4(i50Var, pe1Var));
        }
    }

    public void b(ad2 ad2Var) {
        ad2Var.getClass();
        int i = ad2Var.a;
        int i2 = ad2Var.b;
        Integer numValueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.a;
        Object treeMap = linkedHashMap.get(numValueOf);
        if (treeMap == null) {
            treeMap = new TreeMap();
            linkedHashMap.put(numValueOf, treeMap);
        }
        TreeMap treeMap2 = (TreeMap) treeMap;
        if (treeMap2.containsKey(Integer.valueOf(i2))) {
            Log.w("ROOM", "Overriding migration " + treeMap2.get(Integer.valueOf(i2)) + " with " + ad2Var);
        }
        treeMap2.put(Integer.valueOf(i2), ad2Var);
    }

    public u6 c() {
        Collection collectionValues = this.a.values();
        collectionValues.getClass();
        xb4[] xb4VarArr = (xb4[]) collectionValues.toArray(new xb4[0]);
        return new u6(2, (xb4[]) Arrays.copyOf(xb4VarArr, xb4VarArr.length));
    }
}
