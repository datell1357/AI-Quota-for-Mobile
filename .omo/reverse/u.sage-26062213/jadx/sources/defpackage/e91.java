package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e91 {
    public int a;
    public long b;
    public int c;
    public Object d;

    public e91(i91 i91Var, long j, int i, int i2) {
        this.d = i91Var;
        this.b = j;
        this.a = i;
        this.c = i2;
    }

    public static /* synthetic */ String c(int i, int i2, byte b, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + b + String.valueOf(i).length());
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i);
        return sb.toString();
    }

    public mt1 a(d91 d91Var, boolean z, int i, int i2, int i3, int i4) {
        if (!d91Var.b) {
            return null;
        }
        ((i91) this.d).getClass();
        return null;
    }

    public d91 b(boolean z, int i, long j, ds1 ds1Var, int i2, int i3, int i4, boolean z2, boolean z3) {
        int i5 = this.a;
        int i6 = this.c;
        long j2 = this.b;
        i91 i91Var = (i91) this.d;
        int i7 = i3 + i4;
        if (ds1Var == null) {
            return new d91(true, true);
        }
        long j3 = ds1Var.a;
        i91Var.getClass();
        if (i2 >= Integer.MAX_VALUE || ((int) (j & 4294967295L)) - ((int) (j3 & 4294967295L)) < 0) {
            return new d91(true, true);
        }
        if (i != 0 && (i >= Integer.MAX_VALUE || ((int) (j >> 32)) - ((int) (j3 >> 32)) < 0)) {
            return z2 ? new d91(true, true) : new d91(true, b(z, 0, ds1.a(mf0.h(j2), (((int) (j & 4294967295L)) - i6) - i4), new ds1(ds1.a(((int) (j3 >> 32)) - i5, (int) (j3 & 4294967295L))), i2 + 1, i7, 0, true, false).b);
        }
        Math.max(i4, (int) (j3 & 4294967295L));
        return new d91(false, false);
    }

    public e91(kn4 kn4Var) {
        kn4Var.getClass();
    }
}
