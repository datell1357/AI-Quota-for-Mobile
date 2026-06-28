package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lf3 implements xf3 {
    public static final xh1 k = new xh1(new ed3(18), new jd3(4));
    public final ts2 a;
    public float g;
    public final os0 i;
    public final os0 j;
    public final ts2 b = new ts2(0);
    public final ts2 c = new ts2(0);
    public final ws2 d = ca.A(Boolean.FALSE);
    public final vf2 e = new vf2();
    public final ts2 f = new ts2(Api.BaseClientBuilder.API_PRIORITY_OTHER);
    public final hg h = new hg(new v(28, this));

    public lf3(int i) {
        this.a = new ts2(i);
        final int i2 = 0;
        this.i = ca.m(new ne1(this) { // from class: kf3
            public final /* synthetic */ lf3 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i3 = i2;
                lf3 lf3Var = this.o;
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(lf3Var.a.g() < lf3Var.f.g());
                    default:
                        return Boolean.valueOf(lf3Var.a.g() > 0);
                }
            }
        });
        final int i3 = 1;
        this.j = ca.m(new ne1(this) { // from class: kf3
            public final /* synthetic */ lf3 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() {
                int i32 = i3;
                lf3 lf3Var = this.o;
                switch (i32) {
                    case 0:
                        return Boolean.valueOf(lf3Var.a.g() < lf3Var.f.g());
                    default:
                        return Boolean.valueOf(lf3Var.a.g() > 0);
                }
            }
        });
    }

    @Override // defpackage.xf3
    public final boolean c() {
        return ((Boolean) this.j.getValue()).booleanValue();
    }

    @Override // defpackage.xf3
    public final boolean e() {
        return this.h.e();
    }

    @Override // defpackage.xf3
    public final Object f(xg2 xg2Var, df1 df1Var, fh0 fh0Var) {
        Object objF = this.h.f(xg2Var, df1Var, fh0Var);
        return objF == ri0.n ? objF : t64.a;
    }

    @Override // defpackage.xf3
    public final boolean i() {
        return ((Boolean) this.i.getValue()).booleanValue();
    }

    @Override // defpackage.xf3
    public final float j(float f) {
        return this.h.j(f);
    }
}
