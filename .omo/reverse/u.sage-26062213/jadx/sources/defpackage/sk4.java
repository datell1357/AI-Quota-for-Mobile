package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sk4 extends nv4 {
    public final r45 a;
    public final m75 b;

    public sk4(r45 r45Var) {
        Preconditions.checkNotNull(r45Var);
        this.a = r45Var;
        m75 m75Var = r45Var.m;
        r45.k(m75Var);
        this.b = m75Var;
    }

    @Override // defpackage.n75
    public final long c() {
        ac5 ac5Var = this.a.i;
        r45.j(ac5Var);
        return ac5Var.s0();
    }

    @Override // defpackage.n75
    public final String d() {
        f85 f85Var = ((r45) this.b.a).l;
        r45.k(f85Var);
        w75 w75Var = f85Var.c;
        if (w75Var != null) {
            return w75Var.a;
        }
        return null;
    }

    @Override // defpackage.n75
    public final void e(String str, String str2, Bundle bundle) {
        this.b.z(str, str2, bundle);
    }

    @Override // defpackage.n75
    public final void f(String str, String str2, Bundle bundle) {
        m75 m75Var = this.a.m;
        r45.k(m75Var);
        m75Var.J(str, str2, bundle);
    }

    @Override // defpackage.n75
    public final List g(String str, String str2) {
        m75 m75Var = this.b;
        r45 r45Var = (r45) m75Var.a;
        j45 j45Var = r45Var.g;
        a25 a25Var = r45Var.f;
        r45.l(j45Var);
        if (j45Var.B()) {
            r45.l(a25Var);
            a25Var.f.a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (pr3.l()) {
            r45.l(a25Var);
            a25Var.f.a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        j45 j45Var2 = r45Var.g;
        r45.l(j45Var2);
        j45Var2.F(atomicReference, 5000L, "get conditional user properties", new e30(m75Var, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return ac5.o0(list);
        }
        r45.l(a25Var);
        a25Var.f.b(null, "Timed out waiting for get conditional user properties");
        return new ArrayList();
    }

    @Override // defpackage.n75
    public final void h(Bundle bundle) {
        m75 m75Var = this.b;
        m75Var.I(bundle, ((r45) m75Var.a).k.currentTimeMillis());
    }

    @Override // defpackage.n75
    public final int i(String str) {
        m75 m75Var = this.b;
        m75Var.getClass();
        Preconditions.checkNotEmpty(str);
        ((r45) m75Var.a).getClass();
        return 25;
    }

    @Override // defpackage.n75
    public final String j() {
        return (String) this.b.g.get();
    }

    @Override // defpackage.n75
    public final void k(String str) {
        r45 r45Var = this.a;
        bx4 bx4Var = r45Var.n;
        r45.i(bx4Var);
        bx4Var.x(r45Var.k.elapsedRealtime(), str);
    }

    @Override // defpackage.n75
    public final String l() {
        return this.b.K();
    }

    @Override // defpackage.n75
    public final Map m(String str, String str2, boolean z) {
        m75 m75Var = this.b;
        r45 r45Var = (r45) m75Var.a;
        j45 j45Var = r45Var.g;
        a25 a25Var = r45Var.f;
        r45.l(j45Var);
        if (j45Var.B()) {
            r45.l(a25Var);
            a25Var.f.a("Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        if (pr3.l()) {
            r45.l(a25Var);
            a25Var.f.a("Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        j45 j45Var2 = r45Var.g;
        r45.l(j45Var2);
        j45Var2.F(atomicReference, 5000L, "get user properties", new q65(m75Var, atomicReference, str, str2, z));
        List<vb5> list = (List) atomicReference.get();
        if (list == null) {
            r45.l(a25Var);
            a25Var.f.b(Boolean.valueOf(z), "Timed out waiting for handle get user properties, includeInternal");
            return Collections.EMPTY_MAP;
        }
        di diVar = new di(list.size());
        for (vb5 vb5Var : list) {
            Object objY = vb5Var.Y();
            if (objY != null) {
                diVar.put(vb5Var.o, objY);
            }
        }
        return diVar;
    }

    @Override // defpackage.n75
    public final void n(String str) {
        r45 r45Var = this.a;
        bx4 bx4Var = r45Var.n;
        r45.i(bx4Var);
        bx4Var.w(r45Var.k.elapsedRealtime(), str);
    }

    @Override // defpackage.n75
    public final String zzi() {
        f85 f85Var = ((r45) this.b.a).l;
        r45.k(f85Var);
        w75 w75Var = f85Var.c;
        if (w75Var != null) {
            return w75Var.b;
        }
        return null;
    }
}
