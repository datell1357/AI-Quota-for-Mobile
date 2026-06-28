package defpackage;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kh0 implements Serializable, Comparator {
    public static final kh0 o = new kh0(0);
    public final /* synthetic */ int n;

    public /* synthetic */ kh0(int i) {
        this.n = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.n) {
            case 0:
                ku kuVar = (ku) obj2;
                String strConcat = ((ku) obj).s;
                if (strConcat == null) {
                    strConcat = "/";
                }
                if (!strConcat.endsWith("/")) {
                    strConcat = strConcat.concat("/");
                }
                String strConcat2 = kuVar.s;
                if (strConcat2 == null) {
                    strConcat2 = "/";
                }
                if (!strConcat2.endsWith("/")) {
                    strConcat2 = strConcat2.concat("/");
                }
                if (!strConcat.equals(strConcat2)) {
                    if (strConcat.startsWith(strConcat2)) {
                        return -1;
                    }
                    if (strConcat2.startsWith(strConcat)) {
                        return 1;
                    }
                }
                return 0;
            default:
                ku kuVar2 = (ku) obj;
                ku kuVar3 = (ku) obj2;
                int iCompareTo = kuVar2.n.compareTo(kuVar3.n);
                if (iCompareTo == 0) {
                    String strConcat3 = kuVar2.q;
                    if (strConcat3 == null) {
                        strConcat3 = "";
                    } else if (strConcat3.indexOf(46) == -1) {
                        strConcat3 = strConcat3.concat(".local");
                    }
                    String str = kuVar3.q;
                    iCompareTo = strConcat3.compareToIgnoreCase(str != null ? str.indexOf(46) == -1 ? str.concat(".local") : str : "");
                }
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                String str2 = kuVar2.s;
                if (str2 == null) {
                    str2 = "/";
                }
                String str3 = kuVar3.s;
                return str2.compareTo(str3 != null ? str3 : "/");
        }
    }
}
