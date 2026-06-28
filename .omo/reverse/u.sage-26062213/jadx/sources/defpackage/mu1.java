package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.time.ZoneId;
import java.time.ZoneOffset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mu1 implements l44 {
    public static final lu1 a = new lu1(new String[]{"seconds", "nanos"}, 2);
    public static final lu1 b = new lu1(new String[]{"seconds", "nanos"}, 3);
    public static final lu1 c = new lu1(new String[]{"year", "month", "day"}, 4);
    public static final lu1 d = new lu1(new String[]{"hour", "minute", "second", "nano"}, 5);
    public static final lu1 e = new lu1(new String[]{"month", "day"}, 6);
    public static final lu1 f = new lu1(new String[]{"years", "months", "days"}, 7);
    public static final lu1 g = new lu1(new String[]{"year"}, 0);
    public static final lu1 h = new lu1(new String[]{"year", "month"}, 1);
    public static final f34 i = new a().a();
    public static final b j = new b();

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class a extends g34 {
        @Override // defpackage.g34
        public final Object b(ww1 ww1Var) throws IOException {
            ww1Var.j();
            String strQ0 = null;
            Integer numValueOf = null;
            while (ww1Var.s0() != 4) {
                String strJ0 = ww1Var.j0();
                if (strJ0.equals("totalSeconds")) {
                    numValueOf = Integer.valueOf(ww1Var.Z());
                } else if (strJ0.equals("id")) {
                    strQ0 = ww1Var.q0();
                } else {
                    ww1Var.y0();
                }
            }
            ww1Var.B();
            if (strQ0 != null) {
                return ZoneId.of(strQ0);
            }
            if (numValueOf != null) {
                return ZoneOffset.ofTotalSeconds(numValueOf.intValue());
            }
            throw new fw1("Missing id or totalSeconds field; at path ".concat(ww1Var.K(true)), 5);
        }

        @Override // defpackage.g34
        public final void c(bx1 bx1Var, Object obj) throws IOException {
            ZoneId zoneIdP = ku1.p(obj);
            if (ku1.w(zoneIdP)) {
                bx1Var.r();
                bx1Var.F("totalSeconds");
                bx1Var.i0(ku1.s(zoneIdP).getTotalSeconds());
                bx1Var.B();
                return;
            }
            bx1Var.r();
            bx1Var.F("id");
            bx1Var.n0(zoneIdP.getId());
            bx1Var.B();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class b implements h34 {
        @Override // defpackage.h34
        public final g34 a(pi1 pi1Var, q44 q44Var) {
            Class cls = q44Var.a;
            if (!cls.getName().startsWith("java.time.")) {
                return null;
            }
            if (cls == nu1.e()) {
                return mu1.a;
            }
            if (cls == nu1.x()) {
                return mu1.b;
            }
            if (cls == ku1.f()) {
                return mu1.c;
            }
            if (cls == ku1.y()) {
                return mu1.d;
            }
            if (cls == nu1.y()) {
                return mu1.b(pi1Var);
            }
            if (cls == nu1.z()) {
                return mu1.e;
            }
            if (cls == nu1.A()) {
                return new m70(mu1.b(pi1Var), pi1Var.b(new q44(ku1.C())), 1).a();
            }
            if (cls == nu1.B()) {
                lu1 lu1Var = mu1.a;
                Class clsY = ku1.y();
                pi1Var.getClass();
                return new qu1(pi1Var.b(new q44(clsY)), pi1Var.b(new q44(ku1.C())), 1).a();
            }
            if (cls == nu1.C()) {
                return mu1.f;
            }
            if (cls == nu1.D()) {
                return mu1.g;
            }
            if (cls == nu1.q()) {
                return mu1.h;
            }
            if (cls == ku1.D() || cls == ku1.C()) {
                return mu1.i;
            }
            if (cls == nu1.v()) {
                return new ou1(mu1.b(pi1Var), pi1Var.b(new q44(ku1.C())), pi1Var.b(new q44(ku1.D())), 0).a();
            }
            return null;
        }
    }

    public static void a(Serializable serializable, String str, ww1 ww1Var) {
        if (serializable != null) {
            return;
        }
        StringBuilder sbA = di0.A("Missing ", str, " field; at path ");
        sbA.append(ww1Var.K(true));
        throw new fw1(sbA.toString(), 5);
    }

    public static f34 b(pi1 pi1Var) {
        Class clsF = ku1.f();
        pi1Var.getClass();
        return new qu1(pi1Var.b(new q44(clsF)), pi1Var.b(new q44(ku1.y())), 0).a();
    }
}
