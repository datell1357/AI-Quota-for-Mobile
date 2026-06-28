package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sg3 {
    public static final qg3 a = new qg3(new byte[0], 0, 0, false);
    public static final int b;
    public static final AtomicReference[] c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        c = atomicReferenceArr;
    }

    public static final void a(qg3 qg3Var) {
        qg3Var.getClass();
        if (qg3Var.f != null || qg3Var.g != null) {
            k21.f("Failed requirement.");
            return;
        }
        if (qg3Var.d) {
            return;
        }
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        qg3 qg3Var2 = a;
        qg3 qg3Var3 = (qg3) atomicReference.getAndSet(qg3Var2);
        if (qg3Var3 == qg3Var2) {
            return;
        }
        int i = qg3Var3 != null ? qg3Var3.c : 0;
        if (i >= 65536) {
            atomicReference.set(qg3Var3);
            return;
        }
        qg3Var.f = qg3Var3;
        qg3Var.b = 0;
        qg3Var.c = i + 8192;
        atomicReference.set(qg3Var);
    }

    public static final qg3 b() {
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        qg3 qg3Var = a;
        qg3 qg3Var2 = (qg3) atomicReference.getAndSet(qg3Var);
        if (qg3Var2 == qg3Var) {
            return new qg3();
        }
        if (qg3Var2 == null) {
            atomicReference.set(null);
            return new qg3();
        }
        atomicReference.set(qg3Var2.f);
        qg3Var2.f = null;
        qg3Var2.c = 0;
        return qg3Var2;
    }
}
