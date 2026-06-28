package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uv1 extends n44 {
    public final vi2 g;
    public final b21 h;

    public uv1(vi2 vi2Var, fv1 fv1Var) {
        fv1Var.getClass();
        this.g = vi2Var;
        this.h = fv1Var.b;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final long b() {
        vi2 vi2Var = this.g;
        String strJ = vi2Var.j();
        try {
            strJ.getClass();
            s54 s54VarN0 = n44.N0(strJ);
            if (s54VarN0 != null) {
                return s54VarN0.n;
            }
            gt3.t0(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            vi2.l(vi2Var, "Failed to parse type 'ULong' for input '" + strJ + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.xb0
    public final int h(gi3 gi3Var) {
        gi3Var.getClass();
        throw new IllegalStateException("unsupported");
    }

    @Override // defpackage.n44, defpackage.vn0
    public final int n() {
        vi2 vi2Var = this.g;
        String strJ = vi2Var.j();
        try {
            strJ.getClass();
            n54 n54VarM0 = n44.M0(strJ);
            if (n54VarM0 != null) {
                return n54VarM0.n;
            }
            gt3.t0(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            vi2.l(vi2Var, "Failed to parse type 'UInt' for input '" + strJ + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.xb0
    public final b21 q() {
        return this.h;
    }

    @Override // defpackage.n44, defpackage.vn0
    public final byte s() {
        i54 i54Var;
        vi2 vi2Var = this.g;
        String strJ = vi2Var.j();
        try {
            strJ.getClass();
            n54 n54VarM0 = n44.M0(strJ);
            if (n54VarM0 != null) {
                int i = n54VarM0.n;
                i54Var = Integer.compare(Integer.MIN_VALUE ^ i, -2147483393) > 0 ? null : new i54((byte) i);
            }
            if (i54Var != null) {
                return i54Var.n;
            }
            gt3.t0(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            vi2.l(vi2Var, "Failed to parse type 'UByte' for input '" + strJ + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.n44, defpackage.vn0
    public final short w() {
        b64 b64Var;
        vi2 vi2Var = this.g;
        String strJ = vi2Var.j();
        try {
            strJ.getClass();
            n54 n54VarM0 = n44.M0(strJ);
            if (n54VarM0 != null) {
                int i = n54VarM0.n;
                b64Var = Integer.compare(Integer.MIN_VALUE ^ i, -2147418113) > 0 ? null : new b64((short) i);
            }
            if (b64Var != null) {
                return b64Var.n;
            }
            gt3.t0(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            vi2.l(vi2Var, "Failed to parse type 'UShort' for input '" + strJ + '\'', 0, null, 6);
            throw null;
        }
    }
}
