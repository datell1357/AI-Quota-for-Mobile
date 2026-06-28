package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class na3 implements jl3 {
    public final ci0 a;
    public final ci0 b;
    public final ci0 c;
    public final ci0 d;

    public na3(ci0 ci0Var, ci0 ci0Var2, ci0 ci0Var3, ci0 ci0Var4) {
        this.a = ci0Var;
        this.b = ci0Var2;
        this.c = ci0Var3;
        this.d = ci0Var4;
    }

    public static na3 b(na3 na3Var, ci0 ci0Var, ci0 ci0Var2, ci0 ci0Var3, ci0 ci0Var4, int i) {
        if ((i & 1) != 0) {
            ci0Var = na3Var.a;
        }
        if ((i & 2) != 0) {
            ci0Var2 = na3Var.b;
        }
        if ((i & 4) != 0) {
            ci0Var3 = na3Var.c;
        }
        if ((i & 8) != 0) {
            ci0Var4 = na3Var.d;
        }
        na3Var.getClass();
        return new na3(ci0Var, ci0Var2, ci0Var3, ci0Var4);
    }

    @Override // defpackage.jl3
    public final fl4 a(long j, hy1 hy1Var, as0 as0Var) {
        float fA = this.a.a(j, as0Var);
        float fA2 = this.b.a(j, as0Var);
        float fA3 = this.c.a(j, as0Var);
        float fA4 = this.d.a(j, as0Var);
        float fB = mn3.b(j);
        float f = fA + fA4;
        if (f > fB) {
            float f2 = fB / f;
            fA *= f2;
            fA4 *= f2;
        }
        float f3 = fA2 + fA3;
        if (f3 > fB) {
            float f4 = fB / f3;
            fA2 *= f4;
            fA3 *= f4;
        }
        if (fA < 0.0f || fA2 < 0.0f || fA3 < 0.0f || fA4 < 0.0f) {
            StringBuilder sbZ = di0.z("Corner size in Px can't be negative(topStart = ", fA, ", topEnd = ", fA2, ", bottomEnd = ");
            sbZ.append(fA3);
            sbZ.append(", bottomStart = ");
            sbZ.append(fA4);
            sbZ.append(")!");
            dr1.a(sbZ.toString());
        }
        if (fA + fA2 + fA3 + fA4 == 0.0f) {
            return new lr2(qn0.d(0L, j));
        }
        l33 l33VarD = qn0.d(0L, j);
        hy1 hy1Var2 = hy1.n;
        float f5 = hy1Var == hy1Var2 ? fA : fA2;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f5)) << 32) | (((long) Float.floatToRawIntBits(f5)) & 4294967295L);
        if (hy1Var == hy1Var2) {
            fA = fA2;
        }
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(fA)) & 4294967295L);
        float f6 = hy1Var == hy1Var2 ? fA3 : fA4;
        long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(f6)) << 32) | (((long) Float.floatToRawIntBits(f6)) & 4294967295L);
        if (hy1Var != hy1Var2) {
            fA4 = fA3;
        }
        return new mr2(new ka3(l33VarD.a, l33VarD.b, l33VarD.c, l33VarD.d, jFloatToRawIntBits, jFloatToRawIntBits2, jFloatToRawIntBits3, (((long) Float.floatToRawIntBits(fA4)) << 32) | (((long) Float.floatToRawIntBits(fA4)) & 4294967295L)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na3)) {
            return false;
        }
        na3 na3Var = (na3) obj;
        return nt1.g(this.a, na3Var.a) && nt1.g(this.b, na3Var.b) && nt1.g(this.c, na3Var.c) && nt1.g(this.d, na3Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RoundedCornerShape(topStart = " + this.a + ", topEnd = " + this.b + ", bottomEnd = " + this.c + ", bottomStart = " + this.d + ")";
    }
}
