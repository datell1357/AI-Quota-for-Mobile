package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i63 implements Runnable {
    public final /* synthetic */ int n;
    public Object o;
    public Object p;
    public Object q;

    public i63(o95 o95Var, AtomicReference atomicReference, vc5 vc5Var) {
        this.n = 7;
        this.o = atomicReference;
        this.p = vc5Var;
        Objects.requireNonNull(o95Var);
        this.q = o95Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x042e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i63.run():void");
    }

    public String toString() {
        switch (this.n) {
            case 12:
                e30 e30Var = (e30) this.q;
                StringBuilder sb = new StringBuilder(e30Var.toString().length() + 14);
                sb.append("propagating=[");
                sb.append(e30Var);
                sb.append("]");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ i63(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.q = obj;
        this.o = obj2;
        this.p = obj3;
    }

    public /* synthetic */ i63(Object obj, Object obj2, Object obj3, int i, boolean z) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
    }

    public /* synthetic */ i63() {
        this.n = 1;
    }
}
