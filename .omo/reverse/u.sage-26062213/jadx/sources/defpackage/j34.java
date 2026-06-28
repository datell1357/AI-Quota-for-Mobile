package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class j34 extends g34 {
    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        ArrayList arrayList = new ArrayList();
        ww1Var.b();
        while (ww1Var.L()) {
            try {
                arrayList.add(Integer.valueOf(ww1Var.Z()));
            } catch (NumberFormatException e) {
                throw new fw1(e, 5);
            }
        }
        ww1Var.A();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i = 0; i < size; i++) {
            atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
        }
        return atomicIntegerArray;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        bx1Var.j();
        int length = ((AtomicIntegerArray) obj).length();
        for (int i = 0; i < length; i++) {
            bx1Var.i0(r5.get(i));
        }
        bx1Var.A();
    }
}
