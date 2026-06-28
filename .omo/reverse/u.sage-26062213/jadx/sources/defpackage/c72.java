package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class c72 {
    public static final lc0 a = new lc0(new t52(6));

    public static cc4 a(ag1 ag1Var) {
        cc4 cc4VarY = (cc4) ag1Var.j(a);
        if (cc4VarY == null) {
            ag1Var.W(1260197608);
            cc4VarY = kt4.y((View) ag1Var.j(ea.f));
        } else {
            ag1Var.W(1260196492);
        }
        ag1Var.p(false);
        return cc4VarY;
    }
}
