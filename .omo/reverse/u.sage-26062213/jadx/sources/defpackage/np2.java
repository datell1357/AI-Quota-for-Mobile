package defpackage;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class np2 {
    public boolean a;
    public UUID b;
    public og4 c;
    public final LinkedHashSet d;
    public final /* synthetic */ int e;

    public np2(Class cls, int i) {
        this.e = i;
        UUID uuidRandomUUID = UUID.randomUUID();
        uuidRandomUUID.getClass();
        this.b = uuidRandomUUID;
        String string = this.b.toString();
        string.getClass();
        this.c = new og4(string, (cg4) null, cls.getName(), (String) null, (zl0) null, (zl0) null, 0L, 0L, 0L, (lf0) null, 0, (jq) null, 0L, 0L, 0L, 0L, false, (jr2) null, 0, 0L, 0, 0, (String) null, (Boolean) null, 33554426);
        String[] strArr = {cls.getName()};
        LinkedHashSet linkedHashSet = new LinkedHashSet(oa2.a0(1));
        linkedHashSet.add(strArr[0]);
        this.d = linkedHashSet;
    }

    public final mg4 a() {
        mg4 op2Var;
        int i = this.e;
        LinkedHashSet linkedHashSet = this.d;
        switch (i) {
            case 0:
                if (this.a && this.c.j.d) {
                    k21.f("Cannot set backoff criteria on an idle mode job");
                    op2Var = null;
                } else {
                    op2Var = new op2(this.b, this.c, linkedHashSet);
                }
                break;
            default:
                if (this.a && this.c.j.d) {
                    k21.f("Cannot set backoff criteria on an idle mode job");
                } else {
                    og4 og4Var = this.c;
                    if (!og4Var.q) {
                        op2Var = new fu2(this.b, og4Var, linkedHashSet);
                    } else {
                        k21.f("PeriodicWorkRequests cannot be expedited");
                    }
                }
                op2Var = null;
                break;
        }
        lf0 lf0Var = this.c.j;
        boolean z = !lf0Var.i.isEmpty() || lf0Var.e || lf0Var.c || lf0Var.d;
        og4 og4Var2 = this.c;
        if (og4Var2.q) {
            if (z) {
                k21.f("Expedited jobs only support network and storage constraints");
                return null;
            }
            if (og4Var2.g > 0) {
                k21.f("Expedited jobs cannot be delayed");
                return null;
            }
        }
        String str = og4Var2.x;
        if (str == null) {
            List listQ0 = zs3.Q0(og4Var2.c, new String[]{"."});
            String strX0 = listQ0.size() == 1 ? (String) listQ0.get(0) : (String) o70.o0(listQ0);
            if (strX0.length() > 127) {
                strX0 = zs3.X0(127, strX0);
            }
            og4Var2.x = strX0;
        } else if (str.length() > 127) {
            this.c.x = zs3.X0(127, str);
        }
        UUID uuidRandomUUID = UUID.randomUUID();
        uuidRandomUUID.getClass();
        this.b = uuidRandomUUID;
        String string = uuidRandomUUID.toString();
        string.getClass();
        og4 og4Var3 = this.c;
        og4Var3.getClass();
        mg4 mg4Var = op2Var;
        this.c = new og4(string, og4Var3.b, og4Var3.c, og4Var3.d, new zl0(og4Var3.e), new zl0(og4Var3.f), og4Var3.g, og4Var3.h, og4Var3.i, new lf0(og4Var3.j), og4Var3.k, og4Var3.l, og4Var3.m, og4Var3.n, og4Var3.o, og4Var3.p, og4Var3.q, og4Var3.r, og4Var3.s, og4Var3.f243u, og4Var3.v, og4Var3.w, og4Var3.x, og4Var3.y, 524288);
        return mg4Var;
    }

    public final np2 b(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        this.c.g = timeUnit.toMillis(j);
        if (Long.MAX_VALUE - System.currentTimeMillis() > this.c.g) {
            return this;
        }
        k21.f("The given initial delay is too large and will cause an overflow!");
        return null;
    }
}
