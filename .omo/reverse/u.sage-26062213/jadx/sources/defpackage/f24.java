package defpackage;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f24 implements Iterator {
    public final /* synthetic */ int n;
    public g24 o;
    public e24 p;
    public final /* synthetic */ h24 q;

    /* JADX WARN: Removed duplicated region for block: B:42:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f24(defpackage.h24 r7, int r8) {
        /*
            r6 = this;
            r6.n = r8
            r0 = 1
            r1 = 0
            switch(r8) {
                case 1: goto L4e;
                default: goto L7;
            }
        L7:
            r6.<init>()
            r6.q = r7
            g24 r8 = r7.t
            java.util.Comparator r2 = r7.p
            lg1 r3 = r7.s
            i3 r7 = r7.r
            java.lang.Object r7 = r7.a
            g24 r7 = (defpackage.g24) r7
            if (r7 != 0) goto L1b
            goto L4b
        L1b:
            boolean r4 = r3.o
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r3.p
            g24 r7 = r7.c(r2, r4)
            if (r7 != 0) goto L28
            goto L4b
        L28:
            int r5 = r3.q
            if (r5 != r0) goto L3f
            java.lang.Object r0 = r7.a
            int r0 = r2.compare(r4, r0)
            if (r0 != 0) goto L3f
            g24 r7 = r7.i
            java.util.Objects.requireNonNull(r7)
            goto L3f
        L3a:
            g24 r7 = r8.i
            java.util.Objects.requireNonNull(r7)
        L3f:
            if (r7 == r8) goto L4b
            java.lang.Object r8 = r7.a
            boolean r8 = r3.a(r8)
            if (r8 != 0) goto L4a
            goto L4b
        L4a:
            r1 = r7
        L4b:
            r6.o = r1
            return
        L4e:
            r6.<init>()
            r6.q = r7
            g24 r8 = r7.t
            java.util.Comparator r2 = r7.p
            lg1 r3 = r7.s
            i3 r7 = r7.r
            java.lang.Object r7 = r7.a
            g24 r7 = (defpackage.g24) r7
            if (r7 != 0) goto L62
            goto L90
        L62:
            boolean r4 = r3.r
            if (r4 == 0) goto L81
            java.lang.Object r4 = r3.s
            g24 r7 = r7.f(r2, r4)
            if (r7 != 0) goto L6f
            goto L90
        L6f:
            int r5 = r3.t
            if (r5 != r0) goto L86
            java.lang.Object r0 = r7.a
            int r0 = r2.compare(r4, r0)
            if (r0 != 0) goto L86
            g24 r7 = r7.h
            java.util.Objects.requireNonNull(r7)
            goto L86
        L81:
            g24 r7 = r8.h
            java.util.Objects.requireNonNull(r7)
        L86:
            if (r7 == r8) goto L90
            java.lang.Object r8 = r7.a
            boolean r8 = r3.a(r8)
            if (r8 != 0) goto L91
        L90:
            r7 = r1
        L91:
            r6.o = r7
            r6.p = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f24.<init>(h24, int):void");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.n;
        h24 h24Var = this.q;
        switch (i) {
            case 0:
                g24 g24Var = this.o;
                if (g24Var != null) {
                    if (h24Var.s.c(g24Var.a)) {
                        this.o = null;
                    }
                }
                break;
            default:
                g24 g24Var2 = this.o;
                if (g24Var2 != null) {
                    if (h24Var.s.d(g24Var2.a)) {
                        this.o = null;
                    }
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.n;
        h24 h24Var = this.q;
        switch (i) {
            case 0:
                if (!hasNext()) {
                    p61.v();
                } else {
                    g24 g24Var = this.o;
                    Objects.requireNonNull(g24Var);
                    h24Var.getClass();
                    e24 e24Var = new e24(h24Var, g24Var);
                    this.p = e24Var;
                    g24 g24Var2 = this.o.i;
                    Objects.requireNonNull(g24Var2);
                    if (g24Var2 == h24Var.t) {
                        this.o = null;
                    } else {
                        g24 g24Var3 = this.o.i;
                        Objects.requireNonNull(g24Var3);
                        this.o = g24Var3;
                    }
                }
                break;
            default:
                if (!hasNext()) {
                    p61.v();
                } else {
                    Objects.requireNonNull(this.o);
                    g24 g24Var4 = this.o;
                    h24Var.getClass();
                    e24 e24Var2 = new e24(h24Var, g24Var4);
                    this.p = e24Var2;
                    g24 g24Var5 = this.o.h;
                    Objects.requireNonNull(g24Var5);
                    if (g24Var5 == h24Var.t) {
                        this.o = null;
                    } else {
                        g24 g24Var6 = this.o.h;
                        Objects.requireNonNull(g24Var6);
                        this.o = g24Var6;
                    }
                }
                break;
        }
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.n) {
            case 0:
                n44.b0(this.p != null, "no calls to next() since the last call to remove()");
                this.q.f(this.p.n.a);
                this.p = null;
                break;
            default:
                n44.b0(this.p != null, "no calls to next() since the last call to remove()");
                this.q.f(this.p.n.a);
                this.p = null;
                break;
        }
    }
}
