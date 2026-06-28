package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class re5 extends s0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public hg f297u;
    public final int v;

    public re5(hg hgVar, int i) {
        this.f297u = hgVar;
        this.v = i;
    }

    @Override // defpackage.s0
    public final void e() {
        AtomicLong atomicLong;
        long j;
        int i;
        int i2;
        boolean z;
        hg hgVar = this.f297u;
        this.f297u = null;
        if (hgVar == null) {
            return;
        }
        AtomicReference atomicReference = (AtomicReference) hgVar.c;
        do {
            atomicLong = (AtomicLong) hgVar.b;
            j = atomicLong.get();
            i = (int) j;
            long j2 = j >>> 32;
            if (i == Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 13);
                sb.append("Refcount is: ");
                sb.append(j);
                throw new AssertionError(sb.toString());
            }
            i2 = (int) j2;
            z = i == -2147483647;
            if (z) {
                i2++;
            }
        } while (!atomicLong.compareAndSet(j, (((long) i2) << 32) | (4294967295L & ((long) (i - 1)))));
        if (z) {
            while (true) {
                se5 se5Var = (se5) atomicReference.get();
                if (se5Var != null) {
                    if (se5Var.f315u <= this.v) {
                        se5Var.cancel(true);
                        while (!atomicReference.compareAndSet(se5Var, null)) {
                            if (atomicReference.get() != se5Var) {
                                break;
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    @Override // defpackage.s0
    public final String l() {
        pi piVar;
        hg hgVar = this.f297u;
        if (hgVar == null || (piVar = (pi) ((w85) hgVar.a).o) == null) {
            return null;
        }
        String string = piVar.toString();
        String strY = di0.y(new StringBuilder(string.length() + 11), "callable=[", string, "]");
        se5 se5Var = (se5) ((AtomicReference) this.f297u.c).get();
        if (se5Var == null) {
            return strY;
        }
        int length = strY.length();
        String string2 = se5Var.toString();
        return xw1.t(new StringBuilder(string2.length() + length + 9 + 1), strY, ", trial=[", string2, "]");
    }
}
