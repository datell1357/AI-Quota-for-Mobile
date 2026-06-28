package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hr1 {
    public final /* synthetic */ int a;
    public final ek1 b;
    public final ek1 c;
    public final ek1 d;
    public final ek1 e;
    public final Serializable f;

    /* JADX WARN: Multi-variable type inference failed */
    public hr1(hr1[] hr1VarArr) {
        int i = 0;
        this.a = 0;
        this.f = hr1VarArr;
        int length = hr1VarArr.length;
        ek1[] ek1VarArr = new ek1[length];
        for (int i2 = 0; i2 < length; i2++) {
            ek1VarArr[i2] = ((hr1[]) this.f)[i2].b();
        }
        int i3 = 1;
        this.b = new ek1(1, new bb4(ek1VarArr, i));
        int length2 = ((hr1[]) this.f).length;
        ek1[] ek1VarArr2 = new ek1[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            ek1VarArr2[i4] = ((hr1[]) this.f)[i4].d();
        }
        this.c = new ek1(0, new dk1(ek1VarArr2, i));
        int length3 = ((hr1[]) this.f).length;
        ek1[] ek1VarArr3 = new ek1[length3];
        for (int i5 = 0; i5 < length3; i5++) {
            ek1VarArr3[i5] = ((hr1[]) this.f)[i5].c();
        }
        this.d = new ek1(1, new bb4(ek1VarArr3, i3));
        int length4 = ((hr1[]) this.f).length;
        ek1[] ek1VarArr4 = new ek1[length4];
        for (int i6 = 0; i6 < length4; i6++) {
            ek1VarArr4[i6] = ((hr1[]) this.f)[i6].a();
        }
        this.e = new ek1(0, new dk1(ek1VarArr4, i3));
    }

    public final ek1 a() {
        int i = this.a;
        return this.e;
    }

    public final ek1 b() {
        int i = this.a;
        return this.b;
    }

    public final ek1 c() {
        int i = this.a;
        return this.d;
    }

    public final ek1 d() {
        int i = this.a;
        return this.c;
    }

    public final String toString() {
        int i = this.a;
        Object obj = this.f;
        switch (i) {
            case 0:
                StringBuilder sb = new StringBuilder();
                sb.append((CharSequence) "innermostOf(");
                int i2 = 0;
                for (hr1 hr1Var : (hr1[]) obj) {
                    i2++;
                    if (i2 > 1) {
                        sb.append((CharSequence) ", ");
                    }
                    kt4.n(sb, hr1Var, null);
                }
                sb.append((CharSequence) ")");
                return sb.toString();
            default:
                String str = (String) obj;
                return str != null ? di0.v("RectRulers(", str, ")") : super.toString();
        }
    }

    public hr1(String str) {
        this.a = 1;
        this.f = str;
        this.b = new ek1(1, null);
        this.c = new ek1(0, null);
        this.d = new ek1(1, null);
        this.e = new ek1(0, null);
    }
}
