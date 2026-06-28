package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ox3 {
    public final nx3 a;
    public final se2 b;
    public final long c;
    public final float d;
    public final float e;
    public final ArrayList f;

    public ox3(nx3 nx3Var, se2 se2Var, long j) {
        this.a = nx3Var;
        this.b = se2Var;
        this.c = j;
        ArrayList arrayList = (ArrayList) se2Var.e;
        float fC = 0.0f;
        this.d = arrayList.isEmpty() ? 0.0f : ((ms2) arrayList.get(0)).a.d.c(0);
        if (!arrayList.isEmpty()) {
            ms2 ms2Var = (ms2) o70.o0(arrayList);
            fC = ms2Var.a.d.c(r4.f - 1) + ms2Var.f;
        }
        this.e = fC;
        this.f = (ArrayList) se2Var.d;
    }

    public final int a(int i) {
        se2 se2Var = this.b;
        ArrayList arrayList = (ArrayList) se2Var.e;
        ms2 ms2Var = (ms2) arrayList.get(i >= ((ff) ((rp) se2Var.c).b).o.length() ? tv4.v(arrayList) : i < 0 ? 0 : ca.p(i, arrayList));
        return ms2Var.a.d.f(ms2Var.a(i)) + ms2Var.d;
    }

    public final int b(float f) {
        int size;
        int i;
        ArrayList arrayList = (ArrayList) this.b.e;
        int lineForVertical = 0;
        if (f > 0.0f) {
            if (f < ((ms2) o70.o0(arrayList)).g) {
                int size2 = arrayList.size() - 1;
                int i2 = 0;
                while (true) {
                    if (i2 > size2) {
                        size = -(i2 + 1);
                        break;
                    }
                    int i3 = (i2 + size2) >>> 1;
                    ms2 ms2Var = (ms2) arrayList.get(i3);
                    byte b = ms2Var.f > f ? (byte) 1 : ms2Var.g <= f ? (byte) -1 : (byte) 0;
                    if (b >= 0) {
                        if (b <= 0) {
                            size = i3;
                            break;
                        }
                        size2 = i3 - 1;
                    } else {
                        i2 = i3 + 1;
                    }
                }
            } else {
                size = arrayList.size() - 1;
            }
        } else {
            size = 0;
        }
        ms2 ms2Var2 = (ms2) arrayList.get(size);
        int i4 = ms2Var2.c;
        int i5 = ms2Var2.d;
        if (i4 - ms2Var2.b == 0) {
            return i5;
        }
        nb nbVar = ms2Var2.a;
        float f2 = f - ms2Var2.f;
        mx3 mx3Var = nbVar.d;
        int i6 = (int) f2;
        int i7 = mx3Var.f;
        if (i7 > 0 && (lineForVertical = mx3Var.e.getLineForVertical(i6 - mx3Var.g)) > i7 - 1) {
            lineForVertical = i;
        }
        return lineForVertical + i5;
    }

    public final int c(int i) {
        se2 se2Var = this.b;
        se2Var.b(i);
        ArrayList arrayList = (ArrayList) se2Var.e;
        ms2 ms2Var = (ms2) arrayList.get(ca.q(i, arrayList));
        nb nbVar = ms2Var.a;
        return nbVar.d.e.getLineStart(i - ms2Var.d) + ms2Var.b;
    }

    public final float d(int i) {
        se2 se2Var = this.b;
        se2Var.b(i);
        ArrayList arrayList = (ArrayList) se2Var.e;
        ms2 ms2Var = (ms2) arrayList.get(ca.q(i, arrayList));
        nb nbVar = ms2Var.a;
        return nbVar.d.g(i - ms2Var.d) + ms2Var.f;
    }

    public final k73 e(int i) {
        se2 se2Var = this.b;
        ff ffVar = (ff) ((rp) se2Var.c).b;
        if (i < 0 || i > ffVar.o.length()) {
            br1.a("offset(" + i + ") is out of bounds [0, " + ffVar.o.length() + "]");
        }
        int length = ((ff) ((rp) se2Var.c).b).o.length();
        ArrayList arrayList = (ArrayList) se2Var.e;
        ms2 ms2Var = (ms2) arrayList.get(i == length ? tv4.v(arrayList) : ca.p(i, arrayList));
        nb nbVar = ms2Var.a;
        int iA = ms2Var.a(i);
        mx3 mx3Var = nbVar.d;
        return mx3Var.e.getParagraphDirection(mx3Var.f(iA)) == 1 ? k73.n : k73.o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ox3) {
            ox3 ox3Var = (ox3) obj;
            if (nt1.g(this.a, ox3Var.a) && this.b == ox3Var.b && rs1.a(this.c, ox3Var.c) && this.d == ox3Var.d && this.e == ox3Var.e && nt1.g(this.f, ox3Var.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f.hashCode() + di0.l(this.e, di0.l(this.d, xw1.l((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c), 31), 31);
    }

    public final String toString() {
        return "TextLayoutResult(layoutInput=" + this.a + ", multiParagraph=" + this.b + ", size=" + rs1.b(this.c) + ", firstBaseline=" + this.d + ", lastBaseline=" + this.e + ", placeholderRects=" + this.f + ")";
    }
}
