package defpackage;

import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fv3 extends md2 implements dw2, as0, cw2 {
    public Object B;
    public Object C;
    public PointerInputEventHandler D;
    public ir3 E;
    public vv2 F = dv3.a;
    public final ug2 G;
    public final ug2 H;
    public final ug2 I;
    public vv2 J;

    public fv3(Object obj, Object obj2, PointerInputEventHandler pointerInputEventHandler) {
        this.B = obj;
        this.C = obj2;
        this.D = pointerInputEventHandler;
        ug2 ug2Var = new ug2(new ev3[16]);
        this.G = ug2Var;
        this.H = ug2Var;
        this.I = new ug2(new ev3[16]);
    }

    @Override // defpackage.cw2
    public final void F(vv2 vv2Var, wv2 wv2Var, long j) {
        if (wv2Var == wv2.n) {
            this.F = vv2Var;
        }
        dh0 dh0Var = null;
        if (this.E == null) {
            this.E = ca.y(u0(), null, ti0.q, new x50(this, dh0Var, 19), 1);
        }
        G0(vv2Var, wv2Var);
        List list = vv2Var.a;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                vv2Var = null;
                break;
            } else if (!se0.f((zv2) list.get(i))) {
                break;
            } else {
                i++;
            }
        }
        this.J = vv2Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:6:0x000d, B:13:0x001b, B:14:0x0021, B:17:0x0024, B:20:0x0030, B:22:0x0038, B:24:0x003c, B:25:0x0041, B:26:0x0044, B:28:0x004d, B:30:0x0055, B:32:0x0059), top: B:41:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G0(defpackage.vv2 r7, defpackage.wv2 r8) {
        /*
            r6 = this;
            ug2 r0 = r6.H
            monitor-enter(r0)
            ug2 r1 = r6.I     // Catch: java.lang.Throwable -> L6d
            ug2 r2 = r6.G     // Catch: java.lang.Throwable -> L6d
            int r3 = r1.p     // Catch: java.lang.Throwable -> L6d
            r1.d(r3, r2)     // Catch: java.lang.Throwable -> L6d
            monitor-exit(r0)
            int r0 = r8.ordinal()     // Catch: java.lang.Throwable -> L22
            r1 = 0
            if (r0 == 0) goto L44
            r2 = 1
            if (r0 == r2) goto L24
            r2 = 2
            if (r0 != r2) goto L1b
            goto L44
        L1b:
            v00 r7 = new v00     // Catch: java.lang.Throwable -> L22
            r8 = 7
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L22
            throw r7     // Catch: java.lang.Throwable -> L22
        L22:
            r7 = move-exception
            goto L67
        L24:
            ug2 r0 = r6.I     // Catch: java.lang.Throwable -> L22
            int r3 = r0.p     // Catch: java.lang.Throwable -> L22
            int r3 = r3 - r2
            java.lang.Object[] r0 = r0.n     // Catch: java.lang.Throwable -> L22
            int r2 = r0.length     // Catch: java.lang.Throwable -> L22
            if (r3 >= r2) goto L61
        L2e:
            if (r3 < 0) goto L61
            r2 = r0[r3]     // Catch: java.lang.Throwable -> L22
            ev3 r2 = (defpackage.ev3) r2     // Catch: java.lang.Throwable -> L22
            wv2 r4 = r2.q     // Catch: java.lang.Throwable -> L22
            if (r8 != r4) goto L41
            o20 r4 = r2.p     // Catch: java.lang.Throwable -> L22
            if (r4 == 0) goto L41
            r2.p = r1     // Catch: java.lang.Throwable -> L22
            r4.g(r7)     // Catch: java.lang.Throwable -> L22
        L41:
            int r3 = r3 + (-1)
            goto L2e
        L44:
            ug2 r0 = r6.I     // Catch: java.lang.Throwable -> L22
            java.lang.Object[] r2 = r0.n     // Catch: java.lang.Throwable -> L22
            int r0 = r0.p     // Catch: java.lang.Throwable -> L22
            r3 = 0
        L4b:
            if (r3 >= r0) goto L61
            r4 = r2[r3]     // Catch: java.lang.Throwable -> L22
            ev3 r4 = (defpackage.ev3) r4     // Catch: java.lang.Throwable -> L22
            wv2 r5 = r4.q     // Catch: java.lang.Throwable -> L22
            if (r8 != r5) goto L5e
            o20 r5 = r4.p     // Catch: java.lang.Throwable -> L22
            if (r5 == 0) goto L5e
            r4.p = r1     // Catch: java.lang.Throwable -> L22
            r5.g(r7)     // Catch: java.lang.Throwable -> L22
        L5e:
            int r3 = r3 + 1
            goto L4b
        L61:
            ug2 r6 = r6.I
            r6.h()
            return
        L67:
            ug2 r6 = r6.I
            r6.h()
            throw r7
        L6d:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fv3.G0(vv2, wv2):void");
    }

    public final void H0() {
        ir3 ir3Var = this.E;
        if (ir3Var != null) {
            ir3Var.u(new qd2("Pointer input was reset", 2));
            this.E = null;
        }
    }

    @Override // defpackage.cw2
    public final void Y() {
        H0();
    }

    @Override // defpackage.jr0
    public final void a() {
        H0();
    }

    @Override // defpackage.as0
    public final float b() {
        return w80.R(this).L.b();
    }

    @Override // defpackage.cw2
    public final void c0() {
        vv2 vv2Var = this.J;
        if (vv2Var == null) {
            return;
        }
        List list = vv2Var.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((zv2) list.get(i)).d) {
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    zv2 zv2Var = (zv2) list.get(i2);
                    long j = zv2Var.a;
                    long j2 = zv2Var.c;
                    long j3 = zv2Var.b;
                    float f = zv2Var.e;
                    boolean z = zv2Var.d;
                    arrayList.add(new zv2(j, j3, j2, false, f, j3, j2, z, z, zv2Var.i, 0L, 1.0f, 0L));
                }
                vv2 vv2Var2 = new vv2(arrayList, null);
                this.F = vv2Var2;
                G0(vv2Var2, wv2.n);
                G0(vv2Var2, wv2.o);
                G0(vv2Var2, wv2.p);
                this.J = null;
                return;
            }
        }
    }

    @Override // defpackage.as0
    public final float k() {
        return w80.R(this).L.k();
    }

    @Override // defpackage.md2
    public final void z0() {
        H0();
    }
}
