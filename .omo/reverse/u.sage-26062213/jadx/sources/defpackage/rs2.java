package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class rs2 {
    public static final long a;
    public static final /* synthetic */ int b = 0;

    static {
        dy3[] dy3VarArr = cy3.b;
        a = cy3.c;
    }

    public static final qs2 a(qs2 qs2Var, int i, int i2, long j, gx3 gx3Var, mv2 mv2Var, i32 i32Var, int i3, int i4, sx3 sx3Var) {
        long j2;
        int i5 = i;
        int i6 = i2;
        long j3 = j;
        gx3 gx3Var2 = gx3Var;
        mv2 mv2Var2 = mv2Var;
        i32 i32Var2 = i32Var;
        int i7 = i3;
        int i8 = i4;
        sx3 sx3Var2 = sx3Var;
        if (i5 == 0 || i5 == qs2Var.a) {
            dy3[] dy3VarArr = cy3.b;
            if ((j3 & 1095216660480L) == 0) {
                j2 = 0;
            } else {
                j2 = 0;
                if (cy3.a(j3, qs2Var.c)) {
                }
            }
            if ((gx3Var2 == null || gx3Var2.equals(qs2Var.d)) && ((i6 == 0 || i6 == qs2Var.b) && ((mv2Var2 == null || mv2Var2.equals(qs2Var.e)) && ((i32Var2 == null || i32Var2.equals(qs2Var.f)) && ((i7 == 0 || i7 == qs2Var.g) && ((i8 == 0 || i8 == qs2Var.h) && (sx3Var2 == null || sx3Var2.equals(qs2Var.i)))))))) {
                return qs2Var;
            }
        } else {
            j2 = 0;
        }
        dy3[] dy3VarArr2 = cy3.b;
        if ((j3 & 1095216660480L) == j2) {
            j3 = qs2Var.c;
        }
        if (gx3Var2 == null) {
            gx3Var2 = qs2Var.d;
        }
        if (i5 == 0) {
            i5 = qs2Var.a;
        }
        if (i6 == 0) {
            i6 = qs2Var.b;
        }
        mv2 mv2Var3 = qs2Var.e;
        if (mv2Var3 != null && mv2Var2 == null) {
            mv2Var2 = mv2Var3;
        }
        if (i32Var2 == null) {
            i32Var2 = qs2Var.f;
        }
        if (i7 == 0) {
            i7 = qs2Var.g;
        }
        if (i8 == 0) {
            i8 = qs2Var.h;
        }
        if (sx3Var2 == null) {
            sx3Var2 = qs2Var.i;
        }
        return new qs2(i5, i6, j3, gx3Var2, mv2Var2, i32Var2, i7, i8, sx3Var2);
    }
}
