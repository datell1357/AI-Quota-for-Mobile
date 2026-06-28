package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qa2 extends j1 {
    public final /* synthetic */ int n = 1;
    public final Object o;

    public qa2(List list) {
        list.getClass();
        this.o = list;
    }

    @Override // defpackage.w
    public final int a() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((Matcher) ((qd1) obj).o).groupCount() + 1;
            default:
                return ((List) obj).size();
        }
    }

    @Override // defpackage.w, java.util.Collection, java.util.List
    public /* bridge */ boolean contains(Object obj) {
        switch (this.n) {
            case 0:
                if (obj instanceof String) {
                    return super.contains((String) obj);
                }
                return false;
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.n;
        Object obj = this.o;
        switch (i2) {
            case 0:
                String strGroup = ((Matcher) ((qd1) obj).o).group(i);
                return strGroup == null ? "" : strGroup;
            default:
                List list = (List) obj;
                if (i >= 0 && i <= tv4.v(this)) {
                    return list.get(tv4.v(this) - i);
                }
                StringBuilder sbU = xw1.u("Element index ", i, " must be in range [");
                sbU.append(new ms1(0, tv4.v(this), 1));
                sbU.append("].");
                throw new IndexOutOfBoundsException(sbU.toString());
        }
    }

    @Override // defpackage.j1, java.util.List
    public /* bridge */ int indexOf(Object obj) {
        switch (this.n) {
            case 0:
                if (obj instanceof String) {
                    return super.indexOf((String) obj);
                }
                return -1;
            default:
                return super.indexOf(obj);
        }
    }

    @Override // defpackage.j1, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        switch (this.n) {
            case 1:
                return new r83(this, 0);
            default:
                return super.iterator();
        }
    }

    @Override // defpackage.j1, java.util.List
    public /* bridge */ int lastIndexOf(Object obj) {
        switch (this.n) {
            case 0:
                if (obj instanceof String) {
                    return super.lastIndexOf((String) obj);
                }
                return -1;
            default:
                return super.lastIndexOf(obj);
        }
    }

    @Override // defpackage.j1, java.util.List
    public ListIterator listIterator() {
        switch (this.n) {
            case 1:
                return new r83(this, 0);
            default:
                return super.listIterator();
        }
    }

    public qa2(qd1 qd1Var) {
        this.o = qd1Var;
    }

    @Override // defpackage.j1, java.util.List
    public ListIterator listIterator(int i) {
        switch (this.n) {
            case 1:
                return new r83(this, i);
            default:
                return super.listIterator(i);
        }
    }
}
