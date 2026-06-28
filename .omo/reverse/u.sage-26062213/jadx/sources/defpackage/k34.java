package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k34 extends g34 {
    public final /* synthetic */ int a;
    public final /* synthetic */ g34 b;

    public /* synthetic */ k34(g34 g34Var, int i) {
        this.a = i;
        this.b = g34Var;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        int i = this.a;
        g34 g34Var = this.b;
        switch (i) {
            case 0:
                ArrayList arrayList = new ArrayList();
                ww1Var.b();
                while (ww1Var.L()) {
                    arrayList.add(Long.valueOf(((Number) g34Var.b(ww1Var)).longValue()));
                }
                ww1Var.A();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
                }
                return atomicLongArray;
            default:
                return new AtomicLong(((Number) g34Var.b(ww1Var)).longValue());
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        int i = this.a;
        g34 g34Var = this.b;
        switch (i) {
            case 0:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                bx1Var.j();
                int length = atomicLongArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    g34Var.c(bx1Var, Long.valueOf(atomicLongArray.get(i2)));
                }
                bx1Var.A();
                break;
            default:
                g34Var.c(bx1Var, Long.valueOf(((AtomicLong) obj).get()));
                break;
        }
    }
}
