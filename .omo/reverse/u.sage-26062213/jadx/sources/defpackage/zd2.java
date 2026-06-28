package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.provider.Settings;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zd2 implements yd2 {
    public final Context n;
    public bh0 o;
    public final ss2 p = new ss2(1.0f);
    public ir3 q;

    public zd2(Context context) {
        this.n = context;
    }

    @Override // defpackage.hi0
    public final hi0 F(hi0 hi0Var) {
        return ca.B(this, hi0Var);
    }

    @Override // defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        return ca.r(this, gi0Var);
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    @Override // defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        return ca.z(this, gi0Var);
    }

    @Override // defpackage.yd2
    public final float Z() {
        dh0 dh0Var;
        ur3 ur3Var;
        if (this.q == null) {
            Context context = this.n;
            kg2 kg2Var = jf4.a;
            synchronized (kg2Var) {
                try {
                    Object objG = kg2Var.g(context);
                    dh0Var = null;
                    if (objG == null) {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                        zy zyVarC = ix.c(-1, 6, null);
                        mt mtVar = new mt(3, new u01(contentResolver, uriFor, new if4(zyVarC, w80.p(Looper.getMainLooper())), zyVarC, context, null));
                        bu3 bu3VarF = k30.f();
                        zp0 zp0Var = zu0.a;
                        objG = qj0.Y(mtVar, new bh0(ca.B(bu3VarF, n92.a)), new rr3(0L, Long.MAX_VALUE), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                        kg2Var.m(context, objG);
                    }
                    ur3Var = (ur3) objG;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.p.h(((Number) ur3Var.getValue()).floatValue());
            bh0 bh0Var = this.o;
            if (bh0Var == null) {
                k21.n("MotionDurationScale scale factor requested before recomposer loop start");
                return 0.0f;
            }
            this.q = ca.y(bh0Var, null, null, new n(ur3Var, this, dh0Var, 22), 3);
        }
        return this.p.g();
    }
}
