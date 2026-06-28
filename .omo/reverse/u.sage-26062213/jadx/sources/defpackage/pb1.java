package defpackage;

import com.google.api.client.http.HttpStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pb1 implements Comparable {
    public static final pb1 o;
    public static final pb1 p;
    public static final pb1 q;
    public static final pb1 r;
    public final int n;

    static {
        pb1 pb1Var = new pb1(100);
        pb1 pb1Var2 = new pb1(HttpStatusCodes.STATUS_CODE_OK);
        pb1 pb1Var3 = new pb1(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES);
        pb1 pb1Var4 = new pb1(HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
        pb1 pb1Var5 = new pb1(500);
        pb1 pb1Var6 = new pb1(600);
        o = pb1Var6;
        pb1 pb1Var7 = new pb1(700);
        pb1 pb1Var8 = new pb1(800);
        pb1 pb1Var9 = new pb1(900);
        p = pb1Var4;
        q = pb1Var5;
        r = pb1Var7;
        tv4.F(pb1Var, pb1Var2, pb1Var3, pb1Var4, pb1Var5, pb1Var6, pb1Var7, pb1Var8, pb1Var9);
    }

    public pb1(int i) {
        this.n = i;
        boolean z = false;
        if (1 <= i && i < 1001) {
            z = true;
        }
        if (z) {
            return;
        }
        br1.a("Font weight can be in range [1, 1000]. Current value: " + i);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return nt1.l(this.n, ((pb1) obj).n);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof pb1) {
            return this.n == ((pb1) obj).n;
        }
        return false;
    }

    public final int hashCode() {
        return this.n;
    }

    public final String toString() {
        return xw1.q("FontWeight(weight=", this.n, ")");
    }
}
