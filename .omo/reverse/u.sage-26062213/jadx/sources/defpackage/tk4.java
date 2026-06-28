package defpackage;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tk4 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ String o;
    public final /* synthetic */ long p;
    public final /* synthetic */ bx4 q;

    public /* synthetic */ tk4(bx4 bx4Var, String str, long j, int i) {
        this.n = i;
        this.o = str;
        this.p = j;
        this.q = bx4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        long j = this.p;
        String str = this.o;
        bx4 bx4Var = this.q;
        switch (i) {
            case 0:
                bx4Var.v();
                Preconditions.checkNotEmpty(str);
                di diVar = bx4Var.c;
                if (diVar.isEmpty()) {
                    bx4Var.d = j;
                }
                Integer num = (Integer) diVar.get(str);
                if (num != null) {
                    diVar.put(str, Integer.valueOf(num.intValue() + 1));
                } else if (diVar.p < 100) {
                    diVar.put(str, 1);
                    bx4Var.b.put(str, Long.valueOf(j));
                } else {
                    a25 a25Var = ((r45) bx4Var.a).f;
                    r45.l(a25Var);
                    a25Var.i.a("Too many ads visible");
                }
                break;
            default:
                bx4Var.v();
                Preconditions.checkNotEmpty(str);
                di diVar2 = bx4Var.c;
                Integer num2 = (Integer) diVar2.get(str);
                r45 r45Var = (r45) bx4Var.a;
                if (num2 == null) {
                    a25 a25Var2 = r45Var.f;
                    r45.l(a25Var2);
                    a25Var2.f.b(str, "Call to endAdUnitExposure for unknown ad unit id");
                } else {
                    f85 f85Var = r45Var.l;
                    a25 a25Var3 = r45Var.f;
                    r45.k(f85Var);
                    w75 w75VarZ = f85Var.z(false);
                    int iIntValue = num2.intValue() - 1;
                    if (iIntValue != 0) {
                        diVar2.put(str, Integer.valueOf(iIntValue));
                    } else {
                        diVar2.remove(str);
                        di diVar3 = bx4Var.b;
                        Long l = (Long) diVar3.get(str);
                        if (l == null) {
                            r45.l(a25Var3);
                            a25Var3.f.a("First ad unit exposure time was never set");
                        } else {
                            long jLongValue = j - l.longValue();
                            diVar3.remove(str);
                            bx4Var.A(str, jLongValue, w75VarZ);
                        }
                        if (diVar2.isEmpty()) {
                            long j2 = bx4Var.d;
                            if (j2 != 0) {
                                bx4Var.z(j - j2, w75VarZ);
                                bx4Var.d = 0L;
                            } else {
                                r45.l(a25Var3);
                                a25Var3.f.a("First ad exposure time was never set");
                            }
                        }
                    }
                }
                break;
        }
    }
}
