package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ss4 implements Iterable, ls4 {
    public final String n;

    public ss4(String str) {
        if (str != null) {
            this.n = str;
        } else {
            k21.f("StringValue cannot be null.");
            throw null;
        }
    }

    @Override // defpackage.ls4
    public final Iterator a() {
        return new ps4(0, this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02e4 A[PHI: r8
  0x02e4: PHI (r8v6 boolean) = (r8v12 boolean), (r8v13 boolean), (r8v16 boolean) binds: [B:100:0x02d0, B:101:0x02d2, B:103:0x02e2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02ee A[LOOP:0: B:108:0x02ec->B:109:0x02ee, LOOP_END] */
    @Override // defpackage.ls4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.ls4 c(java.lang.String r29, defpackage.qd1 r30, java.util.ArrayList r31) {
        /*
            Method dump skipped, instruction units count: 1606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ss4.c(java.lang.String, qd1, java.util.ArrayList):ls4");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ss4) {
            return this.n.equals(((ss4) obj).n);
        }
        return false;
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        return new ss4(this.n);
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ps4(1, this);
    }

    public final String toString() {
        String str = this.n;
        return di0.y(new StringBuilder(str.length() + 2), "\"", str, "\"");
    }

    @Override // defpackage.ls4
    public final String zzc() {
        return this.n;
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        String str = this.n;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        return Boolean.valueOf(!this.n.isEmpty());
    }
}
