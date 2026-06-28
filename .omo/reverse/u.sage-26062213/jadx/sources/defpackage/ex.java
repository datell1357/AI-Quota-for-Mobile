package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ex extends rd2 {
    public final float b;
    public final sp3 c;
    public final jl3 d;

    public ex(float f, sp3 sp3Var, jl3 jl3Var) {
        this.b = f;
        this.c = sp3Var;
        this.d = jl3Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new dx(this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ex)) {
            return false;
        }
        ex exVar = (ex) obj;
        return cw0.b(this.b, exVar.b) && this.c.equals(exVar.c) && nt1.g(this.d, exVar.d);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        dx dxVar = (dx) md2Var;
        float f = dxVar.E;
        q00 q00Var = dxVar.H;
        float f2 = this.b;
        if (!cw0.b(f, f2)) {
            dxVar.E = f2;
            q00Var.G0();
        }
        sp3 sp3Var = dxVar.F;
        sp3 sp3Var2 = this.c;
        if (!nt1.g(sp3Var, sp3Var2)) {
            dxVar.F = sp3Var2;
            q00Var.G0();
        }
        jl3 jl3Var = dxVar.G;
        jl3 jl3Var2 = this.d;
        if (nt1.g(jl3Var, jl3Var2)) {
            return;
        }
        dxVar.G = jl3Var2;
        q00Var.G0();
        w80.A(dxVar);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + (Float.hashCode(this.b) * 31)) * 31);
    }

    public final String toString() {
        return "BorderModifierNodeElement(width=" + cw0.c(this.b) + ", brush=" + this.c + ", shape=" + this.d + ")";
    }
}
