package defpackage;

import android.os.Build;
import android.view.autofill.AutofillValue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vz3 extends e60 {
    public boolean Y;
    public pe1 Z;
    public final vc3 a0;

    public vz3(boolean z, vf2 vf2Var, boolean z2, q93 q93Var, pe1 pe1Var) {
        super(new ys0(pe1Var, z, 2), null, vf2Var, q93Var, false, z2);
        this.Y = z;
        this.Z = pe1Var;
        this.a0 = new vc3(10, this);
    }

    @Override // defpackage.e60
    public final void J0(ph3 ph3Var) {
        wz3 wz3Var = this.Y ? wz3.n : wz3.o;
        kx1[] kx1VarArr = nh3.a;
        oh3 oh3Var = lh3.I;
        kx1[] kx1VarArr2 = nh3.a;
        kx1 kx1Var = kx1VarArr2[26];
        ph3Var.a(oh3Var, wz3Var);
        ia iaVar = mj1.H;
        oh3 oh3Var2 = lh3.s;
        kx1 kx1Var2 = kx1VarArr2[9];
        ph3Var.a(oh3Var2, iaVar);
        za zaVar = Build.VERSION.SDK_INT >= 26 ? new za(AutofillValue.forToggle(this.Y)) : null;
        if (zaVar != null) {
            oh3 oh3Var3 = lh3.t;
            kx1 kx1Var3 = kx1VarArr2[10];
            ph3Var.a(oh3Var3, zaVar);
        }
        ph3Var.a(ah3.h, new o2(null, new p40(ph3Var, 1)));
    }
}
