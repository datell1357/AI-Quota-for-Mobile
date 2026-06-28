package defpackage;

import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class az0 {
    public static final long[] e = new long[0];
    public long a;
    public Object b;
    public Object c;
    public final Object d;

    public az0(gi3 gi3Var, ha1 ha1Var) {
        gi3Var.getClass();
        this.b = gi3Var;
        this.c = ha1Var;
        int iD = gi3Var.d();
        if (iD <= 64) {
            this.a = iD != 64 ? (-1) << iD : 0L;
            this.d = e;
            return;
        }
        this.a = 0L;
        int i = (iD - 1) >>> 6;
        long[] jArr = new long[i];
        if ((iD & 63) != 0) {
            jArr[i - 1] = (-1) << iD;
        }
        this.d = jArr;
    }

    public int a(i23 i23Var, long j) {
        TimeZone timeZone = hi4.a;
        ArrayList arrayList = i23Var.p;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + i23Var.c.a.h + " was leaked. Did you forget to close a response body?";
                iv2 iv2Var = iv2.a;
                iv2.a.j(((f23) reference).a, str);
                arrayList.remove(i);
                if (arrayList.isEmpty()) {
                    i23Var.q = j - this.a;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0103 A[PHI: r6 r16 r17
  0x0103: PHI (r6v4 android.database.Cursor) = (r6v3 android.database.Cursor), (r6v6 android.database.Cursor) binds: [B:61:0x012e, B:46:0x00fc] A[DONT_GENERATE, DONT_INLINE]
  0x0103: PHI (r16v5 u35) = (r16v3 u35), (r16v9 u35) binds: [B:61:0x012e, B:46:0x00fc] A[DONT_GENERATE, DONT_INLINE]
  0x0103: PHI (r17v4 long) = (r17v2 long), (r17v7 long) binds: [B:61:0x012e, B:46:0x00fc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01fc  */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34, types: [android.util.Pair] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.u35 b(java.lang.String r20, defpackage.u35 r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az0.b(java.lang.String, u35):u35");
    }

    public az0(tw3 tw3Var) {
        tw3Var.getClass();
        TimeUnit.MINUTES.getClass();
        this.a = 300000000000L;
        this.b = tw3Var.d();
        this.c = new j23(this, xw1.s(new StringBuilder(), hi4.b, " ConnectionPool connection closer"));
        this.d = new ConcurrentLinkedQueue();
    }
}
