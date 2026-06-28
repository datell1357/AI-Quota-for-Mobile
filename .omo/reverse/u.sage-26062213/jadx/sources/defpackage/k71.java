package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k71 extends bc1 {
    public final long o;
    public final boolean p;
    public long q;

    public k71(yp3 yp3Var, long j, boolean z) {
        super(yp3Var);
        this.o = j;
        this.p = z;
    }

    @Override // defpackage.bc1, defpackage.yp3
    public final long l(long j, sy syVar) throws IOException {
        syVar.getClass();
        long j2 = this.q;
        long j3 = this.o;
        if (j2 > j3) {
            j = 0;
        } else if (this.p) {
            long j4 = j3 - j2;
            if (j4 == 0) {
                return -1L;
            }
            j = Math.min(j, j4);
        }
        long jL = this.n.l(j, syVar);
        if (jL != -1) {
            this.q += jL;
        }
        long j5 = this.q;
        if ((j5 >= j3 || jL != -1) && j5 <= j3) {
            return jL;
        }
        if (jL > 0 && j5 > j3) {
            long j6 = syVar.o - (j5 - j3);
            sy syVar2 = new sy();
            syVar2.n0(syVar);
            syVar.J(j6, syVar2);
            syVar2.skip(syVar2.o);
        }
        throw new IOException("expected " + j3 + " bytes but got " + this.q);
    }
}
