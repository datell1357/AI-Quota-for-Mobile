package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v2 extends nq0 {
    public static v2 c;

    @Override // defpackage.nq0
    public final int[] b(int i) {
        int length = d().length();
        if (length <= 0 || i >= length) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < length && d().charAt(i) == '\n' && (d().charAt(i) == '\n' || (i != 0 && d().charAt(i - 1) != '\n'))) {
            i++;
        }
        if (i >= length) {
            return null;
        }
        int i2 = i + 1;
        while (i2 < length && !l(i2)) {
            i2++;
        }
        return c(i, i2);
    }

    @Override // defpackage.nq0
    public final int[] k(int i) {
        int length = d().length();
        if (length <= 0 || i <= 0) {
            return null;
        }
        if (i > length) {
            i = length;
        }
        while (i > 0 && d().charAt(i - 1) == '\n' && !l(i)) {
            i--;
        }
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        while (i2 > 0 && (d().charAt(i2) == '\n' || (i2 != 0 && d().charAt(i2 - 1) != '\n'))) {
            i2--;
        }
        return c(i2, i);
    }

    public final boolean l(int i) {
        if (i <= 0 || d().charAt(i - 1) == '\n') {
            return false;
        }
        return i == d().length() || d().charAt(i) == '\n';
    }
}
