package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class un3 implements bc0, Iterable, fx1 {
    public int o;
    public int q;
    public int r;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f362u;
    public HashMap w;
    public tf2 x;
    public int[] n = new int[0];
    public Object[] p = new Object[0];
    public final Object s = new Object();
    public ArrayList v = new ArrayList();

    public final int a(vf1 vf1Var) {
        if (this.t) {
            wb0.a("Use active SlotWriter to determine anchor location instead");
        }
        if (!vf1Var.a()) {
            ix2.a("Anchor refers to a group that was removed");
        }
        return vf1Var.a;
    }

    public final void d() {
        this.w = new HashMap();
    }

    public final tn3 e() {
        if (this.t) {
            k21.n("Cannot read while a writer is pending");
            return null;
        }
        this.r++;
        return new tn3(this);
    }

    public final xn3 f() {
        if (this.t) {
            wb0.a("Cannot start a writer when another writer is pending");
        }
        if (this.r > 0) {
            wb0.a("Cannot start a writer when a reader is pending");
        }
        this.t = true;
        this.f362u++;
        return new xn3(this);
    }

    public final boolean g(vf1 vf1Var) {
        int iE;
        return vf1Var.a() && (iE = wn3.e(this.v, vf1Var.a, this.o)) >= 0 && nt1.g(this.v.get(iE), vf1Var);
    }

    public final cg1 h(int i) {
        int i2;
        ArrayList arrayList;
        int iE;
        HashMap map = this.w;
        if (map != null) {
            if (this.t) {
                wb0.a("use active SlotWriter to crate an anchor for location instead");
            }
            vf1 vf1Var = (i < 0 || i >= (i2 = this.o) || (iE = wn3.e((arrayList = this.v), i, i2)) < 0) ? null : (vf1) arrayList.get(iE);
            if (vf1Var != null) {
                return (cg1) map.get(vf1Var);
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ni1(this, 0, this.o);
    }
}
