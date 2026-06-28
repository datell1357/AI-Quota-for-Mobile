package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jg0 extends rd2 {
    public final jo1 b;
    public final o23 c;
    public final si d;
    public final pe1 e;
    public final cw f;
    public final mg0 g;
    public final cj h;

    public jg0(jo1 jo1Var, o23 o23Var, si siVar, pe1 pe1Var, cw cwVar, mg0 mg0Var, cj cjVar) {
        this.b = jo1Var;
        this.c = o23Var;
        this.d = siVar;
        this.e = pe1Var;
        this.f = cwVar;
        this.g = mg0Var;
        this.h = cjVar;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        si siVar = this.d;
        o23 o23Var = this.c;
        jo1 jo1Var = this.b;
        ti tiVar = new ti(o23Var, jo1Var, siVar);
        zi ziVar = new zi(tiVar);
        ziVar.z = this.e;
        mg0 mg0Var = this.g;
        ziVar.A = mg0Var;
        ziVar.B = 1;
        ziVar.C = this.h;
        ziVar.n(tiVar);
        qn3 qn3Var = jo1Var.o;
        return new kg0(ziVar, this.f, mg0Var, qn3Var instanceof pf0 ? (pf0) qn3Var : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof jg0) {
            jg0 jg0Var = (jg0) obj;
            if (this.b.equals(jg0Var.b) && this.c == jg0Var.c && nt1.g(this.d, jg0Var.d) && nt1.g(this.e, jg0Var.e) && nt1.g(this.f, jg0Var.f) && nt1.g(this.g, jg0Var.g) && Float.compare(1.0f, 1.0f) == 0 && nt1.g(this.h, jg0Var.h)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        kg0 kg0Var = (kg0) md2Var;
        long jH = kg0Var.H.h();
        pf0 pf0Var = kg0Var.G;
        si siVar = this.d;
        o23 o23Var = this.c;
        jo1 jo1Var = this.b;
        ti tiVar = new ti(o23Var, jo1Var, siVar);
        zi ziVar = kg0Var.H;
        ziVar.z = this.e;
        mg0 mg0Var = this.g;
        ziVar.A = mg0Var;
        ziVar.B = 1;
        ziVar.C = this.h;
        ziVar.n(tiVar);
        boolean zA = mn3.a(jH, ziVar.h());
        kg0Var.B = this.f;
        qn3 qn3Var = jo1Var.o;
        kg0Var.G = qn3Var instanceof pf0 ? (pf0) qn3Var : null;
        kg0Var.C = mg0Var;
        kg0Var.D = 1.0f;
        kg0Var.E = true;
        if (!nt1.g(kg0Var.F, "Profile picture")) {
            kg0Var.F = "Profile picture";
            w80.A(kg0Var);
        }
        boolean zG = nt1.g(pf0Var, kg0Var.G);
        if (!zA || !zG) {
            ca.u(kg0Var);
        }
        kt4.Q(kg0Var);
    }

    public final int hashCode() {
        int iN = xw1.n(di0.l(1.0f, (this.g.hashCode() + ((this.f.hashCode() + xw1.j(1, (this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31)) * 961, 31)) * 31)) * 31, 961), true, 31);
        return ((iN + (this.h == null ? 0 : r5.hashCode())) * 31) - 1637121689;
    }

    public final String toString() {
        return "ContentPainterElement(request=" + this.b + ", imageLoader=" + this.c + ", modelEqualityDelegate=" + this.d + ", transform=" + this.e + ", onState=null, filterQuality=Low, alignment=" + this.f + ", contentScale=" + this.g + ", alpha=1.0, colorFilter=null, clipToBounds=true, previewHandler=" + this.h + ", contentDescription=Profile picture)";
    }
}
