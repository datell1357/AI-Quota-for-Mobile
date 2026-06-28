package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ih5 extends al4 {
    public final ye4 b;
    public final ye4 c;
    public final int[] d;
    public final int e;

    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ih5(defpackage.ye4 r11, defpackage.ye4 r12) {
        /*
            r10 = this;
            r10.<init>()
            r10.b = r11
            r10.c = r12
            int r11 = r12.b()
            r12 = 28
            r0 = 0
            r1 = 1
            if (r11 > r12) goto L13
            r12 = r1
            goto L14
        L13:
            r12 = r0
        L14:
            if (r12 == 0) goto L60
            int[] r12 = new int[r11]
            r10.d = r12
            r2 = 0
            r4 = r0
            r5 = r4
        L1e:
            if (r4 >= r11) goto L5d
            og5 r6 = r10.d(r4)
            long r7 = r6.e
            long r7 = r7 | r2
            int r2 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r2 != 0) goto L54
            r2 = r0
        L2c:
            r3 = -1
            if (r2 >= r5) goto L41
            r9 = r12[r2]
            r9 = r9 & 31
            og5 r9 = r10.d(r9)
            boolean r9 = r6.equals(r9)
            if (r9 == 0) goto L3e
            goto L42
        L3e:
            int r2 = r2 + 1
            goto L2c
        L41:
            r2 = r3
        L42:
            if (r2 == r3) goto L54
            boolean r3 = r6.c
            if (r3 == 0) goto L50
            r3 = r12[r2]
            int r6 = r4 + 4
            int r6 = r1 << r6
            r3 = r3 | r6
            goto L51
        L50:
            r3 = r4
        L51:
            r12[r2] = r3
            goto L59
        L54:
            int r2 = r5 + 1
            r12[r5] = r4
            r5 = r2
        L59:
            int r4 = r4 + 1
            r2 = r7
            goto L1e
        L5d:
            r10.e = r5
            return
        L60:
            java.lang.String r10 = "metadata size too large"
            defpackage.k21.f(r10)
            r10 = 0
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ih5.<init>(ye4, ye4):void");
    }

    @Override // defpackage.al4
    public final void a(fh5 fh5Var, ah5 ah5Var) {
        for (int i = 0; i < this.e; i++) {
            int i2 = this.d[i];
            og5 og5VarD = d(i2 & 31);
            if (og5VarD.c) {
                fh5Var.b(og5VarD, new hh5(this, og5VarD, i2), ah5Var);
            } else {
                ye4 ye4Var = this.b;
                int iB = ye4Var.b();
                if (i2 >= iB) {
                    ye4Var = this.c;
                    i2 -= iB;
                }
                fh5Var.a(og5VarD, og5VarD.b.cast(ye4Var.d(i2)), ah5Var);
            }
        }
    }

    @Override // defpackage.al4
    public final int b() {
        return this.e;
    }

    @Override // defpackage.al4
    public final Set c() {
        return new yh(3, this);
    }

    public final og5 d(int i) {
        ye4 ye4Var = this.b;
        int iB = ye4Var.b();
        return i >= iB ? this.c.c(i - iB) : ye4Var.c(i);
    }
}
