package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ak2 {
    public final /* synthetic */ int a = 1;
    public final long b;
    public final long c;
    public final Object d;
    public final Object e;
    public final Object f;

    public ak2(long j, long j2, Bundle bundle, String str, String str2) {
        this.d = str;
        this.e = str2;
        this.f = bundle;
        this.b = j;
        this.c = j2;
    }

    public static ak2 a(bu4 bu4Var) {
        String str = bu4Var.n;
        String str2 = bu4Var.p;
        return new ak2(bu4Var.q, bu4Var.r, bu4Var.o.j0(), str, str2);
    }

    public bu4 b() {
        zt4 zt4Var = new zt4(new Bundle((Bundle) this.f));
        String str = (String) this.e;
        return new bu4((String) this.d, zt4Var, str, this.b, this.c);
    }

    public String toString() {
        switch (this.a) {
            case 1:
                String str = (String) this.e;
                String string = ((Bundle) this.f).toString();
                int length = String.valueOf(str).length();
                String str2 = (String) this.d;
                StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + string.length());
                di0.E(sb, "origin=", str, ",name=", str2);
                return xw1.s(sb, ",params=", string);
            default:
                return super.toString();
        }
    }

    public ak2(nd2 nd2Var, long j, long j2, hd4 hd4Var, ka0 ka0Var) {
        this.d = nd2Var;
        this.b = j;
        this.c = j2;
        this.e = hd4Var;
        this.f = ka0Var;
    }
}
