package defpackage;

import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lw2 {
    public final int a;
    public final ne1 b;
    public final ReentrantLock c = new ReentrantLock();
    public int d;
    public boolean e;
    public final oe0[] f;
    public final vh3 g;
    public final e50 h;

    public lw2(int i, ne1 ne1Var) {
        this.a = i;
        this.b = ne1Var;
        this.f = new oe0[i];
        int i2 = wh3.a;
        this.g = new vh3(i);
        e50 e50Var = new e50();
        if (i < 1) {
            k21.f("capacity must be >= 1");
            throw null;
        }
        if (i > 1073741824) {
            k21.f("capacity must be <= 2^30");
            throw null;
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        e50Var.c = i - 1;
        e50Var.d = new Object[i];
        this.h = e50Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.fh0 r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof defpackage.kw2
            if (r0 == 0) goto L13
            r0 = r8
            kw2 r0 = (defpackage.kw2) r0
            int r1 = r0.t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.t = r1
            goto L18
        L13:
            kw2 r0 = new kw2
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.r
            int r1 = r0.t
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            lw2 r7 = r0.q
            defpackage.gg4.T(r8)
            goto L40
        L28:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.k21.n(r7)
            return r2
        L2e:
            defpackage.gg4.T(r8)
            r0.q = r7
            r0.t = r3
            vh3 r8 = r7.g
            java.lang.Object r8 = r8.a(r0)
            ri0 r0 = defpackage.ri0.n
            if (r8 != r0) goto L40
            return r0
        L40:
            java.util.concurrent.locks.ReentrantLock r8 = r7.c     // Catch: java.lang.Throwable -> L8c
            e50 r0 = r7.h     // Catch: java.lang.Throwable -> L8c
            r8.lock()     // Catch: java.lang.Throwable -> L8c
            boolean r1 = r7.e     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L96
            int r1 = r0.a     // Catch: java.lang.Throwable -> L8e
            int r4 = r0.b     // Catch: java.lang.Throwable -> L8e
            if (r1 != r4) goto L72
            int r1 = r7.d     // Catch: java.lang.Throwable -> L8e
            int r4 = r7.a     // Catch: java.lang.Throwable -> L8e
            if (r1 < r4) goto L58
            goto L72
        L58:
            oe0 r1 = new oe0     // Catch: java.lang.Throwable -> L8e
            ne1 r4 = r7.b     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r4 = r4.a()     // Catch: java.lang.Throwable -> L8e
            jb3 r4 = (defpackage.jb3) r4     // Catch: java.lang.Throwable -> L8e
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L8e
            oe0[] r4 = r7.f     // Catch: java.lang.Throwable -> L8e
            int r5 = r7.d     // Catch: java.lang.Throwable -> L8e
            int r6 = r5 + 1
            r7.d = r6     // Catch: java.lang.Throwable -> L8e
            r4[r5] = r1     // Catch: java.lang.Throwable -> L8e
            r0.a(r1)     // Catch: java.lang.Throwable -> L8e
        L72:
            int r1 = r0.a     // Catch: java.lang.Throwable -> L8e
            int r4 = r0.b     // Catch: java.lang.Throwable -> L8e
            if (r1 == r4) goto L90
            java.lang.Object r4 = r0.d     // Catch: java.lang.Throwable -> L8e
            java.lang.Object[] r4 = (java.lang.Object[]) r4     // Catch: java.lang.Throwable -> L8e
            r5 = r4[r1]     // Catch: java.lang.Throwable -> L8e
            r4[r1] = r2     // Catch: java.lang.Throwable -> L8e
            int r1 = r1 + r3
            int r2 = r0.c     // Catch: java.lang.Throwable -> L8e
            r1 = r1 & r2
            r0.a = r1     // Catch: java.lang.Throwable -> L8e
            oe0 r5 = (defpackage.oe0) r5     // Catch: java.lang.Throwable -> L8e
            r8.unlock()     // Catch: java.lang.Throwable -> L8c
            return r5
        L8c:
            r8 = move-exception
            goto La2
        L8e:
            r0 = move-exception
            goto L9e
        L90:
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException     // Catch: java.lang.Throwable -> L8e
            r0.<init>()     // Catch: java.lang.Throwable -> L8e
            throw r0     // Catch: java.lang.Throwable -> L8e
        L96:
            java.lang.String r0 = "Connection pool is closed"
            r1 = 21
            defpackage.ix.U(r1, r0)     // Catch: java.lang.Throwable -> L8e
            throw r2     // Catch: java.lang.Throwable -> L8e
        L9e:
            r8.unlock()     // Catch: java.lang.Throwable -> L8c
            throw r0     // Catch: java.lang.Throwable -> L8c
        La2:
            vh3 r7 = r7.g
            r7.d()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lw2.a(fh0):java.lang.Object");
    }

    public final void b() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.e = true;
            for (oe0 oe0Var : this.f) {
                if (oe0Var != null) {
                    oe0Var.close();
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void c(StringBuilder sb) {
        e50 e50Var = this.h;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            a42 a42VarP = tv4.p();
            int i = (e50Var.b - e50Var.a) & e50Var.c;
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 >= 0) {
                    int i3 = e50Var.b;
                    int i4 = e50Var.a;
                    int i5 = e50Var.c;
                    if (i2 < ((i3 - i4) & i5)) {
                        Object obj = ((Object[]) e50Var.d)[(i4 + i2) & i5];
                        obj.getClass();
                        a42VarP.add(obj);
                    }
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            a42 a42VarL = tv4.l(a42VarP);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.a + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            vh3 vh3Var = this.g;
            vh3Var.getClass();
            sb2.append(Math.max(uh3.t.get(vh3Var), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + a42VarL.a() + ")[" + o70.n0(a42VarL, null, null, null, null, 63) + "], ");
            sb.append(")");
            sb.append('\n');
            oe0[] oe0VarArr = this.f;
            int length = oe0VarArr.length;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                oe0 oe0Var = oe0VarArr[i7];
                i6++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i6);
                sb3.append("] - ");
                sb3.append(oe0Var != null ? oe0Var.n.toString() : null);
                sb.append(sb3.toString());
                sb.append('\n');
                if (oe0Var != null) {
                    oe0Var.r(sb);
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void d(oe0 oe0Var) {
        oe0Var.getClass();
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.h.a(oe0Var);
            reentrantLock.unlock();
            this.g.d();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
