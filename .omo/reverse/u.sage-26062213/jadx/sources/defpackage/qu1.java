package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qu1 extends g34 {
    public final /* synthetic */ int a;
    public final /* synthetic */ g34 b;
    public final /* synthetic */ g34 c;

    public /* synthetic */ qu1(g34 g34Var, g34 g34Var2, int i) {
        this.a = i;
        this.b = g34Var;
        this.c = g34Var2;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        int i = this.a;
        g34 g34Var = this.c;
        g34 g34Var2 = this.b;
        Serializable serializableR = null;
        switch (i) {
            case 0:
                ww1Var.j();
                LocalTime localTimeS = null;
                while (ww1Var.s0() != 4) {
                    String strJ0 = ww1Var.j0();
                    if (strJ0.equals("date")) {
                        serializableR = nu1.r(g34Var2.b(ww1Var));
                    } else if (strJ0.equals("time")) {
                        localTimeS = nu1.s(g34Var.b(ww1Var));
                    } else {
                        ww1Var.y0();
                    }
                }
                ww1Var.B();
                mu1.a(serializableR, "date", ww1Var);
                LocalDate localDateI = nu1.i(serializableR);
                mu1.a(localTimeS, "time", ww1Var);
                return LocalDateTime.of(localDateI, nu1.m(localTimeS));
            default:
                ww1Var.j();
                ZoneOffset zoneOffsetS = null;
                while (ww1Var.s0() != 4) {
                    String strJ02 = ww1Var.j0();
                    if (strJ02.equals("offset")) {
                        zoneOffsetS = ku1.s(g34Var.b(ww1Var));
                    } else if (strJ02.equals("time")) {
                        serializableR = nu1.s(g34Var2.b(ww1Var));
                    } else {
                        ww1Var.y0();
                    }
                }
                ww1Var.B();
                mu1.a(serializableR, "time", ww1Var);
                LocalTime localTimeM = nu1.m(serializableR);
                mu1.a(zoneOffsetS, "offset", ww1Var);
                return OffsetTime.of(localTimeM, ku1.B(zoneOffsetS));
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        int i = this.a;
        g34 g34Var = this.c;
        g34 g34Var2 = this.b;
        switch (i) {
            case 0:
                LocalDateTime localDateTimeJ = ku1.j(obj);
                bx1Var.r();
                bx1Var.F("date");
                g34Var2.c(bx1Var, localDateTimeJ.toLocalDate());
                bx1Var.F("time");
                g34Var.c(bx1Var, localDateTimeJ.toLocalTime());
                bx1Var.B();
                break;
            default:
                OffsetTime offsetTimeN = pu1.n(obj);
                bx1Var.r();
                bx1Var.F("time");
                g34Var2.c(bx1Var, offsetTimeN.toLocalTime());
                bx1Var.F("offset");
                g34Var.c(bx1Var, offsetTimeN.getOffset());
                bx1Var.B();
                break;
        }
    }
}
