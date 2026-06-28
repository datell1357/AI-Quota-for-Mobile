package defpackage;

import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class hi4 {
    public static final TimeZone a;
    public static final String b;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        timeZone.getClass();
        a = timeZone;
        String strO0 = zs3.O0(io2.class.getName(), "okhttp3.");
        if (zs3.D0(strO0, "Client")) {
            strO0 = strO0.substring(0, strO0.length() - "Client".length());
        }
        b = strO0;
    }

    public static final boolean a(cn1 cn1Var, cn1 cn1Var2) {
        cn1Var.getClass();
        cn1Var2.getClass();
        return nt1.g(cn1Var.d, cn1Var2.d) && cn1Var.e == cn1Var2.e && nt1.g(cn1Var.a, cn1Var2.a);
    }

    public static final void b(Socket socket) {
        socket.getClass();
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!nt1.g(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    public static final String c(String str, Object... objArr) {
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    public static final long d(w73 w73Var) {
        String strA = w73Var.s.a("Content-Length");
        if (strA == null) {
            return -1L;
        }
        byte[] bArr = fi4.a;
        try {
            return Long.parseLong(strA);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static final boolean e(yp3 yp3Var, int i) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        long jNanoTime = System.nanoTime();
        long jC = yp3Var.g().e() ? yp3Var.g().c() - jNanoTime : Long.MAX_VALUE;
        yp3Var.g().d(Math.min(jC, timeUnit.toNanos(i)) + jNanoTime);
        try {
            sy syVar = new sy();
            while (yp3Var.l(8192L, syVar) != -1) {
                syVar.skip(syVar.o);
            }
            if (jC == Long.MAX_VALUE) {
                yp3Var.g().a();
                return true;
            }
            yp3Var.g().d(jNanoTime + jC);
            return true;
        } catch (InterruptedIOException unused) {
            if (jC == Long.MAX_VALUE) {
                yp3Var.g().a();
                return false;
            }
            yp3Var.g().d(jNanoTime + jC);
            return false;
        } catch (Throwable th) {
            if (jC == Long.MAX_VALUE) {
                yp3Var.g().a();
            } else {
                yp3Var.g().d(jNanoTime + jC);
            }
            throw th;
        }
    }

    public static final kj1 f(List list) {
        ArrayList arrayList = new ArrayList(20);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hj1 hj1Var = (hj1) it.next();
            g00 g00Var = hj1Var.a;
            g00 g00Var2 = hj1Var.b;
            String strQ = g00Var.q();
            String strQ2 = g00Var2.q();
            arrayList.add(strQ);
            arrayList.add(zs3.Y0(strQ2).toString());
        }
        return new kj1((String[]) arrayList.toArray(new String[0]));
    }

    public static final String g(cn1 cn1Var, boolean z) {
        cn1Var.getClass();
        int i = cn1Var.e;
        String str = cn1Var.d;
        if (zs3.B0(str, ":", false)) {
            str = "[" + str + ']';
        }
        if (!z) {
            String str2 = cn1Var.a;
            str2.getClass();
            if (i == (str2.equals("http") ? 80 : str2.equals("https") ? 443 : -1)) {
                return str;
            }
        }
        return str + ':' + i;
    }

    public static final List h(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return g01.n;
        }
        if (list.size() == 1) {
            List listSingletonList = Collections.singletonList(list.get(0));
            listSingletonList.getClass();
            return listSingletonList;
        }
        Object[] array = list.toArray();
        array.getClass();
        List listAsList = Arrays.asList(array);
        listAsList.getClass();
        List listUnmodifiableList = Collections.unmodifiableList(listAsList);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }

    public static final List i(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return g01.n;
        }
        if (objArr.length == 1) {
            List listSingletonList = Collections.singletonList(objArr[0]);
            listSingletonList.getClass();
            return listSingletonList;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        objArr2.getClass();
        List listAsList = Arrays.asList(objArr2);
        listAsList.getClass();
        List listUnmodifiableList = Collections.unmodifiableList(listAsList);
        listUnmodifiableList.getClass();
        return listUnmodifiableList;
    }
}
