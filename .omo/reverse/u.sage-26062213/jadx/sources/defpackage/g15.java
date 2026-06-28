package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.math.BigInteger;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g15 extends j05 {
    public String c;
    public String d;
    public int e;
    public String f;
    public String g;
    public long h;
    public final long i;
    public final long j;
    public List k;
    public String l;
    public final String m;
    public int n;
    public String o;
    public String p;
    public long q;
    public String r;

    public g15(r45 r45Var, long j, long j2, String str) {
        super(r45Var);
        this.q = 0L;
        this.r = null;
        this.i = j;
        this.j = j2;
        this.m = str;
    }

    public final void A() {
        String str;
        v();
        r45 r45Var = (r45) this.a;
        f35 f35Var = r45Var.e;
        a25 a25Var = r45Var.f;
        r45.j(f35Var);
        if (f35Var.C().i(x55.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            ac5 ac5Var = r45Var.i;
            r45.j(ac5Var);
            ac5Var.t0().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            r45.l(a25Var);
            a25Var.m.a("Analytics Storage consent is not granted");
            str = null;
        }
        r45.l(a25Var);
        a25Var.m.a("Resetting session stitching token to ".concat(str == null ? "null" : "not null"));
        this.p = str;
        this.q = r45Var.k.currentTimeMillis();
    }

    public final String B() {
        w();
        Preconditions.checkNotNull(this.c);
        return this.c;
    }

    public final String C() {
        v();
        w();
        Preconditions.checkNotNull(this.o);
        return this.o;
    }

    @Override // defpackage.j05
    public final boolean y() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x025f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0259  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.vc5 z(java.lang.String r49) {
        /*
            Method dump skipped, instruction units count: 861
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g15.z(java.lang.String):vc5");
    }
}
