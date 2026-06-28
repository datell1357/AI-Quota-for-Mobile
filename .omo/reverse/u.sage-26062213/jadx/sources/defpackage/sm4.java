package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sm4 {
    protected transient int zza;

    public static void d(Iterable iterable, List list) {
        iterable.getClass();
        if (iterable instanceof ho4) {
            List listZza = ((ho4) iterable).zza();
            if (list != null) {
                mk0.b();
                return;
            }
            list.size();
            Iterator it = listZza.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                next.getClass();
                if (next instanceof zm4) {
                    throw null;
                }
                if (!(next instanceof byte[])) {
                    throw null;
                }
                byte[] bArr = (byte[]) next;
                zm4.i(bArr, 0, bArr.length);
                throw null;
            }
            return;
        }
        if (iterable instanceof yo4) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            } else if (list instanceof ap4) {
                ap4 ap4Var = (ap4) list;
                int i = ap4Var.p + size;
                int length = ap4Var.o.length;
                if (i > length) {
                    if (length != 0) {
                        while (length < i) {
                            length = Math.max(((length * 3) / 2) + 1, 10);
                        }
                        ap4Var.o = Arrays.copyOf(ap4Var.o, length);
                    } else {
                        ap4Var.o = new Object[Math.max(i, 10)];
                    }
                }
            }
        }
        int size2 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj : iterable) {
                if (obj == null) {
                    pn4.a(size2, list);
                    throw null;
                }
                list.add(obj);
            }
            return;
        }
        List list2 = (List) iterable;
        int size3 = list2.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object obj2 = list2.get(i2);
            if (obj2 == null) {
                pn4.a(size2, list);
                throw null;
            }
            list.add(obj2);
        }
    }

    public final byte[] a() {
        try {
            rn4 rn4Var = (rn4) this;
            int iM = rn4Var.m();
            byte[] bArr = new byte[iM];
            boolean z = jn4.b;
            dn4 dn4Var = new dn4(iM, bArr);
            rn4Var.f(dn4Var);
            if (dn4Var.x() > 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            if (dn4Var.x() >= 0) {
                return bArr;
            }
            throw new IllegalStateException("Wrote more data than expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            k21.i(di0.y(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }

    public final void b(OutputStream outputStream) {
        rn4 rn4Var = (rn4) this;
        int iM = rn4Var.m();
        boolean z = jn4.b;
        if (iM > 4096) {
            iM = 4096;
        }
        en4 en4Var = new en4(outputStream, iM);
        rn4Var.f(en4Var);
        if (en4Var.e > 0) {
            en4Var.B();
        }
    }

    public abstract int c(cp4 cp4Var);
}
