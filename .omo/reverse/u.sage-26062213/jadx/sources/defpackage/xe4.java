package defpackage;

import android.os.Build;
import android.view.View;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xe4 extends b70 implements Runnable, lo2, View.OnAttachStateChangeListener {
    public static final Integer[] v = {8, 64, 4, 1, 128, 16, 2, 32};
    public boolean p;
    public int q;
    public ke4 r;
    public final ws2 s;
    public final tf2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final tf2 f409u;

    public xe4() {
        super(1);
        this.s = ca.A(null);
        this.t = new tf2(8);
        this.f409u = new tf2(8);
    }

    public final ke4 M() {
        return (ke4) this.s.getValue();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final pg2 N(int i) {
        tf2 tf2Var = this.t;
        pg2 pg2Var = (pg2) tf2Var.b(i);
        if (pg2Var != null) {
            return pg2Var;
        }
        ws2 ws2VarA = ca.A(null);
        tf2Var.h(i, ws2VarA);
        return ws2VarA;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final pg2 O(int i) {
        tf2 tf2Var = this.f409u;
        pg2 pg2Var = (pg2) tf2Var.b(i);
        if (pg2Var != null) {
            return pg2Var;
        }
        ws2 ws2VarA = ca.A(null);
        tf2Var.h(i, ws2VarA);
        return ws2VarA;
    }

    public final void P(ke4 ke4Var) {
        boolean z = false;
        if (M() == null) {
            nr1 nr1Var = nr1.e;
            Integer[] numArr = v;
            for (int i = 0; i < 8; i++) {
                int iIntValue = numArr[i].intValue();
                if (nt1.g(iIntValue == 8 ? ke4Var.a.i(iIntValue) : ke4Var.a.j(iIntValue), nr1Var)) {
                }
            }
            return;
        }
        this.s.setValue(ke4Var);
        synchronized (wo3.c) {
            lg2 lg2Var = wo3.j.h;
            if (lg2Var != null) {
                if (lg2Var.h()) {
                    z = true;
                }
            }
        }
        if (z) {
            wo3.a();
        }
    }

    @Override // defpackage.lo2
    public final ke4 g(View view, ke4 ke4Var) {
        if (this.p) {
            this.r = ke4Var;
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
                return ke4Var;
            }
        } else if (this.q == 0) {
            P(ke4Var);
        }
        return ke4Var;
    }

    @Override // defpackage.b70
    public final void k(qd4 qd4Var) {
        boolean z = false;
        this.p = false;
        int iC = qd4Var.a.c();
        N(iC).setValue(null);
        O(iC).setValue(null);
        this.q = (~iC) & this.q;
        this.r = null;
        synchronized (wo3.c) {
            lg2 lg2Var = wo3.j.h;
            if (lg2Var != null) {
                if (lg2Var.h()) {
                    z = true;
                }
            }
        }
        if (z) {
            wo3.a();
        }
    }

    @Override // defpackage.b70
    public final void l(qd4 qd4Var) {
        this.p = true;
    }

    @Override // defpackage.b70
    public final ke4 m(ke4 ke4Var, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            qd4 qd4Var = (qd4) list.get(i);
            int iC = qd4Var.a.c();
            if ((this.q & iC) != 0) {
                N(iC).setValue(qd4Var);
            }
        }
        P(ke4Var);
        return ke4Var;
    }

    @Override // defpackage.b70
    public final pc4 n(qd4 qd4Var, pc4 pc4Var) {
        ke4 ke4Var = this.r;
        boolean z = false;
        this.p = false;
        this.r = null;
        if (qd4Var.a.a() > 0 && ke4Var != null) {
            int iC = qd4Var.a.c();
            ke4 ke4VarM = M();
            nr1 nr1VarI = ke4VarM != null ? ke4VarM.a.i(iC) : null;
            nr1 nr1VarI2 = ke4Var.a.i(iC);
            if (!nt1.g(nr1VarI2, nr1VarI) && nr1VarI != null) {
                this.q |= iC;
                N(iC).setValue(qd4Var);
                O(iC).setValue(new we4(nr1VarI, nr1VarI2));
                synchronized (wo3.c) {
                    lg2 lg2Var = wo3.j.h;
                    if (lg2Var != null) {
                        if (lg2Var.h()) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    wo3.a();
                    return pc4Var;
                }
            }
        }
        return pc4Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            view = view2;
        }
        Field field = lb4.a;
        fb4.c(view, this);
        lb4.g(view, this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        if (view2 != null) {
            view = view2;
        }
        Field field = lb4.a;
        fb4.c(view, null);
        lb4.g(view, null);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.p) {
            this.q = 0;
            this.p = false;
            ke4 ke4Var = this.r;
            if (ke4Var != null) {
                P(ke4Var);
                this.r = null;
            }
        }
    }
}
