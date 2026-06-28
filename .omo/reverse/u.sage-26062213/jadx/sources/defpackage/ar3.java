package defpackage;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ar3 extends g34 {
    public static final a b = new a();
    public final SimpleDateFormat a;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class a implements h34 {
        @Override // defpackage.h34
        public final g34 a(pi1 pi1Var, q44 q44Var) {
            if (q44Var.a == Time.class) {
                return new ar3(0);
            }
            return null;
        }
    }

    private ar3() {
        this.a = new SimpleDateFormat("hh:mm:ss a");
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) {
        Time time;
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        String strQ0 = ww1Var.q0();
        synchronized (this) {
            TimeZone timeZone = this.a.getTimeZone();
            try {
                try {
                    time = new Time(this.a.parse(strQ0).getTime());
                } catch (ParseException e) {
                    throw new fw1(5, "Failed parsing '" + strQ0 + "' as SQL Time; at path " + ww1Var.K(true), e);
                }
            } finally {
                this.a.setTimeZone(timeZone);
            }
        }
        return time;
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        String str;
        Time time = (Time) obj;
        if (time == null) {
            bx1Var.L();
            return;
        }
        synchronized (this) {
            str = this.a.format((Date) time);
        }
        bx1Var.n0(str);
    }

    public /* synthetic */ ar3(int i) {
        this();
    }
}
