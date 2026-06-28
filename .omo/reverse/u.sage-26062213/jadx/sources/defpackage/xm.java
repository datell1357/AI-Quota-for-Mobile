package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xm extends jk0 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final Long e;
    public final boolean f;
    public final rj0 g;
    public final ik0 h;
    public final hk0 i;
    public final sj0 j;
    public final List k;
    public final int l;

    public xm(String str, String str2, String str3, long j, Long l, boolean z, rj0 rj0Var, ik0 ik0Var, hk0 hk0Var, sj0 sj0Var, List list, int i) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = l;
        this.f = z;
        this.g = rj0Var;
        this.h = ik0Var;
        this.i = hk0Var;
        this.j = sj0Var;
        this.k = list;
        this.l = i;
    }

    @Override // defpackage.jk0
    public final wm a() {
        wm wmVar = new wm();
        wmVar.a = this.a;
        wmVar.b = this.b;
        wmVar.c = this.c;
        wmVar.d = this.d;
        wmVar.e = this.e;
        wmVar.f = this.f;
        wmVar.g = this.g;
        wmVar.h = this.h;
        wmVar.i = this.i;
        wmVar.j = this.j;
        wmVar.k = this.k;
        wmVar.l = this.l;
        wmVar.m = (byte) 7;
        return wmVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof jk0) {
            xm xmVar = (xm) ((jk0) obj);
            if (this.a.equals(xmVar.a) && this.b.equals(xmVar.b)) {
                String str = xmVar.c;
                String str2 = this.c;
                if (str2 != null ? str2.equals(str) : str == null) {
                    if (this.d == xmVar.d) {
                        Long l = xmVar.e;
                        Long l2 = this.e;
                        if (l2 != null ? l2.equals(l) : l == null) {
                            if (this.f == xmVar.f && this.g.equals(xmVar.g)) {
                                ik0 ik0Var = xmVar.h;
                                ik0 ik0Var2 = this.h;
                                if (ik0Var2 != null ? ik0Var2.equals(ik0Var) : ik0Var == null) {
                                    hk0 hk0Var = xmVar.i;
                                    hk0 hk0Var2 = this.i;
                                    if (hk0Var2 != null ? hk0Var2.equals(hk0Var) : hk0Var == null) {
                                        sj0 sj0Var = xmVar.j;
                                        sj0 sj0Var2 = this.j;
                                        if (sj0Var2 != null ? sj0Var2.equals(sj0Var) : sj0Var == null) {
                                            List list = xmVar.k;
                                            List list2 = this.k;
                                            if (list2 != null ? list2.equals(list) : list == null) {
                                                if (this.l == xmVar.l) {
                                                    return true;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        String str = this.c;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j = this.d;
        int i = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003;
        Long l = this.e;
        int iHashCode3 = (((((i ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.f ? 1231 : 1237)) * 1000003) ^ this.g.hashCode()) * 1000003;
        ik0 ik0Var = this.h;
        int iHashCode4 = (iHashCode3 ^ (ik0Var == null ? 0 : ik0Var.hashCode())) * 1000003;
        hk0 hk0Var = this.i;
        int iHashCode5 = (iHashCode4 ^ (hk0Var == null ? 0 : hk0Var.hashCode())) * 1000003;
        sj0 sj0Var = this.j;
        int iHashCode6 = (iHashCode5 ^ (sj0Var == null ? 0 : sj0Var.hashCode())) * 1000003;
        List list = this.k;
        return this.l ^ ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Session{generator=");
        sb.append(this.a);
        sb.append(", identifier=");
        sb.append(this.b);
        sb.append(", appQualitySessionId=");
        sb.append(this.c);
        sb.append(", startedAt=");
        sb.append(this.d);
        sb.append(", endedAt=");
        sb.append(this.e);
        sb.append(", crashed=");
        sb.append(this.f);
        sb.append(", app=");
        sb.append(this.g);
        sb.append(", user=");
        sb.append(this.h);
        sb.append(", os=");
        sb.append(this.i);
        sb.append(", device=");
        sb.append(this.j);
        sb.append(", events=");
        sb.append(this.k);
        sb.append(", generatorType=");
        return xw1.p(this.l, "}", sb);
    }
}
