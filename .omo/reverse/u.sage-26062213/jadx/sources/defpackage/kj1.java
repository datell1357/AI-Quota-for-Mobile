package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kj1 implements Iterable, fx1 {
    public static final kj1 o = new kj1(new String[0]);
    public final String[] n;

    public kj1(String[] strArr) {
        strArr.getClass();
        this.n = strArr;
    }

    public final String a(String str) {
        String[] strArr = this.n;
        strArr.getClass();
        int length = strArr.length - 2;
        int iJ = zf5.J(length, 0, -2);
        if (iJ > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == iJ) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final String d(int i) {
        String str = (String) ji.Z(i * 2, this.n);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i + ']');
    }

    public final dh1 e() {
        dh1 dh1Var = new dh1(19, false);
        ArrayList arrayList = (ArrayList) dh1Var.n;
        arrayList.getClass();
        String[] strArr = this.n;
        strArr.getClass();
        List listAsList = Arrays.asList(strArr);
        listAsList.getClass();
        arrayList.addAll(listAsList);
        return dh1Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof kj1) {
            return Arrays.equals(this.n, ((kj1) obj).n);
        }
        return false;
    }

    public final String f(int i) {
        String str = (String) ji.Z((i * 2) + 1, this.n);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i + ']');
    }

    public final int hashCode() {
        return Arrays.hashCode(this.n);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        js2[] js2VarArr = new js2[size];
        for (int i = 0; i < size; i++) {
            js2VarArr[i] = new js2(d(i), f(i));
        }
        return new g1(1, js2VarArr);
    }

    public final int size() {
        return this.n.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String strD = d(i);
            String strF = f(i);
            sb.append(strD);
            sb.append(": ");
            if (fi4.i(strD)) {
                strF = "██";
            }
            sb.append(strF);
            sb.append("\n");
        }
        return sb.toString();
    }
}
