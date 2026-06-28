package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gg5 extends ye4 {
    public Object[] b;
    public int c;

    @Override // defpackage.ye4
    public final int b() {
        return this.c;
    }

    @Override // defpackage.ye4
    public final og5 c(int i) {
        if (i < this.c) {
            return (og5) this.b[i + i];
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // defpackage.ye4
    public final Object d(int i) {
        if (i < this.c) {
            return this.b[i + i + 1];
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // defpackage.ye4
    public final Object e(og5 og5Var) {
        int iG = g(og5Var);
        if (iG == -1) {
            return null;
        }
        return og5Var.b.cast(this.b[iG + iG + 1]);
    }

    public final void f(og5 og5Var, Object obj) {
        int iG;
        if (!og5Var.c && (iG = g(og5Var)) != -1) {
            hm4.a(obj, "metadata value");
            this.b[iG + iG + 1] = obj;
            return;
        }
        int i = this.c + 1;
        Object[] objArr = this.b;
        int length = objArr.length;
        if (i + i > length) {
            this.b = Arrays.copyOf(objArr, length + length);
        }
        Object[] objArr2 = this.b;
        int i2 = this.c;
        int i3 = i2 + i2;
        objArr2[i3] = og5Var;
        hm4.a(obj, "metadata value");
        objArr2[i3 + 1] = obj;
        this.c++;
    }

    public final int g(og5 og5Var) {
        for (int i = 0; i < this.c; i++) {
            if (this.b[i + i].equals(og5Var)) {
                return i;
            }
        }
        return -1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metadata{");
        for (int i = 0; i < this.c; i++) {
            sb.append(" '");
            sb.append(c(i));
            sb.append("': ");
            sb.append(d(i));
        }
        sb.append(" }");
        return sb.toString();
    }
}
