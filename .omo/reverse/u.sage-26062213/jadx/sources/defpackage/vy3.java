package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vy3 {
    public final int a;
    public final long b;
    public final long c;
    public final md2 d;
    public final pe1 e;
    public vy3 f;
    public long g;
    public long h;
    public long i = Long.MIN_VALUE;
    public long j = -1;
    public final /* synthetic */ wy3 k;

    public vy3(wy3 wy3Var, int i, long j, long j2, md2 md2Var, pe1 pe1Var) {
        this.k = wy3Var;
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = md2Var;
        this.e = pe1Var;
    }

    public final void a(long j, long j2, long j3, long j4, float[] fArr) {
        i53 i53Var;
        i53 i53Var2;
        long j5 = this.k.f;
        md2 md2Var = this.d;
        mm2 mm2VarP = w80.P(md2Var, 2);
        xy1 xy1VarR = w80.R(md2Var);
        boolean zI = xy1VarR.I();
        bo boVar = xy1VarR.S;
        if (zI) {
            if (((mm2) boVar.e) != mm2VarP) {
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((int) (j & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits((int) (j >> 32)) << 32);
                long j6 = mm2VarP.p;
                mm2 mm2Var = (mm2) boVar.e;
                mm2Var.getClass();
                long jG = ca.G(mm2Var.F(mm2VarP, jFloatToRawIntBits));
                i53Var = new i53(jG, (4294967295L & ((long) (((int) (jG & 4294967295L)) + ((int) (j6 & 4294967295L))))) | (((long) (((int) (jG >> 32)) + ((int) (j6 >> 32)))) << 32), j3, j4, j5, fArr, md2Var);
            } else {
                i53Var = new i53(j, j2, j3, j4, j5, fArr, md2Var);
            }
            i53Var2 = i53Var;
        } else {
            i53Var2 = null;
        }
        if (i53Var2 == null) {
            return;
        }
        this.e.k(i53Var2);
    }

    public final void b() {
        wy3 wy3Var = this.k;
        tf2 tf2Var = wy3Var.a;
        int i = this.a;
        vy3 vy3Var = (vy3) tf2Var.g(i);
        if (vy3Var != null) {
            if (vy3Var == this) {
                vy3 vy3Var2 = this.f;
                this.f = null;
                if (vy3Var2 != null) {
                    int iD = tf2Var.d(i);
                    Object[] objArr = tf2Var.c;
                    Object obj = objArr[iD];
                    tf2Var.b[iD] = i;
                    objArr[iD] = vy3Var2;
                    return;
                }
                xy1 xy1VarR = w80.R(this.d.n);
                if (xy1VarR.H()) {
                    n33 rectManager = ((q9) az1.a(xy1VarR)).getRectManager();
                    rectManager.getClass();
                    if (xy1VarR.t != -4) {
                        hb hbVar = rectManager.c;
                        int iE = rectManager.e(xy1VarR);
                        long[] jArr = (long[]) hbVar.c;
                        int i2 = iE + 2;
                        jArr[i2] = jArr[i2] & 8070450532247928831L;
                        return;
                    }
                    return;
                }
                return;
            }
            int iD2 = tf2Var.d(i);
            Object[] objArr2 = tf2Var.c;
            Object obj2 = objArr2[iD2];
            tf2Var.b[iD2] = i;
            objArr2[iD2] = vy3Var;
            while (true) {
                vy3 vy3Var3 = vy3Var.f;
                if (vy3Var3 == null) {
                    break;
                }
                if (vy3Var3 == this) {
                    vy3Var.f = this.f;
                    this.f = null;
                    return;
                }
                vy3Var = vy3Var3;
            }
        }
        vy3 vy3Var4 = wy3Var.b;
        if (vy3Var4 == this) {
            wy3Var.b = vy3Var4.f;
            this.f = null;
            return;
        }
        vy3 vy3Var5 = vy3Var4 != null ? vy3Var4.f : null;
        while (true) {
            vy3 vy3Var6 = vy3Var4;
            vy3Var4 = vy3Var5;
            if (vy3Var4 == null) {
                return;
            }
            if (vy3Var4 == this) {
                if (vy3Var6 != null) {
                    vy3Var6.f = vy3Var4.f;
                }
                this.f = null;
                return;
            }
            vy3Var5 = vy3Var4.f;
        }
    }
}
