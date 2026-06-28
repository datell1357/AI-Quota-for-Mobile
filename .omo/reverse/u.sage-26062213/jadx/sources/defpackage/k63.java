package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k63 {
    public final cn1 a;
    public final String b;
    public final kj1 c;
    public final q63 d;
    public final mj1 e;
    public p00 f;

    public k63(rp rpVar) {
        cn1 cn1Var = (cn1) rpVar.b;
        if (cn1Var == null) {
            k21.n("url == null");
            throw null;
        }
        this.a = cn1Var;
        this.b = (String) rpVar.c;
        this.c = ((dh1) rpVar.d).m();
        this.d = (q63) rpVar.e;
        this.e = (mj1) rpVar.f;
    }

    public final rp a() {
        rp rpVar = new rp(false);
        rpVar.b = this.a;
        rpVar.c = this.b;
        rpVar.e = this.d;
        rpVar.f = this.e;
        rpVar.d = this.c.e();
        return rpVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.a);
        kj1 kj1Var = this.c;
        if (kj1Var.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Object obj : kj1Var) {
                int i2 = i + 1;
                if (i < 0) {
                    tv4.S();
                    throw null;
                }
                js2 js2Var = (js2) obj;
                String str = (String) js2Var.n;
                String str2 = (String) js2Var.o;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (fi4.i(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i = i2;
            }
            sb.append(']');
        }
        mj1 mj1Var = mj1.R;
        mj1 mj1Var2 = this.e;
        if (!nt1.g(mj1Var2, mj1Var)) {
            sb.append(", tags=");
            sb.append(mj1Var2);
        }
        sb.append('}');
        return sb.toString();
    }
}
