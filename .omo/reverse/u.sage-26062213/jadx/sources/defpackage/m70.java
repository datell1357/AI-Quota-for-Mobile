package defpackage;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class m70 extends g34 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;

    public m70(c44 c44Var, Class cls) {
        this.a = 2;
        this.c = c44Var;
        this.b = cls;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        int i = this.a;
        Collection collection = null;
        LocalDateTime localDateTimeJ = null;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                if (ww1Var.s0() == 9) {
                    ww1Var.o0();
                } else {
                    collection = (Collection) ((on2) obj).d();
                    ww1Var.b();
                    while (ww1Var.L()) {
                        collection.add(((ou1) obj2).c.b(ww1Var));
                    }
                    ww1Var.A();
                }
                return collection;
            case 1:
                ww1Var.j();
                ZoneOffset zoneOffsetS = null;
                while (ww1Var.s0() != 4) {
                    String strJ0 = ww1Var.j0();
                    if (strJ0.equals("offset")) {
                        zoneOffsetS = ku1.s(((g34) obj).b(ww1Var));
                    } else if (strJ0.equals("dateTime")) {
                        localDateTimeJ = ku1.j(((f34) obj2).b(ww1Var));
                    } else {
                        ww1Var.y0();
                    }
                }
                ww1Var.B();
                mu1.a(localDateTimeJ, "dateTime", ww1Var);
                LocalDateTime localDateTimeZ = ku1.z(localDateTimeJ);
                mu1.a(zoneOffsetS, "offset", ww1Var);
                return OffsetDateTime.of(localDateTimeZ, ku1.B(zoneOffsetS));
            default:
                Class cls = (Class) obj2;
                Object objB = ((c44) obj).p.b(ww1Var);
                if (objB == null || cls.isInstance(objB)) {
                    return objB;
                }
                throw new fw1("Expected a " + cls.getName() + " but was " + objB.getClass().getName() + "; at path " + ww1Var.K(true), 5);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        int i = this.a;
        Object obj2 = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                Collection collection = (Collection) obj;
                if (collection != null) {
                    bx1Var.j();
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        ((ou1) obj2).c(bx1Var, it.next());
                    }
                    bx1Var.A();
                } else {
                    bx1Var.L();
                }
                break;
            case 1:
                OffsetDateTime offsetDateTimeL = pu1.l(obj);
                bx1Var.r();
                bx1Var.F("dateTime");
                ((f34) obj2).c(bx1Var, offsetDateTimeL.toLocalDateTime());
                bx1Var.F("offset");
                ((g34) obj3).c(bx1Var, offsetDateTimeL.getOffset());
                bx1Var.B();
                break;
            default:
                ((c44) obj3).p.c(bx1Var, obj);
                break;
        }
    }

    public /* synthetic */ m70(g34 g34Var, Object obj, int i) {
        this.a = i;
        this.b = g34Var;
        this.c = obj;
    }
}
