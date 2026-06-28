package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ab0 extends RuntimeException {
    public final dg2 n;
    public final dg2 o;
    public final sf2 p;
    public final int q;

    public ab0(dg2 dg2Var, dg2 dg2Var2, sf2 sf2Var, int i, Exception exc) {
        super(exc);
        this.n = dg2Var;
        this.o = dg2Var2;
        this.p = sf2Var;
        this.q = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        List listE;
        List listC0;
        bi3 bi3VarY = se0.y(new za0(this, null));
        if (bi3VarY.hasNext()) {
            Object next = bi3VarY.next();
            if (bi3VarY.hasNext()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(next);
                while (bi3VarY.hasNext()) {
                    arrayList.add(bi3VarY.next());
                }
                listE = arrayList;
            } else {
                listE = tv4.E(next);
            }
        } else {
            listE = g01.n;
        }
        int size = listE.size();
        if (50 >= size) {
            listC0 = o70.C0(listE);
        } else {
            ArrayList arrayList2 = new ArrayList(50);
            if (listE instanceof RandomAccess) {
                for (int i = size - 50; i < size; i++) {
                    arrayList2.add(listE.get(i));
                }
            } else {
                ListIterator listIterator = listE.listIterator(size - 50);
                while (listIterator.hasNext()) {
                    arrayList2.add(listIterator.next());
                }
            }
            listC0 = arrayList2;
        }
        return at3.p0("\n            |Failed to execute op number " + this.q + ":\n            |" + o70.n0(listC0, "\n", null, null, null, 62) + "\n            ");
    }
}
