package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ga0 implements w90 {
    public static final ea0 h = new ea0(0);
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object g;

    public ga0(ArrayList arrayList, ArrayList arrayList2, qv3 qv3Var) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashSet();
        this.f = new AtomicReference();
        g21 g21Var = new g21();
        this.e = g21Var;
        this.g = qv3Var;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(i90.c(g21Var, g21.class, ut3.class, v03.class));
        int i = 0;
        arrayList3.add(i90.c(this, ga0.class, new Class[0]));
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            i90 i90Var = (i90) obj;
            if (i90Var != null) {
                arrayList3.add(i90Var);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            arrayList4.add(obj2);
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((n03) it.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(((qv3) this.g).w(componentRegistrar));
                        it.remove();
                    }
                } catch (xt1 e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                Object[] array = ((i90) it2.next()).b.toArray();
                int length = array.length;
                int i4 = 0;
                while (true) {
                    if (i4 < length) {
                        Object obj3 = array[i4];
                        if (obj3.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (((HashSet) this.d).contains(obj3.toString())) {
                                it2.remove();
                                break;
                            }
                            ((HashSet) this.d).add(obj3.toString());
                        }
                        i4++;
                    }
                }
            }
            if (((HashMap) this.a).isEmpty()) {
                n44.i0(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(((HashMap) this.a).keySet());
                arrayList6.addAll(arrayList3);
                n44.i0(arrayList6);
            }
            int size3 = arrayList3.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj4 = arrayList3.get(i5);
                i5++;
                i90 i90Var2 = (i90) obj4;
                ((HashMap) this.a).put(i90Var2, new rz1(new fa0(i, this, i90Var2)));
            }
            arrayList5.addAll(p(arrayList3));
            arrayList5.addAll(q());
            o();
        }
        int size4 = arrayList5.size();
        while (i < size4) {
            Object obj5 = arrayList5.get(i);
            i++;
            ((Runnable) obj5).run();
        }
        Boolean bool = (Boolean) ((AtomicReference) this.f).get();
        if (bool != null) {
            j((HashMap) this.a, bool.booleanValue());
        }
    }

    public static dn c(dn dnVar, gw4 gw4Var, q51 q51Var, Map map) {
        Map mapUnmodifiableMap;
        Map mapUnmodifiableMap2;
        Map mapUnmodifiableMap3;
        cn cnVarA = dnVar.a();
        String strG = ((h51) gw4Var.p).g();
        if (strG != null) {
            cnVarA.e = new qn(strG);
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "No log data to include with this event.", null);
        }
        boolean zIsEmpty = map.isEmpty();
        mu0 mu0Var = (mu0) q51Var.d;
        if (zIsEmpty) {
            tx1 tx1Var = (tx1) ((AtomicMarkableReference) mu0Var.b).getReference();
            synchronized (tx1Var) {
                mapUnmodifiableMap2 = Collections.unmodifiableMap(new HashMap(tx1Var.a));
            }
        } else {
            tx1 tx1Var2 = (tx1) ((AtomicMarkableReference) mu0Var.b).getReference();
            synchronized (tx1Var2) {
                mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(tx1Var2.a));
            }
            HashMap map2 = new HashMap(mapUnmodifiableMap);
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                String strA = tx1.a(1024, (String) entry.getKey());
                if (map2.size() < 64 || map2.containsKey(strA)) {
                    map2.put(strA, tx1.a(1024, (String) entry.getValue()));
                } else {
                    i++;
                }
            }
            if (i > 0) {
                Log.w("FirebaseCrashlytics", "Ignored " + i + " keys when adding event specific keys. Maximum allowable: 1024", null);
            }
            mapUnmodifiableMap2 = Collections.unmodifiableMap(map2);
        }
        List listM = m(mapUnmodifiableMap2);
        tx1 tx1Var3 = (tx1) ((AtomicMarkableReference) ((mu0) q51Var.e).b).getReference();
        synchronized (tx1Var3) {
            mapUnmodifiableMap3 = Collections.unmodifiableMap(new HashMap(tx1Var3.a));
        }
        List listM2 = m(mapUnmodifiableMap3);
        if (!listM.isEmpty() || !listM2.isEmpty()) {
            en enVar = (en) dnVar.c;
            cnVarA.c = new en(enVar.a, listM, listM2, enVar.d, enVar.e, enVar.f, enVar.g);
        }
        return cnVarA.a();
    }

    public static gk0 e(dn dnVar, q51 q51Var) {
        List listA = ((aa3) q51Var.f).a();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < listA.size(); i++) {
            z93 z93Var = (z93) listA.get(i);
            z93Var.getClass();
            rn rnVar = new rn();
            wo woVar = (wo) z93Var;
            String str = woVar.e;
            if (str == null) {
                q73.r("Null variantId");
                return null;
            }
            String str2 = woVar.b;
            if (str2 == null) {
                q73.r("Null rolloutId");
                return null;
            }
            rnVar.a = new tn(str2, str);
            String str3 = woVar.c;
            if (str3 == null) {
                q73.r("Null parameterKey");
                return null;
            }
            rnVar.b = str3;
            rnVar.c = woVar.d;
            rnVar.d = woVar.f;
            rnVar.e = (byte) (rnVar.e | 1);
            arrayList.add(rnVar.a());
        }
        if (arrayList.isEmpty()) {
            return dnVar;
        }
        cn cnVarA = dnVar.a();
        cnVarA.f = new un(arrayList);
        return cnVarA.a();
    }

    public static String f(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bArr = new byte[8192];
            } finally {
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
        while (true) {
            int i = bufferedInputStream.read(bArr);
            if (i == -1) {
                String string = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                byteArrayOutputStream.close();
                bufferedInputStream.close();
                return string;
            }
            byteArrayOutputStream.write(bArr, 0, i);
            bufferedInputStream.close();
            throw th;
        }
    }

    public static ga0 i(Context context, sn1 sn1Var, q51 q51Var, dh dhVar, gw4 gw4Var, q51 q51Var2, xh1 xh1Var, ed0 ed0Var, xh1 xh1Var2, aj0 aj0Var, eh ehVar) {
        lk0 lk0Var = new lk0(context, sn1Var, dhVar, xh1Var, ed0Var);
        ok0 ok0Var = new ok0(q51Var, ed0Var, aj0Var);
        nk0 nk0Var = gn0.b;
        y14.b(context);
        return new ga0(lk0Var, ok0Var, new gn0(new j63(y14.a().c(new h00(gn0.c, gn0.d)).a("FIREBASE_CRASHLYTICS_REPORT", new o01("json"), gn0.e), ed0Var.e(), xh1Var2)), gw4Var, q51Var2, sn1Var, ehVar);
    }

    public static List m(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                q73.r("Null key");
                return null;
            }
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                q73.r("Null value");
                return null;
            }
            arrayList.add(new tm(str, str2));
        }
        Collections.sort(arrayList, new yb(9));
        return Collections.unmodifiableList(arrayList);
    }

    @Override // defpackage.w90
    public synchronized n03 b(z03 z03Var) {
        s12 s12Var = (s12) ((HashMap) this.c).get(z03Var);
        if (s12Var != null) {
            return s12Var;
        }
        return h;
    }

    @Override // defpackage.w90
    public dr2 h(z03 z03Var) {
        n03 n03VarK = k(z03Var);
        return n03VarK == null ? new dr2(dr2.c, dr2.d) : n03VarK instanceof dr2 ? (dr2) n03VarK : new dr2(null, n03VarK);
    }

    public void j(HashMap map, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : map.entrySet()) {
            i90 i90Var = (i90) entry.getKey();
            n03 n03Var = (n03) entry.getValue();
            int i = i90Var.d;
            if (i == 1 || (i == 2 && z)) {
                n03Var.get();
            }
        }
        g21 g21Var = (g21) this.e;
        synchronized (g21Var) {
            try {
                arrayDeque = g21Var.b;
                if (arrayDeque != null) {
                    g21Var.b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                mk0.b();
            }
        }
    }

    @Override // defpackage.w90
    public synchronized n03 k(z03 z03Var) {
        gg4.m(z03Var, "Null interface requested.");
        return (n03) ((HashMap) this.b).get(z03Var);
    }

    public void n(Throwable th, Thread thread, String str, final s21 s21Var, boolean z) {
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it;
        final boolean zEquals = str.equals("crash");
        lk0 lk0Var = (lk0) this.a;
        long j = s21Var.b;
        Context context = lk0Var.a;
        int i = context.getResources().getConfiguration().orientation;
        xh1 xh1Var = lk0Var.d;
        Stack stack = new Stack();
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            stack.push(cause);
        }
        qd1 qd1Var = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            qd1Var = new qd1(th2.getLocalizedMessage(), th2.getClass().getName(), xh1Var.h(th2.getStackTrace()), qd1Var, 15);
        }
        qd1 qd1Var2 = qd1Var;
        cn cnVar = new cn();
        cnVar.b = str;
        cnVar.a = j;
        cnVar.g = (byte) (cnVar.g | 1);
        zj0 zj0VarL = w13.O.l(context);
        int i2 = ((nn) zj0VarL).c;
        Boolean boolValueOf = i2 > 0 ? Boolean.valueOf(i2 != 100) : null;
        ArrayList arrayListH = w13.h(context);
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) qd1Var2.q;
        String name = thread.getName();
        if (name == null) {
            q73.r("Null name");
            return;
        }
        List listD = lk0.d(stackTraceElementArr, 4);
        if (listD == null) {
            q73.r("Null frames");
            return;
        }
        arrayList.add(new jn(name, 4, listD));
        if (z) {
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = Thread.getAllStackTraces().entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<Thread, StackTraceElement[]> next = it2.next();
                Thread key = next.getKey();
                if (key.equals(thread)) {
                    it = it2;
                } else {
                    StackTraceElement[] stackTraceElementArrH = xh1Var.h(next.getValue());
                    String name2 = key.getName();
                    if (name2 == null) {
                        q73.r("Null name");
                        return;
                    }
                    it = it2;
                    List listD2 = lk0.d(stackTraceElementArrH, 0);
                    if (listD2 == null) {
                        q73.r("Null frames");
                        return;
                    }
                    arrayList.add(new jn(name2, 0, listD2));
                }
                it2 = it;
            }
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        hn hnVarC = lk0.c(qd1Var2, 0);
        in inVarE = lk0.e();
        List listA = lk0Var.a();
        if (listA == null) {
            q73.r("Null binaries");
            return;
        }
        cnVar.c = new en(new fn(listUnmodifiableList, hnVarC, null, inVarE, listA), null, null, boolValueOf, zj0VarL, arrayListH, i);
        cnVar.d = lk0Var.b(i);
        dn dnVarA = cnVar.a();
        Map map = s21Var.c;
        gw4 gw4Var = (gw4) this.d;
        q51 q51Var = (q51) this.e;
        final gk0 gk0VarE = e(c(dnVarA, gw4Var, q51Var, map), q51Var);
        if (z) {
            ((ok0) this.b).d(gk0VarE, s21Var.a, zEquals);
        } else {
            ((qk0) ((eh) this.g).p).a(new Runnable() { // from class: bk3
                @Override // java.lang.Runnable
                public final void run() {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "disk worker: log non-fatal event to persistence", null);
                    }
                    ((ok0) this.n.b).d(gk0VarE, s21Var.a, zEquals);
                }
            });
        }
    }

    public void o() {
        HashMap map = (HashMap) this.b;
        HashMap map2 = (HashMap) this.c;
        for (i90 i90Var : ((HashMap) this.a).keySet()) {
            for (fs0 fs0Var : i90Var.c) {
                boolean z = fs0Var.b == 2;
                z03 z03Var = fs0Var.a;
                if (z && !map2.containsKey(z03Var)) {
                    Set set = Collections.EMPTY_SET;
                    s12 s12Var = new s12();
                    s12Var.b = null;
                    s12Var.a = Collections.newSetFromMap(new ConcurrentHashMap());
                    s12Var.a.addAll(set);
                    map2.put(z03Var, s12Var);
                } else if (map.containsKey(z03Var)) {
                    continue;
                } else {
                    int i = fs0Var.b;
                    if (i == 1) {
                        throw new hs0("Unsatisfied dependency for component " + i90Var + ": " + z03Var, 2);
                    }
                    if (i != 2) {
                        map.put(z03Var, new dr2(dr2.c, dr2.d));
                    }
                }
            }
        }
    }

    public ArrayList p(ArrayList arrayList) {
        HashMap map = (HashMap) this.b;
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            i90 i90Var = (i90) obj;
            if (i90Var.e == 0) {
                n03 n03Var = (n03) ((HashMap) this.a).get(i90Var);
                for (z03 z03Var : i90Var.b) {
                    if (map.containsKey(z03Var)) {
                        arrayList2.add(new h7(6, (dr2) ((n03) map.get(z03Var)), n03Var));
                    } else {
                        map.put(z03Var, n03Var);
                    }
                }
            }
        }
        return arrayList2;
    }

    public ArrayList q() {
        HashMap map = (HashMap) this.c;
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        for (Map.Entry entry : ((HashMap) this.a).entrySet()) {
            i90 i90Var = (i90) entry.getKey();
            if (i90Var.e != 0) {
                n03 n03Var = (n03) entry.getValue();
                for (z03 z03Var : i90Var.b) {
                    if (!map2.containsKey(z03Var)) {
                        map2.put(z03Var, new HashSet());
                    }
                    ((Set) map2.get(z03Var)).add(n03Var);
                }
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (map.containsKey(entry2.getKey())) {
                s12 s12Var = (s12) map.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new h7(7, s12Var, (n03) it.next()));
                }
            } else {
                z03 z03Var2 = (z03) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                s12 s12Var2 = new s12();
                s12Var2.b = null;
                s12Var2.a = Collections.newSetFromMap(new ConcurrentHashMap());
                s12Var2.a.addAll(set);
                map.put(z03Var2, s12Var2);
            }
        }
        return arrayList;
    }

    public ef5 r(String str, Executor executor) {
        pw3 pw3Var;
        ArrayList arrayListB = ((ok0) this.b).b();
        ArrayList arrayList = new ArrayList();
        int size = arrayListB.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            File file = (File) arrayListB.get(i);
            try {
                nk0 nk0Var = ok0.g;
                String strE = ok0.e(file);
                nk0Var.getClass();
                arrayList.add(new pm(nk0.i(strE), file.getName(), file));
            } catch (IOException e) {
                Log.w("FirebaseCrashlytics", "Could not load report file " + file + "; deleting", e);
                file.delete();
            }
            i = i2;
        }
        ArrayList arrayList2 = new ArrayList();
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj = arrayList.get(i3);
            i3++;
            pm pmVar = (pm) obj;
            if (str == null || str.equals(pmVar.b)) {
                gn0 gn0Var = (gn0) this.c;
                om omVar = pmVar.a;
                if (omVar.f == null || omVar.g == null) {
                    j61 j61VarB = ((sn1) this.f).b(true);
                    om omVar2 = pmVar.a;
                    String str2 = j61VarB.a;
                    nm nmVarA = omVar2.a();
                    nmVarA.e = str2;
                    om omVarA = nmVarA.a();
                    String str3 = j61VarB.b;
                    nm nmVarA2 = omVarA.a();
                    nmVarA2.f = str3;
                    pmVar = new pm(nmVarA2.a(), pmVar.b, pmVar.c);
                }
                boolean z = str != null;
                j63 j63Var = gn0Var.a;
                synchronized (j63Var.f) {
                    try {
                        pw3Var = new pw3();
                        if (z) {
                            ((AtomicInteger) j63Var.i.n).getAndIncrement();
                            if (j63Var.f.size() < j63Var.e) {
                                w13 w13Var = w13.H;
                                w13Var.e("Enqueueing report: " + pmVar.b);
                                w13Var.e("Queue size: " + j63Var.f.size());
                                j63Var.g.execute(new i63(j63Var, pmVar, pw3Var, 0));
                                w13Var.e("Closing task for report: " + pmVar.b);
                                pw3Var.d(pmVar);
                            } else {
                                j63Var.a();
                                String str4 = "Dropping report due to queue being full: " + pmVar.b;
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                    Log.d("FirebaseCrashlytics", str4, null);
                                }
                                ((AtomicInteger) j63Var.i.o).getAndIncrement();
                                pw3Var.d(pmVar);
                            }
                        } else {
                            j63Var.b(pmVar, pw3Var);
                        }
                    } finally {
                    }
                }
                arrayList2.add(pw3Var.a.d(executor, new q73(this)));
            }
        }
        return mt1.Y(arrayList2);
    }

    public ga0(lk0 lk0Var, ok0 ok0Var, gn0 gn0Var, gw4 gw4Var, q51 q51Var, sn1 sn1Var, eh ehVar) {
        this.a = lk0Var;
        this.b = ok0Var;
        this.c = gn0Var;
        this.d = gw4Var;
        this.e = q51Var;
        this.f = sn1Var;
        this.g = ehVar;
    }
}
