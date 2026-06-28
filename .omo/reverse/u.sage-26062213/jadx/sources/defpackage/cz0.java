package defpackage;

import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cz0 extends ix {
    public final /* synthetic */ j8 r;

    public cz0(j8 j8Var) {
        this.r = j8Var;
    }

    @Override // defpackage.ix
    public final void I(Throwable th) {
        ((hz0) this.r.a).e(th);
    }

    @Override // defpackage.ix
    public final void J(qd1 qd1Var) {
        j8 j8Var = this.r;
        j8Var.c = qd1Var;
        qd1 qd1Var2 = (qd1) j8Var.c;
        hz0 hz0Var = (hz0) j8Var.a;
        j8Var.b = new eh(qd1Var2, hz0Var.g, hz0Var.i, Build.VERSION.SDK_INT >= 34 ? mz0.a() : se0.r());
        hz0 hz0Var2 = (hz0) j8Var.a;
        ArrayList arrayList = new ArrayList();
        hz0Var2.a.writeLock().lock();
        try {
            hz0Var2.c = 1;
            arrayList.addAll(hz0Var2.b);
            hz0Var2.b.clear();
            hz0Var2.a.writeLock().unlock();
            hz0Var2.d.post(new fz0(arrayList, hz0Var2.c, null));
        } catch (Throwable th) {
            hz0Var2.a.writeLock().unlock();
            throw th;
        }
    }
}
