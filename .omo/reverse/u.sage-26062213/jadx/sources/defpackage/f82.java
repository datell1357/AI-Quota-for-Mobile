package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f82 implements as0 {
    public boolean n;
    public long o = 9223372034707292159L;
    public long p = 0;
    public final /* synthetic */ k82 q;

    public f82(k82 k82Var) {
        this.q = k82Var;
    }

    public final gy1 a() {
        this.n = true;
        k82 k82Var = this.q;
        gy1 gy1VarO0 = k82Var.o0();
        if (js1.a(this.o, 9223372034707292159L)) {
            this.o = ca.G(gy1VarO0.a(0L));
            this.p = gy1VarO0.I();
        }
        k82Var.u0().T.b();
        return gy1VarO0;
    }

    @Override // defpackage.as0
    public final float b() {
        return this.q.b();
    }

    public final void c(ek1 ek1Var, float f) {
        k82 k82Var = this.q;
        gg ggVar = k82Var.D;
        if (ggVar == null) {
            ggVar = new gg();
            k82Var.D = ggVar;
        }
        int iA0 = ji.a0((ek1[]) ggVar.b, ek1Var);
        if (iA0 >= 0) {
            float[] fArr = (float[]) ggVar.c;
            if (fArr[iA0] != f) {
                fArr[iA0] = f;
                ((byte[]) ggVar.d)[iA0] = 1;
                return;
            } else {
                byte[] bArr = (byte[]) ggVar.d;
                if (bArr[iA0] == 2) {
                    bArr[iA0] = 0;
                    return;
                }
                return;
            }
        }
        int i = ggVar.a;
        ek1[] ek1VarArr = (ek1[]) ggVar.b;
        if (i == ek1VarArr.length) {
            int i2 = i * 2;
            ggVar.b = (ek1[]) Arrays.copyOf(ek1VarArr, i2);
            ggVar.c = Arrays.copyOf((float[]) ggVar.c, i2);
            ggVar.d = Arrays.copyOf((byte[]) ggVar.d, i2);
        }
        ((ek1[]) ggVar.b)[i] = ek1Var;
        ((byte[]) ggVar.d)[i] = 3;
        ((float[]) ggVar.c)[i] = f;
        ggVar.a++;
    }

    @Override // defpackage.as0
    public final float k() {
        return this.q.k();
    }
}
