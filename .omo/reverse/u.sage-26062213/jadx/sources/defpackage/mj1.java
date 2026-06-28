package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import com.google.android.gms.common.ConnectionResult;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.attribute.FileAttribute;
import java.security.Principal;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mj1 implements mx, be0, d94, bs0, iz, aa0, gi0, ie0, st3, oi3 {
    public static final aw A;
    public static final aw B;
    public static final mj1 C;
    public static final mj1 D;
    public static final k21 E;
    public static final ia F;
    public static final ia G;
    public static final ia H;
    public static final mj1 I;
    public static final mj1 J;
    public static final mj1 K;
    public static final mj1 L;
    public static final mj1 M;
    public static final mj1 N;
    public static final mj1 O;
    public static final hy1 P;
    public static final ds0 Q;
    public static final mj1 R;
    public static final mj1 S;
    public static final mj1 T;
    public static final l33 U;
    public static final /* synthetic */ mj1 V;
    public static final /* synthetic */ mj1 W;
    public static final mj1 X;
    public static final /* synthetic */ mj1 Y;
    public static final mj1 Z;
    public static final mj1 a0;
    public static final mj1 b0;
    public static final mj1 c0;
    public static final mj1 d0;
    public static final mj1 e0;
    public static final mj1 f0;
    public static final mj1 g0;
    public static final cw o = new cw(-1.0f, -1.0f);
    public static final cw p = new cw(0.0f, -1.0f);
    public static final cw q = new cw(1.0f, -1.0f);
    public static final cw r = new cw(-1.0f, 0.0f);
    public static final cw s = new cw(0.0f, 0.0f);
    public static final cw t = new cw(1.0f, 0.0f);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final cw f211u = new cw(-1.0f, 1.0f);
    public static final cw v = new cw(0.0f, 1.0f);
    public static final cw w = new cw(1.0f, 1.0f);
    public static final bw x = new bw(-1.0f);
    public static final bw y = new bw(0.0f);
    public static final aw z;
    public final /* synthetic */ int n;

    static {
        new bw(1.0f);
        z = new aw(-1.0f);
        A = new aw(0.0f);
        B = new aw(1.0f);
        C = new mj1(2);
        D = new mj1(3);
        E = new k21(12);
        F = new ia(0);
        G = new ia(1);
        H = new ia(2);
        I = new mj1(6);
        J = new mj1(7);
        K = new mj1(8);
        L = new mj1(9);
        M = new mj1(10);
        N = new mj1(11);
        O = new mj1(12);
        P = hy1.n;
        Q = new ds0(1.0f, 1.0f);
        R = new mj1(13);
        S = new mj1(14);
        T = new mj1(15);
        U = new l33(Float.NaN, Float.NaN, Float.NaN, Float.NaN);
        V = new mj1(18);
        W = new mj1(19);
        X = new mj1(20);
        Y = new mj1(21);
        Z = new mj1(22);
        a0 = new mj1(23);
        b0 = new mj1(24);
        c0 = new mj1(25);
        d0 = new mj1(26);
        e0 = new mj1(27);
        f0 = new mj1(28);
        g0 = new mj1(29);
    }

    public /* synthetic */ mj1(int i) {
        this.n = i;
    }

    public static void m(b40 b40Var, g03 g03Var) {
        w80.L(g03Var, "Protocol version");
        String str = g03Var.n;
        b40Var.e(str.length() + 4);
        b40Var.b(str);
        b40Var.a('/');
        b40Var.b(Integer.toString(g03Var.o));
        b40Var.a('.');
        b40Var.b(Integer.toString(g03Var.p));
    }

    public static fn0 n(oi3 oi3Var, dd1 dd1Var, bh0 bh0Var, ne1 ne1Var) {
        g01 g01Var = g01.n;
        int i = 15;
        dh0 dh0Var = null;
        try {
            System.loadLibrary("datastore_shared_counter");
            return new fn0(new k51(oi3Var, new v(17, bh0Var), ne1Var), tv4.E(new n(g01Var, dh0Var, i)), dd1Var, bh0Var);
        } catch (SecurityException | UnsatisfiedLinkError unused) {
            return new fn0(new k51(oi3Var, new t3(21), ne1Var), tv4.E(new n(g01Var, dh0Var, i)), dd1Var, bh0Var);
        }
    }

    public static b40 p(b40 b40Var, gj1 gj1Var) {
        w80.L(gj1Var, "Header");
        if (gj1Var instanceof cz) {
            return ((cz) gj1Var).o;
        }
        if (b40Var != null) {
            b40Var.o = 0;
        } else {
            b40Var = new b40(64);
        }
        String name = gj1Var.getName();
        String value = gj1Var.getValue();
        int length = name.length() + 2;
        if (value != null) {
            length += value.length();
        }
        b40Var.e(length);
        b40Var.b(name);
        b40Var.b(": ");
        if (value != null) {
            b40Var.e(value.length() + b40Var.o);
            for (int i = 0; i < value.length(); i++) {
                char cCharAt = value.charAt(i);
                if (cCharAt == '\r' || cCharAt == '\n' || cCharAt == '\f' || cCharAt == 11) {
                    cCharAt = ' ';
                }
                b40Var.a(cCharAt);
            }
        }
        return b40Var;
    }

    public static b40 q(b40 b40Var, d73 d73Var) {
        w80.L(d73Var, "Request line");
        if (b40Var != null) {
            b40Var.o = 0;
        } else {
            b40Var = new b40(64);
        }
        hv hvVar = (hv) d73Var;
        String str = hvVar.o;
        String str2 = hvVar.p;
        int length = str2.length() + str.length() + 1 + 1;
        g03 g03Var = hvVar.n;
        b40Var.e(g03Var.n.length() + 4 + length);
        b40Var.b(str);
        b40Var.a(' ');
        b40Var.b(str2);
        b40Var.a(' ');
        m(b40Var, g03Var);
        return b40Var;
    }

    public static void s(File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return;
        }
        if (parentFile.exists() && !parentFile.isDirectory() && nt1.g(parentFile.getName(), "firebaseSessions") && !parentFile.delete()) {
            q73.q(parentFile, "Failed to delete conflicting file: ");
            return;
        }
        if (parentFile.isDirectory()) {
            return;
        }
        if (Build.VERSION.SDK_INT < 26) {
            if (parentFile.mkdirs() || parentFile.isDirectory()) {
                return;
            }
            q73.q(parentFile, "Failed to create directory: ");
            return;
        }
        try {
            Files.createDirectories(parentFile.toPath(), new FileAttribute[0]);
        } catch (Exception e) {
            throw new IOException("Failed to create directory: " + parentFile, e);
        }
    }

    public static int t(em1 em1Var) throws r74 {
        w80.L(em1Var, "HTTP host");
        int i = em1Var.p;
        if (i > 0) {
            return i;
        }
        String str = em1Var.q;
        if (str.equalsIgnoreCase("http")) {
            return 80;
        }
        if (str.equalsIgnoreCase("https")) {
            return 443;
        }
        throw new r74(str.concat(" protocol is not supported"));
    }

    @Override // defpackage.d94
    public Object a(ul1 ul1Var) {
        SSLSession sSLSessionB0;
        yk0 yk0Var;
        yk0 yk0Var2;
        rl1 rl1VarC = rl1.c(ul1Var);
        tj tjVar = (tj) rl1VarC.a("http.auth.target-scope", tj.class);
        Principal principalB = null;
        if (tjVar != null) {
            oj ojVar = tjVar.b;
            Principal principalB2 = (ojVar == null || !ojVar.e() || !ojVar.f() || (yk0Var2 = tjVar.c) == null) ? null : yk0Var2.b();
            if (principalB2 == null) {
                tj tjVar2 = (tj) rl1VarC.a("http.auth.proxy-scope", tj.class);
                oj ojVar2 = tjVar2.b;
                if (ojVar2 != null && ojVar2.e() && ojVar2.f() && (yk0Var = tjVar2.c) != null) {
                    principalB = yk0Var.b();
                }
            } else {
                principalB = principalB2;
            }
        }
        if (principalB == null) {
            sl1 sl1Var = (sl1) rl1VarC.a("http.connection", sl1.class);
            if (sl1Var.isOpen() && (sl1Var instanceof v92) && (sSLSessionB0 = ((v92) sl1Var).b0()) != null) {
                return sSLSessionB0.getLocalPrincipal();
            }
        }
        return principalB;
    }

    @Override // defpackage.iz
    public as0 b() {
        return Q;
    }

    @Override // defpackage.oi3
    public Object c() {
        return new hg2(true);
    }

    @Override // defpackage.iz
    public long d() {
        return 9205357640488583168L;
    }

    @Override // defpackage.st3
    public void e(rt3 rt3Var) {
        rt3Var.clear();
    }

    @Override // defpackage.mx
    public Rect f(Activity activity) throws Exception {
        lx lxVar = mx.a;
        Rect rect = new Rect();
        Configuration configuration = activity.getResources().getConfiguration();
        DisplayCutout displayCutoutJ = null;
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            if (activity.isInMultiWindowMode()) {
                Object objInvoke = obj.getClass().getDeclaredMethod("getBounds", null).invoke(obj, null);
                objInvoke.getClass();
                rect.set((Rect) objInvoke);
            } else {
                Object objInvoke2 = obj.getClass().getDeclaredMethod("getAppBounds", null).invoke(obj, null);
                objInvoke2.getClass();
                rect.set((Rect) objInvoke2);
            }
        } catch (Exception e) {
            if (!(e instanceof NoSuchFieldException) && !(e instanceof NoSuchMethodException) && !(e instanceof IllegalAccessException) && !(e instanceof InvocationTargetException)) {
                throw e;
            }
            lxVar.getClass();
            Log.w(lx.b, e);
            activity.getWindowManager().getDefaultDisplay().getRectSize(rect);
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        if (!activity.isInMultiWindowMode()) {
            Resources resources = activity.getResources();
            int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
            int i = rect.bottom + dimensionPixelSize;
            if (i == point.y) {
                rect.bottom = i;
            } else {
                int i2 = rect.right + dimensionPixelSize;
                if (i2 == point.x) {
                    rect.right = i2;
                } else if (rect.left == dimensionPixelSize) {
                    rect.left = 0;
                }
            }
        }
        if ((rect.width() < point.x || rect.height() < point.y) && !activity.isInMultiWindowMode()) {
            try {
                Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(null);
                constructor.setAccessible(true);
                Object objNewInstance = constructor.newInstance(null);
                Method declaredMethod = defaultDisplay.getClass().getDeclaredMethod("getDisplayInfo", objNewInstance.getClass());
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(defaultDisplay, objNewInstance);
                Field declaredField2 = objNewInstance.getClass().getDeclaredField("displayCutout");
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(objNewInstance);
                if (x2.s(obj2)) {
                    displayCutoutJ = x2.j(obj2);
                }
            } catch (Exception e2) {
                if (!(e2 instanceof ClassNotFoundException) && !(e2 instanceof NoSuchMethodException) && !(e2 instanceof NoSuchFieldException) && !(e2 instanceof IllegalAccessException) && !(e2 instanceof InvocationTargetException) && !(e2 instanceof InstantiationException)) {
                    throw e2;
                }
                lxVar.getClass();
                Log.w(lx.b, e2);
            }
            if (displayCutoutJ != null) {
                if (rect.left == displayCutoutJ.getSafeInsetLeft()) {
                    rect.left = 0;
                }
                if (point.x - rect.right == displayCutoutJ.getSafeInsetRight()) {
                    rect.right = displayCutoutJ.getSafeInsetRight() + rect.right;
                }
                if (rect.top == displayCutoutJ.getSafeInsetTop()) {
                    rect.top = 0;
                }
                if (point.y - rect.bottom == displayCutoutJ.getSafeInsetBottom()) {
                    rect.bottom = displayCutoutJ.getSafeInsetBottom() + rect.bottom;
                }
            }
        }
        return rect;
    }

    @Override // defpackage.bs0
    public float g(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    @Override // defpackage.iz
    public hy1 getLayoutDirection() {
        return P;
    }

    @Override // defpackage.ie0
    public boolean h(vm1 vm1Var, ul1 ul1Var) {
        return false;
    }

    @Override // defpackage.oi3
    public void i(Object obj, l64 l64Var) throws IOException {
        sg1 sg1VarA;
        Map mapA = ((hg2) obj).a();
        ux2 ux2VarN = wx2.n();
        for (Map.Entry entry : mapA.entrySet()) {
            rx2 rx2Var = (rx2) entry.getKey();
            Object value = entry.getValue();
            String str = rx2Var.a;
            if (value instanceof Boolean) {
                zx2 zx2VarD = ay2.D();
                boolean zBooleanValue = ((Boolean) value).booleanValue();
                zx2VarD.c();
                ay2.q((ay2) zx2VarD.o, zBooleanValue);
                sg1VarA = zx2VarD.a();
            } else if (value instanceof Float) {
                zx2 zx2VarD2 = ay2.D();
                float fFloatValue = ((Number) value).floatValue();
                zx2VarD2.c();
                ay2.r((ay2) zx2VarD2.o, fFloatValue);
                sg1VarA = zx2VarD2.a();
            } else if (value instanceof Double) {
                zx2 zx2VarD3 = ay2.D();
                double dDoubleValue = ((Number) value).doubleValue();
                zx2VarD3.c();
                ay2.o((ay2) zx2VarD3.o, dDoubleValue);
                sg1VarA = zx2VarD3.a();
            } else if (value instanceof Integer) {
                zx2 zx2VarD4 = ay2.D();
                int iIntValue = ((Number) value).intValue();
                zx2VarD4.c();
                ay2.s((ay2) zx2VarD4.o, iIntValue);
                sg1VarA = zx2VarD4.a();
            } else if (value instanceof Long) {
                zx2 zx2VarD5 = ay2.D();
                long jLongValue = ((Number) value).longValue();
                zx2VarD5.c();
                ay2.l((ay2) zx2VarD5.o, jLongValue);
                sg1VarA = zx2VarD5.a();
            } else if (value instanceof String) {
                zx2 zx2VarD6 = ay2.D();
                zx2VarD6.c();
                ay2.m((ay2) zx2VarD6.o, (String) value);
                sg1VarA = zx2VarD6.a();
            } else if (value instanceof Set) {
                zx2 zx2VarD7 = ay2.D();
                xx2 xx2VarO = yx2.o();
                xx2VarO.c();
                yx2.l((yx2) xx2VarO.o, (Set) value);
                zx2VarD7.c();
                ay2.n((ay2) zx2VarD7.o, (yx2) xx2VarO.a());
                sg1VarA = zx2VarD7.a();
            } else {
                if (!(value instanceof byte[])) {
                    k21.n("PreferencesSerializer does not support type: ".concat(value.getClass().getName()));
                    return;
                }
                zx2 zx2VarD8 = ay2.D();
                byte[] bArr = (byte[]) value;
                f00 f00VarD = f00.d(bArr, 0, bArr.length);
                zx2VarD8.c();
                ay2.p((ay2) zx2VarD8.o, f00VarD);
                sg1VarA = zx2VarD8.a();
            }
            ux2VarN.getClass();
            str.getClass();
            ux2VarN.c();
            wx2.l((wx2) ux2VarN.o).put(str, (ay2) sg1VarA);
        }
        wx2 wx2Var = (wx2) ux2VarN.a();
        int iA = wx2Var.a(null);
        Logger logger = d70.f;
        if (iA > 4096) {
            iA = 4096;
        }
        d70 d70Var = new d70(l64Var, iA);
        wx2Var.b(d70Var);
        if (d70Var.d > 0) {
            d70Var.k();
        }
    }

    @Override // defpackage.aa0
    public Object j(hg hgVar) {
        switch (this.n) {
            case 14:
                Object objL = hgVar.l(new z03(fq.class, Executor.class));
                objL.getClass();
                return ht4.p((Executor) objL);
            default:
                Object objL2 = hgVar.l(new z03(rw.class, Executor.class));
                objL2.getClass();
                return ht4.p((Executor) objL2);
        }
    }

    @Override // defpackage.oi3
    public Object k(FileInputStream fileInputStream) throws xi0 {
        byte[] bArr;
        try {
            wx2 wx2VarO = wx2.o(fileInputStream);
            hg2 hg2Var = new hg2(false);
            sx2[] sx2VarArr = (sx2[]) Arrays.copyOf(new sx2[0], 0);
            hg2Var.b();
            if (sx2VarArr.length > 0) {
                sx2 sx2Var = sx2VarArr[0];
                throw null;
            }
            Map mapM = wx2VarO.m();
            mapM.getClass();
            for (Map.Entry entry : mapM.entrySet()) {
                String str = (String) entry.getKey();
                ay2 ay2Var = (ay2) entry.getValue();
                str.getClass();
                ay2Var.getClass();
                int iC = ay2Var.C();
                switch (iC == 0 ? -1 : tx2.a[di0.F(iC)]) {
                    case -1:
                        throw new xi0("Value case is null.", null);
                    case 0:
                    default:
                        p61.x();
                        return null;
                    case 1:
                        hg2Var.f(new rx2(str), Boolean.valueOf(ay2Var.t()));
                        break;
                    case 2:
                        hg2Var.f(new rx2(str), Float.valueOf(ay2Var.x()));
                        break;
                    case 3:
                        hg2Var.f(new rx2(str), Double.valueOf(ay2Var.w()));
                        break;
                    case 4:
                        hg2Var.f(new rx2(str), Integer.valueOf(ay2Var.y()));
                        break;
                    case 5:
                        hg2Var.f(new rx2(str), Long.valueOf(ay2Var.z()));
                        break;
                    case 6:
                        hg2Var.f(new rx2(str), ay2Var.A());
                        break;
                    case 7:
                        rx2 rx2Var = new rx2(str);
                        ct1 ct1VarN = ay2Var.B().n();
                        ct1VarN.getClass();
                        hg2Var.f(rx2Var, o70.F0(ct1VarN));
                        break;
                    case 8:
                        rx2 rx2Var2 = new rx2(str);
                        f00 f00VarU = ay2Var.u();
                        int size = f00VarU.size();
                        if (size == 0) {
                            bArr = dt1.b;
                        } else {
                            byte[] bArr2 = new byte[size];
                            f00VarU.e(size, bArr2);
                            bArr = bArr2;
                        }
                        hg2Var.f(rx2Var2, bArr);
                        break;
                    case ConnectionResult.SERVICE_INVALID /* 9 */:
                        throw new xi0("Value not set.", null);
                }
            }
            return new hg2(new LinkedHashMap(hg2Var.a()), true);
        } catch (wt1 e) {
            throw new xi0("Unable to parse preferences proto.", e);
        }
    }

    @Override // defpackage.st3
    public boolean l(Object obj, Object obj2) {
        return false;
    }

    public long o(im1 im1Var) throws e03 {
        long j;
        switch (this.n) {
            case 20:
                w80.L(im1Var, "HTTP message");
                gj1 firstHeader = im1Var.getFirstHeader("Transfer-Encoding");
                if (firstHeader != null) {
                    try {
                        ru[] ruVarArrA = firstHeader.a();
                        int length = ruVarArrA.length;
                        if (!"identity".equalsIgnoreCase(firstHeader.getValue()) && length > 0 && "chunked".equalsIgnoreCase(ruVarArrA[length - 1].n)) {
                            return -2L;
                        }
                    } catch (zs2 e) {
                        throw new e03("Invalid Transfer-Encoding header value: " + firstHeader, e);
                    }
                } else if (im1Var.getFirstHeader("Content-Length") != null) {
                    gj1[] headers = im1Var.getHeaders("Content-Length");
                    int length2 = headers.length - 1;
                    while (true) {
                        if (length2 >= 0) {
                            try {
                                j = Long.parseLong(headers[length2].getValue());
                            } catch (NumberFormatException unused) {
                                length2--;
                            }
                        } else {
                            j = -1;
                        }
                    }
                    if (j >= 0) {
                        return j;
                    }
                }
                return -1L;
            default:
                w80.L(im1Var, "HTTP message");
                gj1 firstHeader2 = im1Var.getFirstHeader("Transfer-Encoding");
                if (firstHeader2 != null) {
                    String value = firstHeader2.getValue();
                    if ("chunked".equalsIgnoreCase(value)) {
                        if (!im1Var.getProtocolVersion().a(dn1.r)) {
                            return -2L;
                        }
                        throw new e03(cm1.a("Chunked transfer encoding not allowed for " + im1Var.getProtocolVersion()));
                    }
                    if (!"identity".equalsIgnoreCase(value)) {
                        throw new e03(cm1.a("Unsupported transfer encoding: " + value));
                    }
                } else {
                    gj1 firstHeader3 = im1Var.getFirstHeader("Content-Length");
                    if (firstHeader3 != null) {
                        String value2 = firstHeader3.getValue();
                        try {
                            long j2 = Long.parseLong(value2);
                            if (j2 >= 0) {
                                return j2;
                            }
                            throw new e03(cm1.a("Negative content length: " + value2));
                        } catch (NumberFormatException unused2) {
                            throw new e03(cm1.a("Invalid content length: " + value2));
                        }
                    }
                }
                return -1L;
        }
    }

    public long r(vm1 vm1Var) {
        su suVar = new su(vm1Var.headerIterator("Keep-Alive"));
        while (suVar.hasNext()) {
            if (suVar.p == null) {
                suVar.b();
            }
            ru ruVar = suVar.p;
            if (ruVar == null) {
                q73.l("No more header elements available");
                return 0L;
            }
            suVar.p = null;
            String str = ruVar.n;
            String str2 = ruVar.o;
            if (str2 != null && str.equalsIgnoreCase("timeout")) {
                try {
                    return Long.parseLong(str2) * 1000;
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
        }
        return -1L;
    }

    public String toString() {
        switch (this.n) {
            case 13:
                return "{}";
            default:
                return super.toString();
        }
    }
}
