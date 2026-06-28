package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bw2 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final boolean e;
    public final float f;
    public final int g;
    public final boolean h;
    public final ArrayList i;
    public final long j;
    public final float k;
    public final long l;
    public final long m;

    public bw2(long j, long j2, long j3, long j4, boolean z, float f, int i, boolean z2, ArrayList arrayList, long j5, float f2, long j6, long j7) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = z;
        this.f = f;
        this.g = i;
        this.h = z2;
        this.i = arrayList;
        this.j = j5;
        this.k = f2;
        this.l = j6;
        this.m = j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bw2)) {
            return false;
        }
        bw2 bw2Var = (bw2) obj;
        return qj0.G(this.a, bw2Var.a) && this.b == bw2Var.b && go2.b(this.c, bw2Var.c) && go2.b(this.d, bw2Var.d) && this.e == bw2Var.e && Float.compare(this.f, bw2Var.f) == 0 && this.g == bw2Var.g && this.h == bw2Var.h && this.i.equals(bw2Var.i) && go2.b(this.j, bw2Var.j) && Float.compare(this.k, bw2Var.k) == 0 && go2.b(this.l, bw2Var.l) && go2.b(this.m, bw2Var.m);
    }

    public final int hashCode() {
        return Long.hashCode(this.m) + xw1.l(di0.l(this.k, xw1.l((this.i.hashCode() + xw1.n(xw1.j(this.g, di0.l(this.f, xw1.n(xw1.l(xw1.l(xw1.l(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), this.e, 31), 31), 31), this.h, 31)) * 31, 31, this.j), 31), 31, this.l);
    }

    public final String toString() {
        String strA0 = qj0.a0(this.a);
        String strG = go2.g(this.c);
        String strG2 = go2.g(this.d);
        String strA = hw2.a(this.g);
        String strG3 = go2.g(this.j);
        String strG4 = go2.g(this.l);
        String strG5 = go2.g(this.m);
        StringBuilder sb = new StringBuilder("PointerInputEventData(id=");
        sb.append(strA0);
        sb.append(", uptime=");
        sb.append(this.b);
        di0.E(sb, ", positionOnScreen=", strG, ", position=", strG2);
        sb.append(", down=");
        sb.append(this.e);
        sb.append(", pressure=");
        sb.append(this.f);
        sb.append(", type=");
        sb.append(strA);
        sb.append(", activeHover=");
        sb.append(this.h);
        sb.append(", historical=");
        sb.append(this.i);
        sb.append(", scrollDelta=");
        sb.append(strG3);
        sb.append(", scaleGestureFactor=");
        sb.append(this.k);
        sb.append(", panGestureOffset=");
        sb.append(strG4);
        return di0.y(sb, ", originalEventPosition=", strG5, ")");
    }
}
