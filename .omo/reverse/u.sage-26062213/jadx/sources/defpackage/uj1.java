package defpackage;

import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uj1 implements ap2 {
    public final /* synthetic */ MainActivity a;

    public uj1(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    @Override // defpackage.ap2
    public final void a(u90 u90Var) {
        MainActivity mainActivity = this.a;
        if (mainActivity.p) {
            return;
        }
        mainActivity.p = true;
        vl0 vl0Var = ((ql0) ((k92) mainActivity.a())).a;
        mainActivity.f348u = (v50) vl0Var.j.get();
        mainActivity.v = (yh0) vl0Var.k.get();
        mainActivity.w = (pf) vl0Var.l.get();
        mainActivity.x = (jg1) vl0Var.m.get();
        mainActivity.y = (i70) vl0Var.n.get();
        mainActivity.z = (n8) vl0Var.c.get();
        mainActivity.A = (ri3) vl0Var.d.get();
    }
}
