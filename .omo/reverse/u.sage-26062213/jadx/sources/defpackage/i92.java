package defpackage;

import java.util.Collection;
import java.util.Iterator;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i92 extends bv3 implements df1 {
    public /* synthetic */ Object r;
    public final /* synthetic */ xi2 s;
    public final /* synthetic */ MainActivity t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ String f134u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i92(xi2 xi2Var, MainActivity mainActivity, String str, dh0 dh0Var) {
        super(2, dh0Var);
        this.s = xi2Var;
        this.t = mainActivity;
        this.f134u = str;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        i92 i92Var = (i92) o((dh0) obj2, (String) obj);
        t64 t64Var = t64.a;
        i92Var.q(t64Var);
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        i92 i92Var = new i92(this.s, this.t, this.f134u, dh0Var);
        i92Var.r = obj;
        return i92Var;
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        xi2 xi2Var = this.s;
        String str = (String) this.r;
        gg4.T(obj);
        try {
            Iterable iterable = (Iterable) xi2Var.b.h.n.getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    if (nt1.g((String) ((yh2) it.next()).o.o.e, str)) {
                        xi2.d(xi2Var, str);
                        break;
                    }
                }
            }
            xi2Var.a(str, new ao0(this.f134u, 7));
        } catch (Exception e) {
            ez3.a.getClass();
            ra3.g(new Object[0]);
            n8 n8VarI = this.t.i();
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            n8VarI.c(null, "navigation", message);
        }
        return t64.a;
    }
}
