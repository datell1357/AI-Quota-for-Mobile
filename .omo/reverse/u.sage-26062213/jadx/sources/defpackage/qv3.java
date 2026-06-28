package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocket;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class qv3 implements df4, ro4, rx4, cr0, qh, sh, gi0, mg0, rk3 {
    public static final qv3 o = new qv3(0);
    public static final qv3 p = new qv3(1);
    public static final qv3 q = new qv3(2);
    public static final qv3 r = new qv3(3);
    public static final qv3 s = new qv3(4);
    public static final /* synthetic */ qv3 t = new qv3(5);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final qv3 f285u = new qv3(6);
    public final /* synthetic */ int n;

    public /* synthetic */ qv3(int i) {
        this.n = i;
    }

    public static BitSet k(int... iArr) {
        BitSet bitSet = new BitSet();
        for (int i : iArr) {
            bitSet.set(i);
        }
        return bitSet;
    }

    public static final void l(hj hjVar) {
        d90 d90Var = hj.h;
        if (hj.i == null) {
            hj.i = new hj();
            gj gjVar = new gj("Okio Watchdog");
            gjVar.setDaemon(true);
            gjVar.start();
        }
        long jNanoTime = System.nanoTime();
        long j = hjVar.c;
        boolean z = hjVar.a;
        if (j != 0 && z) {
            hjVar.g = Math.min(j, hjVar.c() - jNanoTime) + jNanoTime;
        } else if (j != 0) {
            hjVar.g = jNanoTime + j;
        } else {
            if (!z) {
                throw new AssertionError();
            }
            hjVar.g = hjVar.c();
        }
        d90 d90Var2 = hj.h;
        int i = d90Var2.o + 1;
        d90Var2.o = i;
        hj[] hjVarArr = (hj[]) d90Var2.p;
        if (i == hjVarArr.length) {
            hj[] hjVarArr2 = new hj[i * 2];
            ji.R(0, 0, 14, hjVarArr, hjVarArr2);
            d90Var2.p = hjVarArr2;
        }
        d90Var2.h(i, hjVar);
        if (hjVar.f == 1) {
            hj.k.signal();
        }
    }

    public static hj m() throws InterruptedException {
        d90 d90Var = hj.h;
        hj hjVar = ((hj[]) d90Var.p)[1];
        if (hjVar == null) {
            long jNanoTime = System.nanoTime();
            hj.k.await(hj.l, TimeUnit.MILLISECONDS);
            if (((hj[]) d90Var.p)[1] != null || System.nanoTime() - jNanoTime < hj.m) {
                return null;
            }
            return hj.i;
        }
        long jNanoTime2 = hjVar.g - System.nanoTime();
        if (jNanoTime2 > 0) {
            hj.k.await(jNanoTime2, TimeUnit.NANOSECONDS);
            return null;
        }
        d90Var.o(hjVar);
        hjVar.e = 2;
        return hjVar;
    }

    public static mk3 n(ls3 ls3Var) {
        return new mk3(System.currentTimeMillis() + 3600000, new t72(8), new kk3(true, false, false), 10.0d, 1.2d, 60);
    }

    public static View o(View view, int i) throws NoSuchMethodException {
        if (Build.VERSION.SDK_INT < 29) {
            Method declaredMethod = q9.b1;
            if (declaredMethod == null) {
                declaredMethod = Class.forName("android.view.View").getDeclaredMethod("getAccessibilityViewId", null);
                q9.b1 = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            if (nt1.g(declaredMethod.invoke(view, null), Integer.valueOf(i))) {
                return view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View viewO = o(viewGroup.getChildAt(i2), i);
                    if (viewO != null) {
                        return viewO;
                    }
                }
            }
        }
        return null;
    }

    public static boolean p() {
        try {
            if (q9.V0 == null) {
                q9.V0 = Class.forName("android.os.SystemProperties");
            }
            if (q9.W0 == null) {
                Class cls = q9.V0;
                q9.W0 = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
            }
            Method method = q9.W0;
            Object objInvoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
            return nt1.g(objInvoke instanceof Boolean ? (Boolean) objInvoke : null, Boolean.TRUE);
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean r(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (r2 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
    
        if (r0.length() <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        r0.append(' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        r2 = r8.d;
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r2 >= r4) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        r5 = r7.n[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
    
        if (r9 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005a, code lost:
    
        if (r9.get(r5) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
    
        if (r(r5) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
    
        r3 = r3 + 1;
        r0.append(r5);
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String s(defpackage.b40 r7, defpackage.ky0 r8, java.util.BitSet r9) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
        L6:
            r2 = r1
        L7:
            boolean r3 = r8.a()
            int r4 = r8.c
            if (r3 != 0) goto L6f
            int r3 = r8.d
            char[] r5 = r7.n
            char r3 = r5[r3]
            if (r9 == 0) goto L1e
            boolean r5 = r9.get(r3)
            if (r5 == 0) goto L1e
            goto L6f
        L1e:
            boolean r3 = r(r3)
            if (r3 == 0) goto L3e
            int r2 = r8.d
            r3 = r2
        L27:
            if (r2 >= r4) goto L39
            char[] r5 = r7.n
            char r5 = r5[r2]
            boolean r5 = r(r5)
            if (r5 != 0) goto L34
            goto L39
        L34:
            int r3 = r3 + 1
            int r2 = r2 + 1
            goto L27
        L39:
            r8.b(r3)
            r2 = 1
            goto L7
        L3e:
            if (r2 == 0) goto L4b
            int r2 = r0.length()
            if (r2 <= 0) goto L4b
            r2 = 32
            r0.append(r2)
        L4b:
            int r2 = r8.d
            r3 = r2
        L4e:
            if (r2 >= r4) goto L6b
            char[] r5 = r7.n
            char r5 = r5[r2]
            if (r9 == 0) goto L5c
            boolean r6 = r9.get(r5)
            if (r6 != 0) goto L6b
        L5c:
            boolean r6 = r(r5)
            if (r6 == 0) goto L63
            goto L6b
        L63:
            int r3 = r3 + 1
            r0.append(r5)
            int r2 = r2 + 1
            goto L4e
        L6b:
            r8.b(r3)
            goto L6
        L6f:
            java.lang.String r7 = r0.toString()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qv3.s(b40, ky0, java.util.BitSet):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        if (r3 != '\"') goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r2 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if (r0.length() <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        r0.append(' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        if (r11.a() == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        r2 = r11.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005e, code lost:
    
        if (r10.n[r2] == '\"') goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0061, code lost:
    
        r2 = r2 + 1;
        r5 = false;
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
    
        if (r2 >= r4) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
    
        r8 = r10.n[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
    
        if (r5 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006f, code lost:
    
        if (r8 == '\"') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
    
        if (r8 == '\\') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
    
        r0.append('\\');
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0076, code lost:
    
        r0.append(r8);
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007b, code lost:
    
        if (r8 != '\"') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007d, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0080, code lost:
    
        if (r8 != '\\') goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0082, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0086, code lost:
    
        if (r8 == '\r') goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008a, code lost:
    
        if (r8 == '\n') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008c, code lost:
    
        r0.append(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008f, code lost:
    
        r2 = r2 + 1;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0094, code lost:
    
        r11.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0099, code lost:
    
        if (r2 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x009f, code lost:
    
        if (r0.length() <= 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a1, code lost:
    
        r0.append(' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a4, code lost:
    
        r2 = r11.d;
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a7, code lost:
    
        if (r2 >= r4) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a9, code lost:
    
        r5 = r10.n[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ad, code lost:
    
        if (r12 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b3, code lost:
    
        if (r12.get(r5) != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b9, code lost:
    
        if (r(r5) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00bb, code lost:
    
        if (r5 != '\"') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00be, code lost:
    
        r3 = r3 + 1;
        r0.append(r5);
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c6, code lost:
    
        r11.b(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String t(defpackage.b40 r10, defpackage.ky0 r11, java.util.BitSet r12) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qv3.t(b40, ky0, java.util.BitSet):java.lang.String");
    }

    public static String u(String str, String str2, w3 w3Var, Boolean bool, pi1 pi1Var) {
        pi1Var.getClass();
        if (str == null || str.length() == 0) {
            return null;
        }
        return zs3.B0(str, "$C", false) ? gt3.w0(str, "$C", pi1Var.c(new tt(str2, w3Var, Locale.getDefault().toLanguageTag(), bool))) : str;
    }

    public static /* synthetic */ String v(String str, String str2, w3 w3Var, Boolean bool, pi1 pi1Var, int i) {
        if ((i & 8) != 0) {
            bool = null;
        }
        if ((i & 16) != 0) {
            pi1Var = new pi1();
        }
        return u(str, str2, w3Var, bool, pi1Var);
    }

    @Override // defpackage.qh, defpackage.sh
    public float a() {
        return 0.0f;
    }

    @Override // defpackage.ro4
    public boolean b(Class cls) {
        return rn4.class.isAssignableFrom(cls);
    }

    @Override // defpackage.cr0
    public boolean c(SSLSocket sSLSocket) {
        return gt3.y0(sSLSocket.getClass().getName(), "com.google.android.gms.org.conscrypt.", false);
    }

    @Override // defpackage.ro4
    public bp4 d(Class cls) {
        if (!rn4.class.isAssignableFrom(cls)) {
            k21.f("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (bp4) rn4.n(cls.asSubclass(rn4.class)).s(3);
        } catch (Exception e) {
            k21.i("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    @Override // defpackage.mg0
    public long e(long j, long j2) {
        float fA = ht4.a(j, j2);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(fA)) & 4294967295L);
        int i = sd3.a;
        return jFloatToRawIntBits;
    }

    @Override // defpackage.cr0
    public kp3 f(SSLSocket sSLSocket) {
        Class<?> cls = sSLSocket.getClass();
        Class<?> superclass = cls;
        while (!superclass.getSimpleName().equals("OpenSSLSocketImpl")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
            }
        }
        return new ec(superclass);
    }

    @Override // defpackage.rk3
    public mk3 g(ls3 ls3Var, JSONObject jSONObject) {
        return n(ls3Var);
    }

    @Override // defpackage.df4
    public ze4 h(Context context, bs0 bs0Var) {
        bs0Var.getClass();
        Context baseContext = context;
        while (true) {
            if (!(baseContext instanceof ContextWrapper)) {
                baseContext = context;
                break;
            }
            if ((baseContext instanceof Activity) || (baseContext instanceof InputMethodService)) {
                break;
            }
            ContextWrapper contextWrapper = (ContextWrapper) baseContext;
            if (contextWrapper.getBaseContext() == null) {
                break;
            }
            baseContext = contextWrapper.getBaseContext();
            baseContext.getClass();
        }
        if (baseContext instanceof Activity) {
            Activity activity = (Activity) baseContext;
            mx.a.getClass();
            int i = Build.VERSION.SDK_INT;
            return new ze4(new kx((i >= 30 ? nx.n : i >= 29 ? w13.q : i >= 28 ? mj1.D : w13.p).f(activity)), bs0Var.g(activity));
        }
        if (!(baseContext instanceof InputMethodService) && !(baseContext instanceof Application)) {
            k21.f("Must provide a UiContext or Application Context");
            return null;
        }
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        defaultDisplay.getClass();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new ze4(new Rect(0, 0, point.x, point.y), bs0Var.g(context));
    }

    @Override // defpackage.qh
    public void i(gb2 gb2Var, int i, int[] iArr, hy1 hy1Var, int[] iArr2) {
        if (hy1Var == hy1.n) {
            th.a(i, iArr, iArr2, false);
        } else {
            th.a(i, iArr, iArr2, true);
        }
    }

    @Override // defpackage.sh
    public void j(int i, gb2 gb2Var, int[] iArr, int[] iArr2) {
        th.a(i, iArr, iArr2, false);
    }

    public Signature[] q(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    public String toString() {
        switch (this.n) {
            case 12:
                return "Arrangement#Center";
            case 20:
                return "CompositionErrorContext";
            default:
                return super.toString();
        }
    }

    public List w(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (i90 i90Var : componentRegistrar.getComponents()) {
            String str = i90Var.a;
            if (str != null) {
                i90Var = new i90(str, i90Var.b, i90Var.c, i90Var.d, i90Var.e, new rr(str, i90Var, 1), i90Var.g);
            }
            arrayList.add(i90Var);
        }
        return arrayList;
    }

    @Override // defpackage.rx4
    public Object zza() {
        throw new IllegalStateException();
    }
}
