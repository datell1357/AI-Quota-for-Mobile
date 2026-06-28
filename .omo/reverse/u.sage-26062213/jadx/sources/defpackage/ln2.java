package defpackage;

import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ln2 implements h34 {
    public final /* synthetic */ int n;
    public final /* synthetic */ g34 o;

    public /* synthetic */ ln2(g34 g34Var, int i) {
        this.n = i;
        this.o = g34Var;
    }

    @Override // defpackage.h34
    public final g34 a(pi1 pi1Var, q44 q44Var) {
        int i = this.n;
        g34 g34Var = this.o;
        switch (i) {
            case 0:
                if (q44Var.a == Number.class) {
                    return (mn2) g34Var;
                }
                return null;
            default:
                Class cls = q44Var.a;
                if (cls == Calendar.class || cls == GregorianCalendar.class) {
                    return (lu1) g34Var;
                }
                return null;
        }
    }

    public String toString() {
        switch (this.n) {
            case 1:
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((lu1) this.o) + "]";
            default:
                return super.toString();
        }
    }
}
