package defpackage;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m25 {
    public Long A;
    public long B;
    public String C;
    public int D;
    public int E;
    public long F;
    public String G;
    public byte[] H;
    public int I;
    public long J;
    public long K;
    public long L;
    public long M;
    public long N;
    public long O;
    public long P;
    public String Q;
    public boolean R;
    public long S;
    public long T;
    public final r45 a;
    public final String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public long g;
    public long h;
    public long i;
    public String j;
    public long k;
    public String l;
    public long m;
    public long n;
    public boolean o;
    public boolean p;
    public Boolean q;
    public long r;
    public ArrayList s;
    public String t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f197u;
    public long v;
    public long w;
    public int x;
    public boolean y;
    public Long z;

    public m25(r45 r45Var, String str) {
        Preconditions.checkNotNull(r45Var);
        Preconditions.checkNotEmpty(str);
        this.a = r45Var;
        this.b = str;
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.v();
    }

    public final void A(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.v != j;
        this.v = j;
    }

    public final void B(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.w != j;
        this.w = j;
    }

    public final void C(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.B != j;
        this.B = j;
    }

    public final String D() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.C;
    }

    public final String E() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.b;
    }

    public final String F() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.c;
    }

    public final void G(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= !Objects.equals(this.c, str);
        this.c = str;
    }

    public final String H() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.d;
    }

    public final void I(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.R |= true ^ Objects.equals(this.d, str);
        this.d = str;
    }

    public final void J(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= !Objects.equals(this.e, str);
        this.e = str;
    }

    public final String K() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.f;
    }

    public final void L(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= !Objects.equals(this.f, str);
        this.f = str;
    }

    public final void M(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.h != j;
        this.h = j;
    }

    public final void N(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.i != j;
        this.i = j;
    }

    public final String O() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.j;
    }

    public final void P(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= !Objects.equals(this.j, str);
        this.j = str;
    }

    public final long Q() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.k;
    }

    public final void R(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.k != j;
        this.k = j;
    }

    public final void S(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= !Objects.equals(this.l, str);
        this.l = str;
    }

    public final void T(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.m != j;
        this.m = j;
    }

    public final void a(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.n != j;
        this.n = j;
    }

    public final long b() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.r;
    }

    public final void c(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.r != j;
        this.r = j;
    }

    public final void d(boolean z) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.o != z;
        this.o = z;
    }

    public final void e(long j) {
        Preconditions.checkArgument(j >= 0);
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.g != j;
        this.g = j;
    }

    public final void f(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.S != j;
        this.S = j;
    }

    public final void g(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.T != j;
        this.T = j;
    }

    public final void h(long j) {
        r45 r45Var = this.a;
        j45 j45Var = r45Var.g;
        a25 a25Var = r45Var.f;
        r45.l(j45Var);
        j45Var.v();
        long j2 = this.g + j;
        String str = this.b;
        if (j2 > 2147483647L) {
            r45.l(a25Var);
            a25Var.i.b(a25.D(str), "Bundle index overflow. appId");
            j2 = (-1) + j;
        }
        long j3 = this.F + 1;
        if (j3 > 2147483647L) {
            r45.l(a25Var);
            a25Var.i.b(a25.D(str), "Delivery index overflow. appId");
            j3 = 0;
        }
        this.R = true;
        this.g = j2;
        this.F = j3;
    }

    public final void i(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.K != j;
        this.K = j;
    }

    public final void j(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.L != j;
        this.L = j;
    }

    public final void k(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.M != j;
        this.M = j;
    }

    public final void l(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.N != j;
        this.N = j;
    }

    public final void m(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.P != j;
        this.P = j;
    }

    public final void n(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.O != j;
        this.O = j;
    }

    public final boolean o() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.R;
    }

    public final void p(int i) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.D != i;
        this.D = i;
    }

    public final void q(int i) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.E != i;
        this.E = i;
    }

    public final void r(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.F != j;
        this.F = j;
    }

    public final String s() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.G;
    }

    public final int t() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.I;
    }

    public final void u(long j) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= this.J != j;
        this.J = j;
    }

    public final String v() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        String str = this.Q;
        w(null);
        return str;
    }

    public final void w(String str) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        this.R |= !Objects.equals(this.Q, str);
        this.Q = str;
    }

    public final Boolean x() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.q;
    }

    public final void y(List list) {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        if (Objects.equals(this.s, list)) {
            return;
        }
        this.R = true;
        this.s = list != null ? new ArrayList(list) : null;
    }

    public final boolean z() {
        j45 j45Var = this.a.g;
        r45.l(j45Var);
        j45Var.v();
        return this.f197u;
    }
}
