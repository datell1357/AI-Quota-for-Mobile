package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class er2 {
    public final Context a;
    public final ln3 b;
    public final rd3 c;
    public final cx2 d;
    public final String e;
    public final r51 f;
    public final y00 g;
    public final y00 h;
    public final y00 i;
    public final h41 j;

    public er2(Context context, ln3 ln3Var, rd3 rd3Var, cx2 cx2Var, String str, r51 r51Var, y00 y00Var, y00 y00Var2, y00 y00Var3, h41 h41Var) {
        this.a = context;
        this.b = ln3Var;
        this.c = rd3Var;
        this.d = cx2Var;
        this.e = str;
        this.f = r51Var;
        this.g = y00Var;
        this.h = y00Var2;
        this.i = y00Var3;
        this.j = h41Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof er2)) {
            return false;
        }
        er2 er2Var = (er2) obj;
        return nt1.g(this.a, er2Var.a) && nt1.g(this.b, er2Var.b) && this.c == er2Var.c && this.d == er2Var.d && nt1.g(this.e, er2Var.e) && nt1.g(this.f, er2Var.f) && this.g == er2Var.g && this.h == er2Var.h && this.i == er2Var.i && nt1.g(this.j, er2Var.j);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.e;
        return this.j.a.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Options(context=" + this.a + ", size=" + this.b + ", scale=" + this.c + ", precision=" + this.d + ", diskCacheKey=" + this.e + ", fileSystem=" + this.f + ", memoryCachePolicy=" + this.g + ", diskCachePolicy=" + this.h + ", networkCachePolicy=" + this.i + ", extras=" + this.j + ")";
    }
}
