package defpackage;

import java.util.Calendar;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bm4 extends b70 {
    public final am4 p;

    public bm4(zg5 zg5Var, int i, am4 am4Var) {
        super(zg5Var, i);
        this.p = am4Var;
        StringBuilder sb = new StringBuilder("%");
        zg5Var.d(sb);
        sb.append(true != zg5Var.c() ? 't' : 'T');
        sb.append(am4Var.n);
    }

    @Override // defpackage.b70
    public final void L(tz0 tz0Var, Object obj) {
        zg5 zg5Var = (zg5) this.o;
        StringBuilder sb = (StringBuilder) tz0Var.g;
        boolean z = obj instanceof Date;
        am4 am4Var = this.p;
        if (z || (obj instanceof Calendar) || (obj instanceof Long)) {
            StringBuilder sb2 = new StringBuilder("%");
            zg5Var.d(sb2);
            sb2.append(true != zg5Var.c() ? 't' : 'T');
            sb2.append(am4Var.n);
            sb.append(String.format(bh5.a, sb2.toString(), obj));
            return;
        }
        char c = am4Var.n;
        StringBuilder sb3 = new StringBuilder(String.valueOf(c).length() + 2);
        sb3.append("%t");
        sb3.append(c);
        tz0.h(sb, obj, sb3.toString());
    }
}
