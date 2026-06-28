package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hw1 implements lx1 {
    public static final hw1 a = new hw1();
    public static final py2 b;

    static {
        ny2 ny2Var = ny2.X;
        if (zs3.I0("kotlinx.serialization.json.JsonLiteral")) {
            k21.f("Blank serial names are prohibited");
            return;
        }
        Object it = ((ea2) qy2.a.values()).iterator();
        while (((ba2) it).hasNext()) {
            lx1 lx1Var = (lx1) ((z92) it).next();
            if ("kotlinx.serialization.json.JsonLiteral".equals(lx1Var.d().b())) {
                k21.f(at3.o0("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name kotlinx.serialization.json.JsonLiteral there already exists " + y33.a(lx1Var.getClass()).c() + ".\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
                return;
            }
        }
        b = new py2("kotlinx.serialization.json.JsonLiteral", ny2Var);
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        xv1 xv1VarP0 = gg4.f(vn0Var).P0();
        if (xv1VarP0 instanceof gw1) {
            return (gw1) xv1VarP0;
        }
        throw bi4.f(-1, "Unexpected JSON element, expected JsonLiteral, had " + y33.a(xv1VarP0.getClass()), xv1VarP0.toString());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        gw1 gw1Var = (gw1) obj;
        gw1Var.getClass();
        String str = gw1Var.o;
        gg4.e(bVar);
        if (gw1Var.n) {
            bVar.r(str);
            return;
        }
        Long lA0 = gt3.A0(str);
        if (lA0 != null) {
            bVar.k(lA0.longValue());
            return;
        }
        s54 s54VarN0 = n44.N0(str);
        if (s54VarN0 != null) {
            bVar.h(w54.b).k(s54VarN0.n);
            return;
        }
        Boolean bool = null;
        Double dValueOf = ft3.q0(str) ? Double.valueOf(Double.parseDouble(str)) : null;
        if (dValueOf != null) {
            bVar.e(dValueOf.doubleValue());
            return;
        }
        if (str.equals("true")) {
            bool = Boolean.TRUE;
        } else if (str.equals("false")) {
            bool = Boolean.FALSE;
        }
        if (bool != null) {
            bVar.b(bool.booleanValue());
        } else {
            bVar.r(str);
        }
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}
