package defpackage;

import android.app.Activity;
import android.app.AppOpsManager;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.text.Layout;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import u.sage.R;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class k75 {
    public static volatile cr2 a;
    public static final ka0 b = new ka0(2094288676, false, new sq(4));
    public static final ka0 c = new ka0(-1342205566, false, new lq(2));
    public static final fk1 d = new fk1(2);

    public static final int A(Layout layout, int i, boolean z) {
        if (i <= 0) {
            return 0;
        }
        if (i >= layout.getText().length()) {
            return layout.getLineCount() - 1;
        }
        int lineForOffset = layout.getLineForOffset(i);
        int lineStart = layout.getLineStart(lineForOffset);
        int lineEnd = layout.getLineEnd(lineForOffset);
        if (lineStart == i || lineEnd == i) {
            if (lineStart == i) {
                if (z) {
                    return lineForOffset - 1;
                }
            } else if (!z) {
                return lineForOffset + 1;
            }
        }
        return lineForOffset;
    }

    public static final ab3 B(ya2 ya2Var) {
        Object objI = ya2Var.i();
        if (objI instanceof ab3) {
            return (ab3) objI;
        }
        return null;
    }

    public static final float C(ab3 ab3Var) {
        if (ab3Var != null) {
            return ab3Var.a;
        }
        return 0.0f;
    }

    public static final nd2 D(nd2 nd2Var, b12 b12Var, s02 s02Var, hr2 hr2Var, boolean z) {
        return nd2Var.c(new t02(b12Var, s02Var, hr2Var, z));
    }

    public static po3 E(po3 po3Var) {
        if (po3Var instanceof s14) {
            s14 s14Var = (s14) po3Var;
            if (s14Var.t == c75.w()) {
                s14Var.r = null;
                return po3Var;
            }
        }
        if (po3Var instanceof t14) {
            t14 t14Var = (t14) po3Var;
            if (t14Var.i == c75.w()) {
                t14Var.h = null;
                return po3Var;
            }
        }
        po3 po3VarG = wo3.g(po3Var, null, false);
        po3VarG.j();
        return po3VarG;
    }

    public static Object F(ms0 ms0Var, ne1 ne1Var) {
        po3 s14Var;
        po3 po3Var = (po3) wo3.b.c();
        if (po3Var instanceof s14) {
            s14 s14Var2 = (s14) po3Var;
            if (s14Var2.t == c75.w()) {
                pe1 pe1Var = s14Var2.r;
                pe1 pe1Var2 = s14Var2.s;
                try {
                    ((s14) po3Var).r = wo3.k(ms0Var, pe1Var, true);
                    ((s14) po3Var).s = pe1Var2;
                    return ne1Var.a();
                } finally {
                    s14Var2.r = pe1Var;
                    s14Var2.s = pe1Var2;
                }
            }
        }
        if (po3Var == null || (po3Var instanceof og2)) {
            s14Var = new s14(po3Var instanceof og2 ? (og2) po3Var : null, ms0Var, null, true, false);
        } else {
            s14Var = po3Var.u(ms0Var);
        }
        try {
            po3 po3VarJ = s14Var.j();
            try {
                Object objA = ne1Var.a();
                po3.q(po3VarJ);
                s14Var.c();
                return objA;
            } catch (Throwable th) {
                po3.q(po3VarJ);
                throw th;
            }
        } catch (Throwable th2) {
            s14Var.c();
            throw th2;
        }
    }

    public static final nd2 G(nd2 nd2Var, pe1 pe1Var) {
        return nd2Var.c(new vf0(pe1Var));
    }

    public static void H(Context context) {
        int[] appWidgetIds = AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, (Class<?>) UsageWidgetProvider.class));
        appWidgetIds.getClass();
        if (appWidgetIds.length == 0) {
            return;
        }
        ez3.a.getClass();
        ra3.c(new Object[0]);
        Intent intent = new Intent(context, (Class<?>) UsageWidgetProvider.class);
        intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
        intent.putExtra("appWidgetIds", appWidgetIds);
        context.sendBroadcast(intent);
    }

    public static Executor I(final Executor executor, final n91 n91Var) {
        executor.getClass();
        return executor == fu0.n ? executor : new Executor() { // from class: td2
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RejectedExecutionException e) {
                    n91Var.n(e);
                }
            }
        };
    }

    public static void J(Activity activity, String[] strArr, int i) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (TextUtils.isEmpty(strArr[i2])) {
                k21.f(xw1.s(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
                return;
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i2], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i2));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (!hashSet.contains(Integer.valueOf(i4))) {
                    strArr2[i3] = strArr[i4];
                    i3++;
                }
            }
        }
        if (activity instanceof qc1) {
            ((qc1) activity).validateRequestPermissionsRequestCode(i);
        }
        activity.requestPermissions(strArr, i);
    }

    public static final void K(Object[] objArr, int i, int i2) {
        objArr.getClass();
        while (i < i2) {
            objArr[i] = null;
            i++;
        }
    }

    public static void L(po3 po3Var, po3 po3Var2, pe1 pe1Var) {
        if (po3Var != po3Var2) {
            po3Var2.getClass();
            po3.q(po3Var);
            po3Var2.c();
        } else if (po3Var instanceof s14) {
            ((s14) po3Var).r = pe1Var;
        } else if (po3Var instanceof t14) {
            ((t14) po3Var).h = pe1Var;
        } else {
            mk0.k(po3Var, "Non-transparent snapshot was reused: ");
        }
    }

    public static void M(Window window, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            e3.f(window, z);
        } else {
            if (i >= 30) {
                e3.e(window, z);
                return;
            }
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    public static final String N(float f) {
        if (Float.isNaN(f)) {
            return "NaN";
        }
        if (Float.isInfinite(f)) {
            return f < 0.0f ? "-Infinity" : "Infinity";
        }
        int iMax = Math.max(1, 0);
        float fPow = (float) Math.pow(10.0d, iMax);
        float f2 = f * fPow;
        int i = (int) f2;
        if (f2 - i >= 0.5f) {
            i++;
        }
        float f3 = i / fPow;
        return iMax > 0 ? String.valueOf(f3) : String.valueOf((int) f3);
    }

    public static final void O(ue ueVar, we weVar) {
        weVar.o.setValue(ueVar.e.getValue());
        bf bfVar = weVar.p;
        bf bfVar2 = ueVar.f;
        int iB = bfVar.b();
        for (int i = 0; i < iB; i++) {
            bfVar.e(i, bfVar2.a(i));
        }
        weVar.r = ueVar.h;
        weVar.q = ueVar.g;
        weVar.s = ((Boolean) ueVar.i.getValue()).booleanValue();
    }

    public static final nd2 P(nd2 nd2Var, hd4 hd4Var) {
        return nd2Var.c(new rr1(hd4Var));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, all -> 0x006c, blocks: (B:6:0x0007, B:8:0x000b, B:10:0x0019, B:20:0x0036, B:75:0x0177, B:15:0x0025, B:17:0x002d, B:21:0x003a, B:23:0x0040, B:25:0x0048, B:74:0x0173, B:76:0x017a, B:77:0x017d, B:78:0x017e, B:26:0x004c, B:28:0x0050, B:29:0x005d, B:31:0x0063, B:37:0x0079, B:39:0x007f, B:40:0x008b, B:61:0x0157, B:62:0x015a, B:70:0x016a, B:69:0x0167, B:71:0x016b, B:72:0x0170, B:73:0x0171, B:32:0x0069, B:36:0x0070), top: B:83:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.cr2 Q(android.content.Context r16) {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k75.Q(android.content.Context):cr2");
    }

    public static final void a(final ne1 ne1Var, final nd2 nd2Var, boolean z, jl3 jl3Var, final z20 z20Var, a30 a30Var, final fx fxVar, final ka0 ka0Var, ag1 ag1Var, final int i) {
        int i2;
        final boolean z2;
        final jl3 jl3Var2;
        final a30 a30Var2;
        int i3;
        a30 a30VarO;
        jl3 jl3Var3;
        ag1Var.X(2136075085);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(ne1Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        int i4 = i2 | 384;
        if ((i & 3072) == 0) {
            i4 = i2 | 1408;
        }
        if ((i & 24576) == 0) {
            i4 |= ag1Var.f(z20Var) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i4 |= 65536;
        }
        if ((1572864 & i) == 0) {
            i4 |= ag1Var.f(fxVar) ? 1048576 : 524288;
        }
        int i5 = 12582912 | i4;
        if ((100663296 & i) == 0) {
            i5 |= ag1Var.h(ka0Var) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        boolean z3 = true;
        if (ag1Var.N(i5 & 1, (38347923 & i5) != 38347922)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                jl3 jl3VarA = ol3.a(qj0.c, ag1Var);
                i3 = i5 & (-465921);
                a30VarO = c75.o();
                jl3Var3 = jl3VarA;
            } else {
                ag1Var.Q();
                z3 = z;
                jl3Var3 = jl3Var;
                i3 = i5 & (-465921);
                a30VarO = a30Var;
            }
            ag1Var.q();
            ag1Var.W(1577873102);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new vf2();
                ag1Var.g0(objK);
            }
            vf2 vf2Var = (vf2) objK;
            ag1Var.p(false);
            wu3.b(ne1Var, nd2Var, z3, jl3Var3, z3 ? z20Var.a : z20Var.c, z3 ? z20Var.b : z20Var.d, ((cw0) a30VarO.a(z3, vf2Var, ag1Var, (i3 >> 6) & 14).getValue()).n, fxVar, vf2Var, qj0.U(-1347531112, new t7(ka0Var, 3), ag1Var), ag1Var, (i3 & 8190) | ((i3 << 6) & 234881024));
            a30Var2 = a30VarO;
            z2 = z3;
            jl3Var2 = jl3Var3;
        } else {
            ag1Var.Q();
            z2 = z;
            jl3Var2 = jl3Var;
            a30Var2 = a30Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: c30
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    k75.a(ne1Var, nd2Var, z2, jl3Var2, z20Var, a30Var2, fxVar, ka0Var, (ag1) obj, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }

    public static final void b(final nd2 nd2Var, jl3 jl3Var, final z20 z20Var, a30 a30Var, final fx fxVar, final ka0 ka0Var, ag1 ag1Var, final int i) {
        final jl3 jl3Var2;
        final a30 a30Var2;
        a30 a30VarO;
        int i2;
        jl3 jl3Var3;
        ag1Var.X(1359693790);
        int i3 = i | 16 | (ag1Var.f(z20Var) ? 256 : 128) | 1024 | (ag1Var.f(fxVar) ? 16384 : 8192);
        if (ag1Var.N(i3 & 1, (74899 & i3) != 74898)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                jl3 jl3VarA = ol3.a(qj0.c, ag1Var);
                a30VarO = c75.o();
                i2 = i3 & (-7281);
                jl3Var3 = jl3VarA;
            } else {
                ag1Var.Q();
                i2 = i3 & (-7281);
                jl3Var3 = jl3Var;
                a30VarO = a30Var;
            }
            ag1Var.q();
            wu3.a(nd2Var, jl3Var3, z20Var.a, z20Var.b, ((cw0) a30VarO.a(true, null, ag1Var, 54).getValue()).n, fxVar, qj0.U(-97109725, new t7(ka0Var, 2), ag1Var), ag1Var, 12582918 | ((i2 << 6) & 3670016), 16);
            a30Var2 = a30VarO;
            jl3Var2 = jl3Var3;
        } else {
            ag1Var.Q();
            jl3Var2 = jl3Var;
            a30Var2 = a30Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(jl3Var2, z20Var, a30Var2, fxVar, ka0Var, i) { // from class: b30
                public final /* synthetic */ jl3 o;
                public final /* synthetic */ z20 p;
                public final /* synthetic */ a30 q;
                public final /* synthetic */ fx r;
                public final /* synthetic */ ka0 s;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(196615);
                    k75.b(this.n, this.o, this.p, this.q, this.r, this.s, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final wq1 c(lx1 lx1Var, String str) {
        return new wq1(str, new xq1(lx1Var));
    }

    public static final md2 d(jr0 jr0Var, int i) {
        md2 md2Var = ((md2) jr0Var).n.s;
        if (md2Var == null || (md2Var.q & i) == 0) {
            return null;
        }
        while (md2Var != null) {
            int i2 = md2Var.p;
            if ((i2 & 2) != 0) {
                return null;
            }
            if ((i2 & i) != 0) {
                return md2Var;
            }
            md2Var = md2Var.s;
        }
        return null;
    }

    public static final String e(Object[] objArr, int i, int i2, p1 p1Var) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i + i3];
            if (obj == p1Var) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(2:4|(1:6)(1:8))(0)|7|9|(1:(3:13|87|14)(2:18|19))(8:21|(11:91|23|24|85|25|26|95|27|(2:29|(1:31)(2:32|33))(1:34)|(1:37)|65)(7:47|89|48|49|93|50|(7:52|53|83|54|55|56|(1:63)(2:58|(2:61|62)(1:60)))(2:70|71))|40|74|(1:76)|77|(1:81)|82)|38|93|50|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017f, code lost:
    
        if (defpackage.c75.E(r9.e()).a(r5, r9) == r12) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0188, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0189, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00c3, code lost:
    
        if (defpackage.c75.E(r9.e()).a(new defpackage.yg1(r5, r10), r9) == r12) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011d A[Catch: CancellationException -> 0x0188, TRY_LEAVE, TryCatch #5 {CancellationException -> 0x0188, blocks: (B:50:0x0108, B:52:0x011d), top: B:93:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(defpackage.we r23, defpackage.re r24, long r25, final defpackage.pe1 r27, defpackage.fh0 r28) {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k75.f(we, re, long, pe1, fh0):java.lang.Object");
    }

    public static Object g(float f, float f2, ve veVar, df1 df1Var, bv3 bv3Var, int i) {
        if ((i & 8) != 0) {
            veVar = tv4.Q(0.0f, 0.0f, null, 7);
        }
        ve veVar2 = veVar;
        e34 e34Var = k30.m;
        Float f3 = new Float(f);
        Float f4 = new Float(f2);
        Float f5 = new Float(0.0f);
        pe1 pe1Var = e34Var.a;
        bf bfVarC = (bf) pe1Var.k(f5);
        if (bfVarC == null) {
            bfVarC = ((bf) pe1Var.k(f3)).c();
        }
        bf bfVar = bfVarC;
        Object objF = f(new we(e34Var, f3, bfVar, 56), new lw3(veVar2, e34Var, f3, f4, bfVar), Long.MIN_VALUE, new di3(4, df1Var), bv3Var);
        t64 t64Var = t64.a;
        ri0 ri0Var = ri0.n;
        if (objF != ri0Var) {
            objF = t64Var;
        }
        return objF == ri0Var ? objF : t64Var;
    }

    public static final Object h(we weVar, Float f, ve veVar, boolean z, pe1 pe1Var, fh0 fh0Var) {
        Object objF = f(weVar, new lw3(veVar, weVar.n, weVar.o.getValue(), f, weVar.p), z ? weVar.q : Long.MIN_VALUE, pe1Var, fh0Var);
        return objF == ri0.n ? objF : t64.a;
    }

    public static /* synthetic */ Object i(we weVar, Float f, yq3 yq3Var, boolean z, pe1 pe1Var, fh0 fh0Var, int i) {
        if ((i & 2) != 0) {
            yq3Var = tv4.Q(0.0f, 0.0f, null, 7);
        }
        yq3 yq3Var2 = yq3Var;
        if ((i & 8) != 0) {
            pe1Var = new jd3(11);
        }
        return h(weVar, f, yq3Var2, z, pe1Var, fh0Var);
    }

    public static IOException j(File file, IOException iOException) {
        StringBuilder sb = new StringBuilder("Inoperable file:");
        try {
            sb.append(" canonical[" + file.getCanonicalPath() + "] freeSpace[" + file.getFreeSpace() + ']');
        } catch (IOException unused) {
            sb.append(" failed to attach additional metadata");
        }
        return new IOException(sb.toString(), iOException);
    }

    public static IOException k(File file, IOException iOException) {
        File parentFile = file.getParentFile();
        return parentFile == null ? j(file, iOException) : parentFile.exists() ? parentFile.isFile() ? parentFile.canRead() ? parentFile.canWrite() ? j(file, iOException) : j(file, iOException) : parentFile.canWrite() ? j(file, iOException) : j(file, iOException) : parentFile.canRead() ? parentFile.canWrite() ? j(file, iOException) : j(file, iOException) : parentFile.canWrite() ? j(file, iOException) : j(file, iOException) : j(file, iOException);
    }

    public static final Object l(jr0 jr0Var, ne1 ne1Var, bv3 bv3Var) {
        Object obj;
        mm2 mm2VarQ;
        Object objJ0;
        bo boVar;
        if (((md2) jr0Var).n.A) {
            md2 md2Var = (md2) jr0Var;
            if (!md2Var.n.A) {
                ar1.b("visitAncestors called on an unattached node");
            }
            md2 md2Var2 = md2Var.n.r;
            xy1 xy1VarR = w80.R(jr0Var);
            loop0: while (true) {
                obj = null;
                if (xy1VarR == null) {
                    break;
                }
                if ((((md2) xy1VarR.S.g).q & 524288) != 0) {
                    while (md2Var2 != null) {
                        if ((md2Var2.p & 524288) != 0) {
                            md2 md2VarG = md2Var2;
                            ug2 ug2Var = null;
                            while (md2VarG != null) {
                                if (md2VarG instanceof xx) {
                                    obj = md2VarG;
                                    break loop0;
                                }
                                if ((md2VarG.p & 524288) != 0 && (md2VarG instanceof kr0)) {
                                    int i = 0;
                                    for (md2 md2Var3 = ((kr0) md2VarG).C; md2Var3 != null; md2Var3 = md2Var3.s) {
                                        if ((md2Var3.p & 524288) != 0) {
                                            i++;
                                            if (i == 1) {
                                                md2VarG = md2Var3;
                                            } else {
                                                if (ug2Var == null) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (md2VarG != null) {
                                                    ug2Var.c(md2VarG);
                                                    md2VarG = null;
                                                }
                                                ug2Var.c(md2Var3);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                md2VarG = w80.g(ug2Var);
                            }
                        }
                        md2Var2 = md2Var2.r;
                    }
                }
                xy1VarR = xy1VarR.u();
                md2Var2 = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
            }
            xx xxVar = (xx) obj;
            if (xxVar != null && (objJ0 = xxVar.j0((mm2VarQ = w80.Q(jr0Var)), new j9(2, ne1Var, mm2VarQ), bv3Var)) == ri0.n) {
                return objJ0;
            }
        }
        return t64.a;
    }

    public static int m(Context context, String str) {
        if (str != null) {
            return (Build.VERSION.SDK_INT >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) ? context.checkPermission(str, Process.myPid(), Process.myUid()) : new fn2(context).a.areNotificationsEnabled() ? 0 : -1;
        }
        q73.r("permission must be non-null");
        return 0;
    }

    public static int n(Context context, String str) {
        int iNoteProxyOpNoThrow;
        int iMyPid = Process.myPid();
        int iMyUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, iMyPid, iMyUid) != -1) {
            String strPermissionToOp = AppOpsManager.permissionToOp(str);
            if (strPermissionToOp != null) {
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(iMyUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                int iMyUid2 = Process.myUid();
                String packageName2 = context.getPackageName();
                if (iMyUid2 == iMyUid && Objects.equals(packageName2, packageName) && Build.VERSION.SDK_INT >= 29) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                    iNoteProxyOpNoThrow = appOpsManager == null ? 1 : appOpsManager.checkOpNoThrow(strPermissionToOp, Binder.getCallingUid(), packageName);
                    if (iNoteProxyOpNoThrow == 0) {
                        iNoteProxyOpNoThrow = appOpsManager != null ? appOpsManager.checkOpNoThrow(strPermissionToOp, iMyUid, vf.b(context)) : 1;
                    }
                } else {
                    iNoteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(strPermissionToOp, packageName);
                }
                if (iNoteProxyOpNoThrow != 0) {
                    return -2;
                }
            }
            return 0;
        }
        return -1;
    }

    public static final nd2 o(nd2 nd2Var, zr2 zr2Var) {
        return nd2Var.c(new as2(zr2Var));
    }

    public static final long p(long j, gy0 gy0Var) {
        long j2;
        int iOrdinal = gy0Var.ordinal();
        if (iOrdinal == 2) {
            j2 = 1;
        } else if (iOrdinal == 3) {
            j2 = 1000;
        } else if (iOrdinal == 4) {
            j2 = 60000;
        } else if (iOrdinal == 5) {
            j2 = 3600000;
        } else {
            if (iOrdinal != 6) {
                mk0.k(gy0Var, "Wrong unit for millisMultiplier: ");
                return 0L;
            }
            j2 = 86400000;
        }
        if (j == 0) {
            return 0L;
        }
        if (j == 1) {
            if (j2 <= 4611686018427387903L) {
                return j2;
            }
        } else if (j2 != 1) {
            int iNumberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j)) - Long.numberOfLeadingZeros(j2);
            if (iNumberOfLeadingZeros < 63) {
                return j * j2;
            }
            if (iNumberOfLeadingZeros <= 63) {
                long j3 = j * j2;
                if (j3 <= 4611686018427387903L) {
                    return j3;
                }
            }
        } else if (j <= 4611686018427387903L) {
            return j;
        }
        return 4611686018427387903L;
    }

    public static bb1 q(Context context) {
        ProviderInfo providerInfo;
        za1 za1Var;
        ApplicationInfo applicationInfo;
        int i = 26;
        qv3 po0Var = Build.VERSION.SDK_INT >= 28 ? new po0(i) : new qv3(i);
        PackageManager packageManager = context.getPackageManager();
        bi4.k(packageManager, "Package manager required to locate emoji font provider");
        Iterator<ResolveInfo> it = packageManager.queryIntentContentProviders(new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfo = null;
                break;
            }
            providerInfo = it.next().providerInfo;
            if (providerInfo != null && (applicationInfo = providerInfo.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfo == null) {
            za1Var = null;
        } else {
            try {
                String str = providerInfo.authority;
                String str2 = providerInfo.packageName;
                Signature[] signatureArrQ = po0Var.q(packageManager, str2);
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArrQ) {
                    arrayList.add(signature.toByteArray());
                }
                za1Var = new za1(str, str2, "emojicompat-emoji-font", Collections.singletonList(arrayList), null, null);
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e);
                za1Var = null;
            }
        }
        if (za1Var == null) {
            return null;
        }
        return new bb1(new ab1(context, za1Var));
    }

    public static d84 r() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.add(6, 1);
        calendar.set(11, 9);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.add(6, 3);
        calendar.set(11, 12);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return new d84(tv4.F(new p84("Gemini Pro", 60.0d, null, Long.valueOf(timeInMillis)), new p84("Claude", 40.0d, null, Long.valueOf(calendar.getTimeInMillis())), new p84("Gemini Flash", 20.0d, null, Long.valueOf(12600000 + jCurrentTimeMillis))), jCurrentTimeMillis);
    }

    public static d84 s() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.add(2, 1);
        long timeInMillis2 = calendar.getTimeInMillis();
        return new d84(tv4.F(new p84("Chat messages", 25.0d, Long.valueOf(timeInMillis), Long.valueOf(timeInMillis2)), new p84("Code completions", 42.5d, Long.valueOf(timeInMillis), Long.valueOf(timeInMillis2)), new p84("Premium requests", 68.0d, Long.valueOf(timeInMillis), Long.valueOf(timeInMillis2))), jCurrentTimeMillis);
    }

    public static final void t(ue ueVar, long j, float f, re reVar, we weVar, pe1 pe1Var) {
        long jC = f == 0.0f ? reVar.c() : (long) ((j - ueVar.c) / f);
        ueVar.g = j;
        ueVar.e.setValue(reVar.b(jC));
        ueVar.f = reVar.f(jC);
        if (reVar.g(jC)) {
            ueVar.h = ueVar.g;
            ueVar.i.setValue(Boolean.FALSE);
        }
        O(ueVar, weVar);
        pe1Var.k(ueVar);
    }

    public static final nd2 u(nd2 nd2Var, pe1 pe1Var) {
        return nd2Var.c(new fx0(pe1Var));
    }

    public static final boolean v(long j, long j2) {
        return j == j2;
    }

    public static String w(Context context, Long l, long j, String str) {
        context.getClass();
        if (str != null && str.length() != 0) {
            return str;
        }
        if (l == null || l.longValue() <= j) {
            String string = context.getString(R.string.usage_starts_on_message_sent);
            string.getClass();
            return string;
        }
        long jLongValue = (l.longValue() - j) / 60000;
        long j2 = jLongValue / 60;
        long j3 = jLongValue % 60;
        if (j2 < 1) {
            String string2 = context.getString(R.string.usage_resets_in_minutes, Integer.valueOf((int) j3));
            string2.getClass();
            return string2;
        }
        if (j2 < 24) {
            String string3 = context.getString(R.string.usage_resets_in_hours_minutes, Integer.valueOf((int) j2), Integer.valueOf((int) j3));
            string3.getClass();
            return string3;
        }
        Locale locale = Locale.getDefault();
        String string4 = context.getString(R.string.usage_resets_at, new SimpleDateFormat(DateFormat.getBestDateTimePattern(locale, "EEEhma"), locale).format(new Date(l.longValue())));
        string4.getClass();
        return string4;
    }

    public static po3 x() {
        return (po3) wo3.b.c();
    }

    public static final float y(hi0 hi0Var) {
        yd2 yd2Var = (yd2) hi0Var.K(w13.I);
        float fZ = yd2Var != null ? yd2Var.Z() : 1.0f;
        if (fZ >= 0.0f) {
            return fZ;
        }
        kx2.b("negative scale factor");
        return fZ;
    }

    public static oz2 z() {
        return oz2.b;
    }
}
