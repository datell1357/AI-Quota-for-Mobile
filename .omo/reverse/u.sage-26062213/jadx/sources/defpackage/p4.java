package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p4 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p4(Object obj, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = obj;
        this.t = obj2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) throws Throwable {
        int i = this.r;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            case 1:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            case 2:
                ((p4) o((dh0) obj2, (hg2) obj)).q(t64Var);
                return t64Var;
            case 3:
                return ((p4) o((dh0) obj2, (sr3) obj)).q(t64Var);
            case 4:
                return ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 5:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            case 6:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            case 7:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            case 8:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                throw null;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
            case 10:
                ((p4) o((dh0) obj2, (qi0) obj)).q(t64Var);
                return t64Var;
            default:
                return ((p4) o((dh0) obj2, (hg2) obj)).q(t64Var);
        }
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.t;
        switch (i) {
            case 0:
                return new p4((n8) this.s, (y3) obj2, dh0Var, 0);
            case 1:
                return new p4((s33) this.s, (e4) obj2, dh0Var, 1);
            case 2:
                p4 p4Var = new p4((ps) obj2, dh0Var, 2);
                p4Var.s = obj;
                return p4Var;
            case 3:
                p4 p4Var2 = new p4((sr3) obj2, dh0Var, 3);
                p4Var2.s = obj;
                return p4Var2;
            case 4:
                p4 p4Var3 = new p4((ne1) obj2, dh0Var, 4);
                p4Var3.s = obj;
                return p4Var3;
            case 5:
                p4 p4Var4 = new p4((i22) obj2, dh0Var, 5);
                p4Var4.s = obj;
                return p4Var4;
            case 6:
                return new p4((MainActivity) this.s, (y84) obj2, dh0Var, 6);
            case 7:
                return new p4((xi2) this.s, (y84) obj2, dh0Var, 7);
            case 8:
                p4 p4Var5 = new p4((mb2) obj2, dh0Var, 8);
                p4Var5.s = obj;
                return p4Var5;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                p4 p4Var6 = new p4((df1) obj2, dh0Var, 9);
                p4Var6.s = obj;
                return p4Var6;
            case 10:
                return new p4((pg2) this.s, (pg2) obj2, dh0Var, 10);
            default:
                p4 p4Var7 = new p4((Set) obj2, dh0Var, 11);
                p4Var7.s = obj;
                return p4Var7;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.dr
    public final Object q(Object obj) throws Throwable {
        qi2 qi2Var;
        int i = this.r;
        Object obj2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        t64 t64Var = t64.a;
        Object obj3 = this.t;
        switch (i) {
            case 0:
                gg4.T(obj);
                n8 n8Var = (n8) this.s;
                y84 y84Var = ((y3) obj3).a;
                String lowerCase = y84Var.name().toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                n8Var.g(lowerCase.concat("_account"), "AccountScreen");
                ra3 ra3Var = ez3.a;
                y84Var.name();
                ra3Var.getClass();
                ra3.c(new Object[0]);
                Bundle bundle = new Bundle();
                bundle.putString("service_type", y84Var.name());
                n8Var.a("account_screen_opened", bundle);
                n8Var.b().a("account_screen_opened", bundle);
                return t64Var;
            case 1:
                gg4.T(obj);
                ((s33) this.s).n = false;
                ((e4) obj3).k(Boolean.FALSE);
                return t64Var;
            case 2:
                hg2 hg2Var = (hg2) this.s;
                gg4.T(obj);
                rx2 rx2Var = ps.l;
                Object objC = hg2Var.c(rx2Var);
                Boolean bool = Boolean.TRUE;
                if (!nt1.g(objC, bool)) {
                    rx2 rx2Var2 = ps.j;
                    Boolean bool2 = (Boolean) hg2Var.c(rx2Var2);
                    hg2Var.e(ps.k, Boolean.valueOf(!(bool2 != null ? bool2.booleanValue() : false) && ((ps) obj3).b() == y84.r));
                    hg2Var.f(rx2Var, bool);
                    hg2Var.d(rx2Var2);
                }
                return t64Var;
            case 3:
                gg4.T(obj);
                sr3 sr3Var = (sr3) this.s;
                return Boolean.valueOf((sr3Var instanceof am0) && ((am0) sr3Var).a <= ((am0) ((sr3) obj3)).a);
            case 4:
                gg4.T(obj);
                hi0 hi0VarD = ((qi0) this.s).d();
                ne1 ne1Var = (ne1) obj3;
                try {
                    ty3 ty3Var = new ty3();
                    ty3Var.v = n44.s0(n44.o0(hi0VarD), true, ty3Var);
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ty3.w;
                    while (true) {
                        int i2 = atomicIntegerFieldUpdater.get(ty3Var);
                        if (i2 != 0) {
                            if (i2 != 2 && i2 != 3) {
                                ty3.u(i2);
                                throw null;
                            }
                        } else if (!atomicIntegerFieldUpdater.compareAndSet(ty3Var, i2, 0)) {
                        }
                    }
                    try {
                        return ne1Var.a();
                    } finally {
                        ty3Var.t();
                    }
                } catch (InterruptedException e) {
                    throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
                }
            case 5:
                gg4.T(obj);
                qi0 qi0Var = (qi0) this.s;
                i22 i22Var = (i22) obj3;
                h22 h22Var = i22Var.n;
                if (((r22) h22Var).d.compareTo(g22.o) >= 0) {
                    h22Var.a(i22Var);
                } else {
                    n44.S(qi0Var.d(), null);
                }
                return t64Var;
            case 6:
                gg4.T(obj);
                ((MainActivity) this.s).i().g(((y84) obj3).q, "UsageScreen");
                return t64Var;
            case 7:
                gg4.T(obj);
                xi2 xi2Var = (xi2) this.s;
                yh2 yh2VarG = xi2Var.b.g();
                if (yh2VarG != null && (qi2Var = yh2VarG.o) != null) {
                    Object obj4 = qi2Var.o.e;
                }
                ra3 ra3Var2 = ez3.a;
                Objects.toString((y84) obj3);
                ra3Var2.getClass();
                ra3.c(new Object[0]);
                xi2Var.c();
                return t64Var;
            case 8:
                gg4.T(obj);
                throw null;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                gg4.T(obj);
                fi0 fi0VarK = ((qi0) this.s).d().K(w13.s);
                fi0VarK.getClass();
                ji0 ji0Var = (ji0) fi0VarK;
                z80 z80VarD = ix.d();
                ca.x(hh1.n, ji0Var, ti0.q, new p(z80VarD, (df1) obj3, objArr2 == true ? 1 : 0, 23));
                while (z80VarD.M() instanceof rp1) {
                    try {
                        return ca.H(ji0Var, new x50((Object) z80VarD, (dh0) (objArr == true ? 1 : 0), 17));
                    } catch (InterruptedException unused) {
                    }
                }
                return z80VarD.D();
            case 10:
                gg4.T(obj);
                pg2 pg2Var = (pg2) this.s;
                pg2 pg2Var2 = (pg2) obj3;
                if (nt1.g(((Map) pg2Var.getValue()).get((y84) pg2Var2.getValue()), Boolean.FALSE)) {
                    Iterator it = ((List) zi3.a.getValue()).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Object next = it.next();
                            if (!nt1.g(((Map) pg2Var.getValue()).get((y84) next), Boolean.FALSE)) {
                                obj2 = next;
                            }
                        }
                    }
                    y84 y84Var2 = (y84) obj2;
                    if (y84Var2 != null) {
                        pg2Var2.setValue(y84Var2);
                    }
                }
                return t64Var;
            default:
                gg4.T(obj);
                Set setKeySet = ((hg2) this.s).a().keySet();
                ArrayList arrayList = new ArrayList(p70.a0(setKeySet, 10));
                Iterator it2 = setKeySet.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((rx2) it2.next()).a);
                }
                Set set = (Set) obj3;
                if (set != dm3.a) {
                    Set set2 = set;
                    if ((set2 instanceof Collection) && set2.isEmpty()) {
                        z = false;
                    } else {
                        Iterator it3 = set2.iterator();
                        while (it3.hasNext()) {
                            if (!arrayList.contains((String) it3.next())) {
                            }
                        }
                        z = false;
                    }
                }
                return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p4(Object obj, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
    }
}
