package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wm {
    public String a;
    public String b;
    public String c;
    public long d;
    public Long e;
    public boolean f;
    public rj0 g;
    public ik0 h;
    public hk0 i;
    public sj0 j;
    public List k;
    public int l;
    public byte m;

    public final xm a() {
        String str;
        String str2;
        rj0 rj0Var;
        if (this.m == 7 && (str = this.a) != null && (str2 = this.b) != null && (rj0Var = this.g) != null) {
            return new xm(str, str2, this.c, this.d, this.e, this.f, rj0Var, this.h, this.i, this.j, this.k, this.l);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" generator");
        }
        if (this.b == null) {
            sb.append(" identifier");
        }
        if ((this.m & 1) == 0) {
            sb.append(" startedAt");
        }
        if ((this.m & 2) == 0) {
            sb.append(" crashed");
        }
        if (this.g == null) {
            sb.append(" app");
        }
        if ((this.m & 4) == 0) {
            sb.append(" generatorType");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }
}
