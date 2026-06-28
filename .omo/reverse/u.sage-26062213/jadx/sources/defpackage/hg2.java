package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hg2 {
    public final LinkedHashMap a;
    public final wu4 b;

    public hg2(LinkedHashMap linkedHashMap, boolean z) {
        this.a = linkedHashMap;
        this.b = new wu4(z);
    }

    public final Map a() {
        js2 js2Var;
        Set<Map.Entry> setEntrySet = this.a.entrySet();
        int iA0 = oa2.a0(p70.a0(setEntrySet, 10));
        if (iA0 < 16) {
            iA0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iA0);
        for (Map.Entry entry : setEntrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                js2Var = new js2(entry.getKey(), Arrays.copyOf(bArr, bArr.length));
            } else {
                js2Var = new js2(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(js2Var.n, js2Var.o);
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        return mapUnmodifiableMap;
    }

    public final void b() {
        if (((AtomicBoolean) this.b.o).get()) {
            k21.n("Do mutate preferences once returned to DataStore.");
        }
    }

    public final Object c(rx2 rx2Var) {
        rx2Var.getClass();
        Object obj = this.a.get(rx2Var);
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final void d(rx2 rx2Var) {
        rx2Var.getClass();
        b();
        this.a.remove(rx2Var);
    }

    public final void e(rx2 rx2Var, Object obj) {
        rx2Var.getClass();
        f(rx2Var, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof defpackage.hg2
            r1 = 0
            if (r0 != 0) goto L6
            goto L60
        L6:
            hg2 r6 = (defpackage.hg2) r6
            java.util.LinkedHashMap r6 = r6.a
            java.util.LinkedHashMap r5 = r5.a
            r0 = 1
            if (r6 != r5) goto L10
            goto L61
        L10:
            int r2 = r6.size()
            int r3 = r5.size()
            if (r2 == r3) goto L1b
            goto L60
        L1b:
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L22
            goto L61
        L22:
            java.util.Set r6 = r6.entrySet()
            java.util.Iterator r6 = r6.iterator()
        L2a:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L61
            java.lang.Object r2 = r6.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.Object r3 = r5.get(r3)
            if (r3 == 0) goto L5d
            java.lang.Object r2 = r2.getValue()
            boolean r4 = r2 instanceof byte[]
            if (r4 == 0) goto L58
            boolean r4 = r3 instanceof byte[]
            if (r4 == 0) goto L5d
            byte[] r2 = (byte[]) r2
            byte[] r3 = (byte[]) r3
            boolean r2 = java.util.Arrays.equals(r2, r3)
            if (r2 == 0) goto L5d
            r2 = r0
            goto L5e
        L58:
            boolean r2 = defpackage.nt1.g(r2, r3)
            goto L5e
        L5d:
            r2 = r1
        L5e:
            if (r2 != 0) goto L2a
        L60:
            return r1
        L61:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hg2.equals(java.lang.Object):boolean");
    }

    public final void f(rx2 rx2Var, Object obj) {
        rx2Var.getClass();
        b();
        if (obj == null) {
            d(rx2Var);
            return;
        }
        boolean z = obj instanceof Set;
        LinkedHashMap linkedHashMap = this.a;
        if (z) {
            Set setUnmodifiableSet = Collections.unmodifiableSet(o70.F0((Set) obj));
            setUnmodifiableSet.getClass();
            linkedHashMap.put(rx2Var, setUnmodifiableSet);
        } else if (!(obj instanceof byte[])) {
            linkedHashMap.put(rx2Var, obj);
        } else {
            byte[] bArr = (byte[]) obj;
            linkedHashMap.put(rx2Var, Arrays.copyOf(bArr, bArr.length));
        }
    }

    public final int hashCode() {
        Iterator it = this.a.entrySet().iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            iHashCode += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return iHashCode;
    }

    public final String toString() {
        return o70.n0(this.a.entrySet(), ",\n", "{\n", "\n}", new z82(2), 24);
    }

    public /* synthetic */ hg2(boolean z) {
        this(new LinkedHashMap(), z);
    }
}
