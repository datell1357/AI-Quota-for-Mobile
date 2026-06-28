package defpackage;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qi2 {
    public static final /* synthetic */ int r = 0;
    public final String n;
    public final gg o;
    public si2 p;
    public final mq3 q;

    static {
        new LinkedHashMap();
    }

    public qi2(lk2 lk2Var) {
        lk2Var.getClass();
        LinkedHashMap linkedHashMap = mk2.b;
        this.n = tv4.x(lk2Var.getClass());
        gg ggVar = new gg();
        ggVar.b = this;
        ggVar.c = new ArrayList();
        ggVar.d = new LinkedHashMap();
        this.o = ggVar;
        this.q = new mq3(0);
    }

    public final Bundle a(Bundle bundle) {
        Object obj;
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.o.d;
        if (bundle == null && linkedHashMap.isEmpty()) {
            return null;
        }
        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            wh2 wh2Var = (wh2) entry.getValue();
            wh2Var.getClass();
            str.getClass();
            if (wh2Var.b && (obj = wh2Var.c) != null) {
                wh2Var.a.e(bundleX, str, obj);
            }
        }
        if (bundle != null) {
            bundleX.putAll(bundle);
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                wh2 wh2Var2 = (wh2) entry2.getValue();
                wh2Var2.getClass();
                qj2 qj2Var = wh2Var2.a;
                str2.getClass();
                if (!bundleX.containsKey(str2) || !mt1.L(str2, bundleX)) {
                    try {
                        qj2Var.a(str2, bundleX);
                    } catch (IllegalStateException unused) {
                    }
                }
                p61.p(di0.A("Wrong argument type for '", str2, "' in argument savedState. "), qj2Var.b(), " expected.");
                return null;
            }
        }
        return bundleX;
    }

    public final Map d() {
        return oa2.e0((LinkedHashMap) this.o.d);
    }

    public pi2 e(eh ehVar) {
        boolean zC;
        w43 w43Var;
        qd1 qd1VarB;
        gg ggVar = this.o;
        LinkedHashMap linkedHashMap = (LinkedHashMap) ggVar.d;
        Uri uri = (Uri) ehVar.o;
        ArrayList arrayList = (ArrayList) ggVar.c;
        if (arrayList.isEmpty()) {
            return null;
        }
        int size = arrayList.size();
        pi2 pi2Var = null;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            oi2 oi2Var = (oi2) obj;
            oi2Var.getClass();
            nv3 nv3Var = oi2Var.d;
            if (((w43) nv3Var.getValue()) == null) {
                zC = true;
            } else if (uri == null) {
                zC = false;
            } else {
                w43 w43Var2 = (w43) nv3Var.getValue();
                w43Var2.getClass();
                zC = w43Var2.c(uri.toString());
            }
            if (zC) {
                Bundle bundleD = uri != null ? oi2Var.d(uri, linkedHashMap) : null;
                int iB = oi2Var.b(uri);
                String str = (String) ehVar.p;
                boolean z = str != null && str.equals(null);
                if (bundleD == null) {
                    if (z) {
                        linkedHashMap.getClass();
                        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
                        if (uri != null && (w43Var = (w43) nv3Var.getValue()) != null && (qd1VarB = w43Var.b(uri.toString())) != null) {
                            oi2Var.e(qd1VarB, bundleX, linkedHashMap);
                            if (((Boolean) oi2Var.e.getValue()).booleanValue()) {
                                oi2Var.f(uri, bundleX, linkedHashMap);
                            }
                        }
                        if (se0.B(linkedHashMap, new mi2(1, bundleX)).isEmpty()) {
                        }
                    }
                }
                pi2 pi2Var2 = new pi2((qi2) ggVar.b, bundleD, oi2Var.l, iB, z);
                if (pi2Var == null || pi2Var2.compareTo(pi2Var) > 0) {
                    pi2Var = pi2Var2;
                }
            }
        }
        return pi2Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qi2.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        gg ggVar = this.o;
        int i = ggVar.a * 31;
        String str = (String) ggVar.e;
        int iHashCode = i + (str != null ? str.hashCode() : 0);
        ArrayList arrayList = (ArrayList) ggVar.c;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            iHashCode = (((oi2) obj).a.hashCode() + (iHashCode * 31)) * 961;
        }
        mq3 mq3Var = this.q;
        mq3Var.getClass();
        if (mq3Var.f() > 0) {
            mq3Var.g(0).getClass();
            mk0.b();
            return 0;
        }
        for (String str2 : d().keySet()) {
            int iM = xw1.m(iHashCode * 31, str2, 31);
            Object obj2 = d().get(str2);
            iHashCode = iM + (obj2 != null ? obj2.hashCode() : 0);
        }
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(0x");
        gg ggVar = this.o;
        ggVar.getClass();
        sb.append(Integer.toHexString(ggVar.a));
        sb.append(")");
        String str = (String) ggVar.e;
        if (str != null && !zs3.I0(str)) {
            sb.append(" route=");
            sb.append((String) ggVar.e);
        }
        return sb.toString();
    }
}
