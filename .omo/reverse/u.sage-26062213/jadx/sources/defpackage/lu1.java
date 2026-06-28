package defpackage;

import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.MonthDay;
import java.time.Period;
import java.time.Year;
import java.time.YearMonth;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lu1 extends g34 {
    public final List a;
    public final /* synthetic */ int b;

    public lu1(String[] strArr, int i) {
        this.b = i;
        this.a = Arrays.asList(strArr);
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        ww1Var.j();
        List list = this.a;
        long[] jArr = new long[list.size()];
        while (ww1Var.s0() != 4) {
            int iIndexOf = list.indexOf(ww1Var.j0());
            if (iIndexOf >= 0) {
                jArr[iIndexOf] = ww1Var.i0();
            } else {
                ww1Var.y0();
            }
        }
        ww1Var.B();
        switch (this.b) {
            case 0:
                return Year.of(Math.toIntExact(jArr[0]));
            case 1:
                return YearMonth.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]));
            case 2:
                return Duration.ofSeconds(jArr[0], jArr[1]);
            case 3:
                return Instant.ofEpochSecond(jArr[0], jArr[1]);
            case 4:
                return LocalDate.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]));
            case 5:
                return LocalTime.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]), Math.toIntExact(jArr[3]));
            case 6:
                return MonthDay.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]));
            case 7:
                return Period.of(Math.toIntExact(jArr[0]), Math.toIntExact(jArr[1]), Math.toIntExact(jArr[2]));
            default:
                return new GregorianCalendar(m44.b(jArr[0]), m44.b(jArr[1]), m44.b(jArr[2]), m44.b(jArr[3]), m44.b(jArr[4]), m44.b(jArr[5]));
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        int i;
        long[] jArr;
        long[] jArr2;
        if (obj == null) {
            bx1Var.L();
            return;
        }
        bx1Var.r();
        switch (this.b) {
            case 0:
                i = 0;
                jArr = new long[]{ku1.m(obj).getValue()};
                jArr2 = jArr;
                break;
            case 1:
                i = 0;
                YearMonth yearMonthO = ku1.o(obj);
                jArr2 = new long[]{yearMonthO.getYear(), yearMonthO.getMonthValue()};
                break;
            case 2:
                i = 0;
                jArr2 = new long[]{ku1.i(obj).getSeconds(), r2.getNano()};
                break;
            case 3:
                i = 0;
                jArr2 = new long[]{nu1.g(obj).getEpochSecond(), r2.getNano()};
                break;
            case 4:
                i = 0;
                LocalDate localDateI = nu1.i(obj);
                jArr = new long[]{localDateI.getYear(), localDateI.getMonthValue(), localDateI.getDayOfMonth()};
                jArr2 = jArr;
                break;
            case 5:
                i = 0;
                LocalTime localTimeM = nu1.m(obj);
                jArr2 = new long[]{localTimeM.getHour(), localTimeM.getMinute(), localTimeM.getSecond(), localTimeM.getNano()};
                break;
            case 6:
                i = 0;
                MonthDay monthDayK = pu1.k(obj);
                jArr2 = new long[]{monthDayK.getMonthValue(), monthDayK.getDayOfMonth()};
                break;
            case 7:
                i = 0;
                Period periodQ = pu1.q(obj);
                jArr = new long[]{periodQ.getYears(), periodQ.getMonths(), periodQ.getDays()};
                jArr2 = jArr;
                break;
            default:
                Calendar calendar = (Calendar) obj;
                i = 0;
                jArr2 = new long[]{calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(11), calendar.get(12), calendar.get(13)};
                break;
        }
        int i2 = i;
        while (true) {
            List list = this.a;
            if (i2 >= list.size()) {
                bx1Var.B();
                return;
            } else {
                bx1Var.F((String) list.get(i2));
                bx1Var.i0(jArr2[i2]);
                i2++;
            }
        }
    }
}
