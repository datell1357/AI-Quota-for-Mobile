package defpackage;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ai2 {
    public final yh2 a;
    public final qi2 b;
    public final Bundle c;
    public g22 d;
    public final ji2 e;
    public final String f;
    public final Bundle g;
    public final wc3 h;
    public boolean i;
    public final r22 j;
    public g22 k;
    public final zc3 l;
    public final nv3 m;

    public ai2(yh2 yh2Var) {
        this.a = yh2Var;
        this.b = yh2Var.o;
        this.c = yh2Var.p;
        this.d = yh2Var.q;
        this.e = yh2Var.r;
        this.f = yh2Var.s;
        this.g = yh2Var.t;
        this.h = new wc3(new xc3(yh2Var, new vc3(0, yh2Var)));
        nv3 nv3Var = new nv3(new t52(9));
        this.j = new r22(yh2Var, true);
        this.k = g22.o;
        this.l = (zc3) nv3Var.getValue();
        this.m = new nv3(new t52(10));
    }

    public final Bundle a() {
        Bundle bundle = this.c;
        if (bundle == null) {
            return null;
        }
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        bundleX.putAll(bundle);
        return bundleX;
    }

    public final void b() {
        if (!this.i) {
            wc3 wc3Var = this.h;
            wc3Var.a();
            this.i = true;
            if (this.e != null) {
                pc3.b(this.a);
            }
            wc3Var.b(this.g);
        }
        int iOrdinal = this.d.ordinal();
        int iOrdinal2 = this.k.ordinal();
        r22 r22Var = this.j;
        if (iOrdinal < iOrdinal2) {
            r22Var.g(this.d);
        } else {
            r22Var.g(this.k);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(y33.a(yh2.class).c());
        sb.append("(" + this.f + ')');
        sb.append(" destination=");
        sb.append(this.b);
        return sb.toString();
    }
}
