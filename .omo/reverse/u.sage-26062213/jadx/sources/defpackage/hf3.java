package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hf3 extends md2 implements oy1, eh3 {
    public lf3 B;
    public boolean C;

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        if (this.C) {
            i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return ya2Var.K(i);
    }

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        nh3.e(ph3Var);
        final int i = 0;
        final int i2 = 1;
        ye3 ye3Var = new ye3(new ne1(this) { // from class: gf3
            public final /* synthetic */ hf3 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int iG;
                int i3 = i;
                hf3 hf3Var = this.o;
                switch (i3) {
                    case 0:
                        iG = hf3Var.B.a.g();
                        break;
                    default:
                        iG = hf3Var.B.f.g();
                        break;
                }
                return Float.valueOf(iG);
            }
        }, new ne1(this) { // from class: gf3
            public final /* synthetic */ hf3 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int iG;
                int i3 = i2;
                hf3 hf3Var = this.o;
                switch (i3) {
                    case 0:
                        iG = hf3Var.B.a.g();
                        break;
                    default:
                        iG = hf3Var.B.f.g();
                        break;
                }
                return Float.valueOf(iG);
            }
        });
        if (this.C) {
            oh3 oh3Var = lh3.w;
            kx1 kx1Var = nh3.a[13];
            ph3Var.a(oh3Var, ye3Var);
        } else {
            oh3 oh3Var2 = lh3.v;
            kx1 kx1Var2 = nh3.a[12];
            ph3Var.a(oh3Var2, ye3Var);
        }
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        if (this.C) {
            i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return ya2Var.R(i);
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        dm0.p(j, this.C ? hr2.n : hr2.o);
        boolean z = this.C;
        int iH = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int iG = z ? Integer.MAX_VALUE : mf0.g(j);
        if (this.C) {
            iH = mf0.h(j);
        }
        dv2 dv2VarE = ya2Var.e(mf0.a(j, 0, iH, 0, iG, 5));
        int i = dv2VarE.n;
        int iH2 = mf0.h(j);
        if (i > iH2) {
            i = iH2;
        }
        int i2 = dv2VarE.o;
        int iG2 = mf0.g(j);
        if (i2 > iG2) {
            i2 = iG2;
        }
        int i3 = dv2VarE.o - i2;
        int i4 = dv2VarE.n - i;
        if (!this.C) {
            i3 = i4;
        }
        lf3 lf3Var = this.B;
        ts2 ts2Var = lf3Var.f;
        ts2 ts2Var2 = lf3Var.a;
        ts2Var.h(i3);
        po3 po3VarX = k75.x();
        pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
        po3 po3VarE = k75.E(po3VarX);
        try {
            if (ts2Var2.g() > i3) {
                ts2Var2.h(i3);
            }
            k75.L(po3VarX, po3VarE, pe1VarE);
            this.B.b.h(this.C ? i2 : i);
            this.B.c.h(this.C ? dv2VarE.o : dv2VarE.n);
            this.B.d.setValue(Boolean.FALSE);
            return gb2Var.e0(i, i2, h01.n, new b33(i3, 1, this, dv2VarE));
        } catch (Throwable th) {
            k75.L(po3VarX, po3VarE, pe1VarE);
            throw th;
        }
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        if (!this.C) {
            i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return ya2Var.g(i);
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        if (!this.C) {
            i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return ya2Var.T(i);
    }
}
