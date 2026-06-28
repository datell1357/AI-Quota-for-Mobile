package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.Layout;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rp implements os2 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;

    /* JADX WARN: Removed duplicated region for block: B:90:0x0250  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public rp(defpackage.ff r40, defpackage.ay3 r41, java.util.List r42, defpackage.as0 r43, defpackage.qa1 r44) {
        /*
            Method dump skipped, instruction units count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rp.<init>(ff, ay3, java.util.List, as0, qa1):void");
    }

    public static String j(Class cls) {
        Properties properties;
        InputStream resourceAsStream;
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        rp rpVar = null;
        try {
            resourceAsStream = classLoader.getResourceAsStream("org.apache.http.client".replace('.', '/') + "/version.properties");
        } catch (IOException unused) {
        }
        if (resourceAsStream != null) {
            try {
                properties = new Properties();
                properties.load(resourceAsStream);
            } finally {
                resourceAsStream.close();
            }
        } else {
            properties = null;
        }
        if (properties != null) {
            String str = (String) properties.get("info.module");
            if (str != null && str.length() < 1) {
                str = null;
            }
            String str2 = (String) properties.get("info.release");
            if (str2 != null && (str2.length() < 1 || str2.equals("${pom.version}"))) {
                str2 = null;
            }
            String str3 = (String) properties.get("info.timestamp");
            if (str3 != null && (str3.length() < 1 || str3.equals("${mvn.timestamp}"))) {
                str3 = null;
            }
            rpVar = new rp(str, str2, str3, classLoader != null ? classLoader.toString() : null);
        }
        return xw1.r("Apache-HttpClient/", rpVar != null ? (String) rpVar.d : "UNAVAILABLE", " (Java/", System.getProperty("java.version"), ")");
    }

    @Override // defpackage.os2
    public float a() {
        return ((Number) ((qz1) this.d).getValue()).floatValue();
    }

    @Override // defpackage.os2
    public boolean b() {
        ArrayList arrayList = (ArrayList) this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((ns2) arrayList.get(i)).a.b()) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.os2
    public float c() {
        return ((Number) ((qz1) this.e).getValue()).floatValue();
    }

    public void d(rc rcVar, i50 i50Var) {
        ((ArrayList) this.c).add(new js2(rcVar, i50Var));
    }

    public void e(y41 y41Var, i50 i50Var) {
        ((ArrayList) this.e).add(new h4(7, y41Var, i50Var));
    }

    public q20 f(qp qpVar, ne1 ne1Var) {
        int i;
        int i2;
        int i3;
        u33 u33Var = new u33();
        u33Var.n = -1;
        synchronized (this.b) {
            Throwable th = (Throwable) this.c;
            if (th != null) {
                qpVar.b(th);
                return mj1.E;
            }
            lj ljVar = (lj) this.d;
            do {
                i = ljVar.get();
                i2 = i + 1;
            } while (!ljVar.compareAndSet(i, i2));
            int i4 = 0;
            boolean z = (134217727 & i2) == 1;
            u33Var.n = (i2 >>> 27) & 15;
            ((dg2) this.e).a(qpVar);
            if (z && ne1Var != null) {
                try {
                    ne1Var.a();
                } catch (Throwable th2) {
                    synchronized (this.b) {
                        try {
                            if (((Throwable) this.c) == null) {
                                this.c = th2;
                                dg2 dg2Var = (dg2) this.e;
                                Object[] objArr = dg2Var.a;
                                int i5 = dg2Var.b;
                                for (int i6 = 0; i6 < i5; i6++) {
                                    ((qp) objArr[i6]).b(th2);
                                }
                                ((dg2) this.e).d();
                                lj ljVar2 = (lj) this.d;
                                do {
                                    i3 = ljVar2.get();
                                } while (!ljVar2.compareAndSet(i3, ((((i3 >>> 27) & 15) + 1) & 15) << 27));
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
            pp ppVar = new pp(qpVar, this, u33Var, i4);
            xh1 xh1Var = new xh1();
            xh1Var.n = ppVar;
            xh1Var.o = new lj(0);
            return xh1Var;
        }
    }

    public void g(pe1 pe1Var) {
        int i;
        synchronized (this.b) {
            try {
                dg2 dg2Var = (dg2) this.e;
                this.e = (dg2) this.f;
                this.f = dg2Var;
                lj ljVar = (lj) this.d;
                do {
                    i = ljVar.get();
                } while (!ljVar.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                int i2 = dg2Var.b;
                for (int i3 = 0; i3 < i2; i3++) {
                    pe1Var.k(dg2Var.f(i3));
                }
                dg2Var.d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public float h(int i, boolean z) {
        Layout layout = (Layout) this.b;
        int lineEnd = layout.getLineEnd(layout.getLineForOffset(i));
        if (i > lineEnd) {
            i = lineEnd;
        }
        return z ? layout.getPrimaryHorizontal(i) : layout.getSecondaryHorizontal(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float i(int r29, boolean r30, boolean r31) {
        /*
            Method dump skipped, instruction units count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rp.i(int, boolean, boolean):float");
    }

    public void k(String str, String str2) {
        str2.getClass();
        dh1 dh1Var = (dh1) this.d;
        dh1Var.getClass();
        ci4.b(str);
        ci4.c(str2, str);
        dh1Var.q(str);
        ci4.a(dh1Var, str, str2);
    }

    public int l(int i, int i2) {
        while (i > i2) {
            char cCharAt = ((Layout) this.b).getText().charAt(i - 1);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != 5760 && ((nt1.l(cCharAt, 8192) < 0 || nt1.l(cCharAt, 8202) > 0 || cCharAt == 8199) && cCharAt != 8287 && cCharAt != 12288)) {
                return i;
            }
            i--;
        }
        return i;
    }

    public void m(String str, q63 q63Var) {
        str.getClass();
        if (str.length() <= 0) {
            k21.f("method.isEmpty() == true");
            return;
        }
        if (q63Var == null) {
            if (str.equals(HttpMethods.POST) || str.equals(HttpMethods.PUT) || str.equals(HttpMethods.PATCH) || str.equals("PROPPATCH") || str.equals("QUERY") || str.equals("REPORT")) {
                k21.l(di0.v("method ", str, " must have a request body."));
                return;
            }
        } else if (!nt1.M(str)) {
            k21.l(di0.v("method ", str, " must not have a request body."));
            return;
        }
        this.c = str;
        this.e = q63Var;
    }

    public void n(ao aoVar, z14 z14Var) {
        byte[] bytes;
        y14 y14Var = (y14) this.f;
        hp hpVar = (hp) this.b;
        String str = (String) this.c;
        mk0 mk0Var = (mk0) this.e;
        if (mk0Var == null) {
            q73.r("Null transformer");
            return;
        }
        o01 o01Var = (o01) this.d;
        aq0 aq0Var = y14Var.c;
        hp hpVarB = hpVar.b(aoVar.b);
        bo boVar = new bo();
        boVar.i = new HashMap();
        boVar.g = Long.valueOf(y14Var.a.i());
        boVar.h = Long.valueOf(y14Var.b.i());
        boVar.b = str;
        Object obj = aoVar.a;
        switch (mk0Var.n) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                gn0.b.getClass();
                bytes = nk0.a.i((kk0) obj).getBytes(Charset.forName("UTF-8"));
                break;
            default:
                String strI = nj3.b.i((mj3) obj);
                strI.getClass();
                Log.d("FirebaseSessions", "Session Event Type: SESSION_START");
                bytes = strI.getBytes(k40.a);
                bytes.getClass();
                break;
        }
        boVar.f = new l01(o01Var, bytes);
        boVar.d = null;
        aq0Var.b.execute(new yp0(aq0Var, hpVarB, z14Var, boVar.c(), 0));
    }

    public void o(Object obj, String str) {
        str.getClass();
        ((LinkedHashMap) this.b).put(str, obj);
        wr3 wr3Var = (wr3) ((LinkedHashMap) this.d).get(str);
        if (wr3Var != null) {
            wr3Var.h(obj);
        }
        wr3 wr3Var2 = (wr3) ((LinkedHashMap) this.e).get(str);
        if (wr3Var2 != null) {
            wr3Var2.h(obj);
        }
    }

    public String toString() {
        switch (this.a) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                String str = (String) this.b;
                int length = str.length() + 20;
                String str2 = (String) this.c;
                int length2 = str2.length() + length;
                String str3 = (String) this.d;
                int length3 = str3.length() + length2;
                String str4 = (String) this.e;
                int length4 = str4.length() + length3;
                String str5 = (String) this.f;
                StringBuilder sb = new StringBuilder(str5.length() + length4);
                sb.append("VersionInfo(");
                sb.append(str);
                sb.append(':');
                sb.append(str2);
                if (!"UNAVAILABLE".equals(str3)) {
                    sb.append(':');
                    sb.append(str3);
                }
                if (!"UNAVAILABLE".equals(str4)) {
                    sb.append(':');
                    sb.append(str4);
                }
                sb.append(')');
                if (!"UNAVAILABLE".equals(str5)) {
                    sb.append('@');
                    sb.append(str5);
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public rp(wd2 wd2Var, gd5 gd5Var, HashMap map) {
        this.a = 10;
        this.b = new ConcurrentHashMap();
        wd2Var.getClass();
        this.c = wd2Var;
        gd5Var.getClass();
        this.d = gd5Var;
        this.f = map;
        n44.U(!map.isEmpty());
        this.e = u85.c;
    }

    public rp(Map map) {
        this.a = 6;
        map.getClass();
        this.b = new LinkedHashMap(map);
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new LinkedHashMap();
        this.f = new mc1(4, this);
    }

    public rp(int i) {
        this.a = i;
        switch (i) {
            case 5:
                this.f = mj1.R;
                this.c = HttpMethods.GET;
                this.d = new dh1(19, false);
                break;
            default:
                this.b = new Object();
                this.d = new lj(0);
                this.e = new dg2();
                this.f = new dg2();
                break;
        }
    }

    public rp(Context context, qd1 qd1Var) {
        yl2 yl2Var;
        this.a = 7;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        uv uvVar = new uv(applicationContext, qd1Var, 0);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        uv uvVar2 = new uv(applicationContext2, qd1Var, 1);
        if (Build.VERSION.SDK_INT < 28) {
            Context applicationContext3 = context.getApplicationContext();
            applicationContext3.getClass();
            String str = xl2.a;
            yl2Var = new yl2(applicationContext3, qd1Var);
        } else {
            yl2Var = null;
        }
        Context applicationContext4 = context.getApplicationContext();
        applicationContext4.getClass();
        uv uvVar3 = new uv(applicationContext4, qd1Var, 2);
        this.b = context;
        this.c = uvVar;
        this.d = uvVar2;
        this.e = yl2Var;
        this.f = uvVar3;
    }

    public rp(Layout layout) {
        this.a = 3;
        this.b = layout;
        ArrayList arrayList = new ArrayList();
        int length = 0;
        do {
            int iF0 = zs3.F0(((Layout) this.b).getText(), '\n', length, 4);
            length = iF0 < 0 ? ((Layout) this.b).getText().length() : iF0 + 1;
            arrayList.add(Integer.valueOf(length));
        } while (length < ((Layout) this.b).getText().length());
        this.c = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList2.add(null);
        }
        this.d = arrayList2;
        this.e = new boolean[((ArrayList) this.c).size()];
        ((ArrayList) this.c).size();
    }

    public rp(hp hpVar, String str, o01 o01Var, mk0 mk0Var, y14 y14Var) {
        this.a = 8;
        this.b = hpVar;
        this.c = str;
        this.d = o01Var;
        this.e = mk0Var;
        this.f = y14Var;
    }

    public /* synthetic */ rp(boolean z) {
        this.a = 5;
    }

    public rp(String str, String str2, String str3, String str4) {
        this.a = 9;
        this.b = "org.apache.http.client";
        this.c = str == null ? "UNAVAILABLE" : str;
        this.d = str2 == null ? "UNAVAILABLE" : str2;
        this.e = str3 == null ? "UNAVAILABLE" : str3;
        this.f = str4 == null ? "UNAVAILABLE" : str4;
    }

    public rp(da0 da0Var) {
        this.a = 1;
        this.b = o70.D0(da0Var.a);
        this.c = o70.D0(da0Var.b);
        this.d = o70.D0(da0Var.c);
        List list = (List) da0Var.f.getValue();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new cc(5, (js2) it.next()));
        }
        this.e = arrayList;
        List list2 = (List) da0Var.g.getValue();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new ca0((un0) it2.next(), 0));
        }
        this.f = arrayList2;
    }

    public rp(tw3 tw3Var) {
        this.a = 2;
        tw3Var.getClass();
        this.b = tw3Var;
        this.e = zk1.a;
        this.f = c81.a;
    }
}
