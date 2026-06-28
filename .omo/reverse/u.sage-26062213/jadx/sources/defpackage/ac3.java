package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ac3 implements Iterable {
    public xb3 n;
    public xb3 o;
    public final WeakHashMap p = new WeakHashMap();
    public int q = 0;

    public xb3 a(Object obj) {
        xb3 xb3Var = this.n;
        while (xb3Var != null && !xb3Var.n.equals(obj)) {
            xb3Var = xb3Var.p;
        }
        return xb3Var;
    }

    public Object c(Object obj) {
        xb3 xb3VarA = a(obj);
        if (xb3VarA == null) {
            return null;
        }
        this.q--;
        WeakHashMap weakHashMap = this.p;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((zb3) it.next()).b(xb3VarA);
            }
        }
        xb3 xb3Var = xb3VarA.q;
        xb3 xb3Var2 = xb3VarA.p;
        if (xb3Var != null) {
            xb3Var.p = xb3Var2;
        } else {
            this.n = xb3Var2;
        }
        xb3 xb3Var3 = xb3VarA.p;
        if (xb3Var3 != null) {
            xb3Var3.q = xb3Var;
        } else {
            this.o = xb3Var;
        }
        xb3VarA.p = null;
        xb3VarA.q = null;
        return xb3VarA.o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r1.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        if (((defpackage.wb3) r6).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof defpackage.ac3
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            ac3 r6 = (defpackage.ac3) r6
            int r1 = r5.q
            int r3 = r6.q
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r5 = r5.iterator()
            java.util.Iterator r6 = r6.iterator()
        L1b:
            r1 = r5
            wb3 r1 = (defpackage.wb3) r1
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            r3 = r6
            wb3 r3 = (defpackage.wb3) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r1 = r1.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r3.next()
            if (r1 != 0) goto L3b
            if (r3 != 0) goto L43
        L3b:
            if (r1 == 0) goto L1b
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r5 = r1.hasNext()
            if (r5 != 0) goto L53
            wb3 r6 = (defpackage.wb3) r6
            boolean r5 = r6.hasNext()
            if (r5 != 0) goto L53
            return r0
        L53:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ac3.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            wb3 wb3Var = (wb3) it;
            if (!wb3Var.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) wb3Var.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        wb3 wb3Var = new wb3(this.n, this.o, 0);
        this.p.put(wb3Var, Boolean.FALSE);
        return wb3Var;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            wb3 wb3Var = (wb3) it;
            if (!wb3Var.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) wb3Var.next()).toString());
            if (wb3Var.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
