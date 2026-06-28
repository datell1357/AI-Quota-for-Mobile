package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pa4 extends xx1 implements pe1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ qa4 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ pa4(qa4 qa4Var, int i) {
        super(1);
        this.o = i;
        this.p = qa4Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        long j;
        int i = this.o;
        qa4 qa4Var = this.p;
        switch (i) {
            case 0:
                k14 k14Var = (k14) obj;
                b11 b11Var = b11.n;
                b11 b11Var2 = b11.o;
                if (k14Var.a(b11Var, b11Var2)) {
                    o14 o14Var = qa4Var.C.a;
                    return j11.c;
                }
                if (!k14Var.a(b11Var2, b11.p)) {
                    return j11.c;
                }
                o14 o14Var2 = qa4Var.D.a;
                return j11.c;
            default:
                int iOrdinal = ((b11) obj).ordinal();
                if (iOrdinal == 0) {
                    o14 o14Var3 = qa4Var.C.a;
                    j = t70.e;
                } else if (iOrdinal == 1) {
                    o14 o14Var4 = qa4Var.C.a;
                    o14 o14Var5 = qa4Var.D.a;
                    j = t70.e;
                } else {
                    if (iOrdinal != 2) {
                        p61.x();
                        return null;
                    }
                    o14 o14Var6 = qa4Var.D.a;
                    j = qa4Var.E.e;
                }
                return new t70(j);
        }
    }
}
