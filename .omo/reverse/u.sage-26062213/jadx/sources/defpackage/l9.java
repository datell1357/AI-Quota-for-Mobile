package defpackage;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l9 extends xx1 implements pe1 {
    public static final l9 A;
    public static final l9 B;
    public static final l9 C;
    public static final l9 D;
    public static final l9 E;
    public static final l9 F;
    public static final l9 G;
    public static final l9 H;
    public static final l9 I;
    public static final l9 J;
    public static final l9 K;
    public static final l9 L;
    public static final l9 M;
    public static final l9 N;
    public static final l9 O;
    public static final l9 P;
    public static final l9 Q;
    public static final l9 R;
    public static final l9 S;
    public static final l9 p;
    public static final l9 q;
    public static final l9 r;
    public static final l9 s;
    public static final l9 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final l9 f179u;
    public static final l9 v;
    public static final l9 w;
    public static final l9 x;
    public static final l9 y;
    public static final l9 z;
    public final /* synthetic */ int o;

    static {
        int i = 1;
        p = new l9(i, 0);
        q = new l9(i, 1);
        r = new l9(i, 2);
        s = new l9(i, 3);
        t = new l9(i, 4);
        f179u = new l9(i, 5);
        v = new l9(i, 6);
        w = new l9(i, 7);
        x = new l9(i, 8);
        y = new l9(i, 9);
        z = new l9(i, 10);
        A = new l9(i, 11);
        B = new l9(i, 12);
        C = new l9(i, 13);
        D = new l9(i, 14);
        E = new l9(i, 15);
        F = new l9(i, 16);
        G = new l9(i, 17);
        H = new l9(i, 18);
        I = new l9(i, 19);
        J = new l9(i, 20);
        K = new l9(i, 21);
        L = new l9(i, 22);
        M = new l9(i, 23);
        N = new l9(i, 24);
        O = new l9(i, 25);
        P = new l9(i, 26);
        Q = new l9(i, 27);
        R = new l9(i, 28);
        S = new l9(i, 29);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l9(int i, int i2) {
        super(i);
        this.o = i2;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.pe1
    public final Object k(Object obj) {
        ek1 ek1Var;
        int i = this.o;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                return Boolean.TRUE;
            case 1:
                return Boolean.valueOf(((gh3) obj).k().n.c(lh3.A));
            case 2:
                hu2 hu2Var = (hu2) obj;
                lc0 lc0Var = ea.a;
                hu2Var.getClass();
                bi4.F(hu2Var, lc0Var);
                return ((Context) bi4.F(hu2Var, ea.b)).getResources();
            case 3:
                return Boolean.valueOf(((gh3) obj).k().n.c(lh3.A));
            case 4:
                kx1[] kx1VarArr = nh3.a;
                ((ph3) obj).a(lh3.x, t64Var);
                return t64Var;
            case 5:
                bd bdVar = (bd) obj;
                bdVar.getHandler().post(new d9(3, bdVar.E));
                return t64Var;
            case 6:
                return t64Var;
            case 7:
                return t64Var;
            case 8:
                return t64Var;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return null;
            case 10:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                return bool2;
            case 12:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                return bool3;
            case 13:
                long jA = t70.a(((t70) obj).a, e80.x);
                return new af(t70.d(jA), t70.h(jA), t70.g(jA), t70.e(jA));
            case 14:
                ((Number) obj).longValue();
                return t64Var;
            case 15:
                lb0 lb0Var = (lb0) obj;
                xy1 xy1Var = lb0Var instanceof xy1 ? (xy1) lb0Var : null;
                if (xy1Var != null && xy1Var.d0) {
                    ar1.b("Apply is called on deactivated node " + lb0Var);
                }
                return t64Var;
            case 16:
                return Boolean.valueOf(!(((ld2) obj) instanceof qb0));
            case 17:
                return Boolean.valueOf(kt4.p(obj));
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                long j = ((f14) obj).a;
                return new ye(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
            case 19:
                ye yeVar = (ye) obj;
                return new f14((((long) Float.floatToRawIntBits(yeVar.b)) & 4294967295L) | (((long) Float.floatToRawIntBits(yeVar.a)) << 32));
            case 20:
                return tv4.Q(0.0f, 0.0f, null, 7);
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return j11.d;
            case 22:
                return t64Var;
            case ConnectionResult.API_DISABLED /* 23 */:
                return t64Var;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return t64Var;
            case 25:
                kx0.C((kx0) obj, t70.e, 0L, 126);
                return t64Var;
            case 26:
                fv2 fv2Var = (fv2) obj;
                if (fv2Var.w()) {
                    k82 k82Var = fv2Var.o;
                    if (!k82Var.B) {
                        pe1 pe1VarF = fv2Var.n.f();
                        if (fv2Var.n.e() != null) {
                            k82Var.C0();
                        } else if (pe1VarF == null) {
                            k82Var.f162u = null;
                            k82Var.v = null;
                            k82Var.t = null;
                            k82Var.C0();
                        } else {
                            k82Var.f162u = null;
                            k82Var.v = null;
                            k82Var.l0(fv2Var, 9223372034707292159L, 0L);
                            k82Var.t = pe1VarF;
                        }
                    }
                }
                return t64Var;
            case 27:
                fv2 fv2Var2 = (fv2) obj;
                if (fv2Var2.w() && (ek1Var = fv2Var2.p) != null) {
                    k82 k82Var2 = fv2Var2.o;
                    kg2 kg2Var = k82Var2.E;
                    lg2 lg2Var = kg2Var != null ? (lg2) kg2Var.g(ek1Var) : null;
                    if (lg2Var != null) {
                        gg ggVar = k82Var2.D;
                        if (ggVar != null) {
                            ggVar.e(ek1Var);
                        }
                        k82Var2.A0(lg2Var);
                        lg2Var.b();
                    }
                }
                return t64Var;
            case 28:
                rr2 rr2Var = ((mm2) obj).c0;
                if (rr2Var != null) {
                    ((ci1) rr2Var).c();
                }
                return t64Var;
            default:
                mm2 mm2Var = (mm2) obj;
                xy1 xy1Var2 = mm2Var.F;
                try {
                    if (mm2Var.w()) {
                        mm2Var.l1(true);
                        break;
                    }
                    return t64Var;
                } catch (Throwable th) {
                    xy1Var2.a0(th);
                    throw null;
                }
        }
    }
}
