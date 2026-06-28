package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class xe5 {
    public static final WeakHashMap a = new WeakHashMap();
    public static final WeakHashMap b = new WeakHashMap();

    public static void a(Throwable th) {
        Throwable cause;
        ky4 ky4Var;
        Closeable closeable;
        WeakHashMap weakHashMap = b;
        synchronized (weakHashMap) {
            cause = th;
            while (cause != null) {
                try {
                    if (weakHashMap.containsKey(cause)) {
                        break;
                    } else {
                        cause = cause.getCause();
                    }
                } finally {
                }
            }
            weakHashMap.put(th, Boolean.valueOf(cause != null));
        }
        if (cause != null) {
            return;
        }
        WeakHashMap weakHashMap2 = a;
        synchronized (weakHashMap2) {
            Throwable cause2 = th;
            while (cause2 != null) {
                try {
                    if (weakHashMap2.containsKey(cause2)) {
                        break;
                    } else {
                        cause2 = cause2.getCause();
                    }
                } finally {
                }
            }
            if (cause2 == null) {
                ky4Var = null;
            } else {
                weakHashMap2.put(th, (ue5) weakHashMap2.get(cause2));
                ky4Var = new ky4(28);
            }
        }
        if (ky4Var != null || (closeable = ye5.c().b) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (closeable = ye5.c().b; closeable != null; closeable = ((te5) closeable).n) {
            arrayList.add(closeable);
        }
        UUID uuid = ((te5) ((rf5) arrayList.get(0))).o;
        if (uuid == null) {
            q73.r("Null rootTraceId");
            return;
        }
        ((rf5) arrayList.get(0)).getClass();
        int size = arrayList.size();
        hp1 hp1Var = lp1.o;
        ht4.i(size, "expectedSize");
        ht4.i(size, "initialCapacity");
        Object[] objArrCopyOf = new Object[size];
        int size2 = arrayList.size();
        ht4.i(size2, "expectedSize");
        ht4.i(size2, "initialCapacity");
        Object[] objArrCopyOf2 = new Object[size2];
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        for (rf5 rf5Var : ix.O(arrayList)) {
            String str = ((te5) rf5Var).q;
            int iB = cp1.b(objArrCopyOf2.length, i2 + 1);
            if (iB > objArrCopyOf2.length || z2) {
                objArrCopyOf2 = Arrays.copyOf(objArrCopyOf2, iB);
                z2 = false;
            }
            int i3 = i2 + 1;
            objArrCopyOf2[i2] = str;
            nf5 nf5VarD = rf5Var.d();
            nf5VarD.getClass();
            int iB2 = cp1.b(objArrCopyOf.length, i + 1);
            if (iB2 > objArrCopyOf.length || z) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iB2);
                z = false;
            }
            objArrCopyOf[i] = nf5VarD;
            i++;
            i2 = i3;
        }
        WeakHashMap weakHashMap3 = a;
        synchronized (weakHashMap3) {
            try {
                z43 z43VarI = lp1.i(i2, objArrCopyOf2);
                if (z43VarI == null) {
                    throw new NullPointerException("Null spansNames");
                }
                z43 z43VarI2 = lp1.i(i, objArrCopyOf);
                if (z43VarI2 == null) {
                    throw new NullPointerException("Null extras");
                }
                weakHashMap3.put(th, new ue5(z43VarI, z43VarI2, uuid));
            } finally {
            }
        }
    }
}
