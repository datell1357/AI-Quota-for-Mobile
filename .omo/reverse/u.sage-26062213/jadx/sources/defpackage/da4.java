package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class da4 extends fa4 implements Iterable, fx1 {
    public final String n;
    public final float o;
    public final float p;
    public final float q;
    public final float r;
    public final float s;
    public final float t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f67u;
    public final List v;
    public final List w;

    public da4(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list, ArrayList arrayList) {
        this.n = str;
        this.o = f;
        this.p = f2;
        this.q = f3;
        this.r = f4;
        this.s = f5;
        this.t = f6;
        this.f67u = f7;
        this.v = list;
        this.w = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof da4)) {
            da4 da4Var = (da4) obj;
            return nt1.g(this.n, da4Var.n) && this.o == da4Var.o && this.p == da4Var.p && this.q == da4Var.q && this.r == da4Var.r && this.s == da4Var.s && this.t == da4Var.t && this.f67u == da4Var.f67u && nt1.g(this.v, da4Var.v) && nt1.g(this.w, da4Var.w);
        }
        return false;
    }

    public final int hashCode() {
        return this.w.hashCode() + ((this.v.hashCode() + di0.l(this.f67u, di0.l(this.t, di0.l(this.s, di0.l(this.r, di0.l(this.q, di0.l(this.p, di0.l(this.o, this.n.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new pu2(this);
    }
}
