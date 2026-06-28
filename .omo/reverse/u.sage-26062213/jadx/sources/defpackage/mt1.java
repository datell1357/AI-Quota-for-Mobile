package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Process;
import android.os.ResultReceiver;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Preconditions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlinx.serialization.json.internal.b;
import org.xmlpull.v1.XmlPullParser;
import u.sage.AntigravityUsageService;
import u.sage.ClaudeUsageService;
import u.sage.CodexUsageService;
import u.sage.CopilotUsageService;
import u.sage.GeminiUsageService;
import u.sage.R;
import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mt1 {
    public static final Object a = new Object();
    public static final c71 b = new c71(1);
    public static final z70 c = z70.o;
    public static final f54 d = f54.p;
    public static final z70 e = z70.p;
    public static final float f = 6.0f;
    public static final ll3 g = ll3.o;
    public static final z70 h;
    public static final z70 i;
    public static final f54 j;
    public static final float k;
    public static final float l;

    static {
        z70 z70Var = z70.n;
        h = z70Var;
        i = z70Var;
        j = f54.n;
        k = 48.0f;
        l = 68.0f;
    }

    public static final boolean A(gh3 gh3Var) {
        Object objG = gh3Var.d.n.g(lh3.I);
        if (objG == null) {
            objG = null;
        }
        wz3 wz3Var = (wz3) objG;
        kg2 kg2Var = gh3Var.d.n;
        Object objG2 = kg2Var.g(lh3.y);
        if (objG2 == null) {
            objG2 = null;
        }
        q93 q93Var = (q93) objG2;
        boolean z = wz3Var != null;
        Object objG3 = kg2Var.g(lh3.H);
        if (((Boolean) (objG3 != null ? objG3 : null)) == null || (q93Var != null && q93Var.a == 4)) {
            return z;
        }
        return true;
    }

    public static final String B(gh3 gh3Var, Resources resources) {
        bh3 bh3Var = gh3Var.d;
        bh3 bh3Var2 = gh3Var.d;
        Object objG = bh3Var.n.g(lh3.b);
        String string = null;
        if (objG == null) {
            objG = null;
        }
        kg2 kg2Var = bh3Var2.n;
        Object objG2 = kg2Var.g(lh3.I);
        if (objG2 == null) {
            objG2 = null;
        }
        wz3 wz3Var = (wz3) objG2;
        Object objG3 = kg2Var.g(lh3.y);
        if (objG3 == null) {
            objG3 = null;
        }
        q93 q93Var = (q93) objG3;
        if (wz3Var != null) {
            int iOrdinal = wz3Var.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        p61.x();
                        return null;
                    }
                    if (objG == null) {
                        objG = resources.getString(R.string.indeterminate);
                    }
                } else if (q93Var != null && q93Var.a == 2 && objG == null) {
                    objG = resources.getString(R.string.state_off);
                }
            } else if (q93Var != null && q93Var.a == 2 && objG == null) {
                objG = resources.getString(R.string.state_on);
            }
        }
        Object objG4 = kg2Var.g(lh3.H);
        if (objG4 == null) {
            objG4 = null;
        }
        Boolean bool = (Boolean) objG4;
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            if ((q93Var == null || q93Var.a != 4) && objG == null) {
                objG = zBooleanValue ? resources.getString(R.string.selected) : resources.getString(R.string.not_selected);
            }
        }
        Object objG5 = kg2Var.g(lh3.c);
        if (objG5 == null) {
            objG5 = null;
        }
        oz2 oz2Var = (oz2) objG5;
        if (oz2Var != null) {
            if (oz2Var != oz2.b) {
                if (objG == null) {
                    objG = resources.getString(R.string.template_percent, 0);
                }
            } else if (objG == null) {
                objG = resources.getString(R.string.in_progress);
            }
        }
        oh3 oh3Var = lh3.F;
        if (kg2Var.c(oh3Var)) {
            kg2 kg2Var2 = new gh3(gh3Var.a, true, gh3Var.c, bh3Var2).k().n;
            Object objG6 = kg2Var2.g(lh3.a);
            if (objG6 == null) {
                objG6 = null;
            }
            Collection collection = (Collection) objG6;
            if (collection == null || collection.isEmpty()) {
                Object objG7 = kg2Var2.g(lh3.B);
                if (objG7 == null) {
                    objG7 = null;
                }
                Collection collection2 = (Collection) objG7;
                if (collection2 == null || collection2.isEmpty()) {
                    Object objG8 = kg2Var2.g(oh3Var);
                    if (objG8 == null) {
                        objG8 = null;
                    }
                    CharSequence charSequence = (CharSequence) objG8;
                    if (charSequence == null || charSequence.length() == 0) {
                        string = resources.getString(R.string.state_empty);
                    }
                }
            }
            objG = string;
        }
        return (String) objG;
    }

    public static final ff C(gh3 gh3Var) {
        Object objG = gh3Var.d.n.g(lh3.F);
        if (objG == null) {
            objG = null;
        }
        ff ffVar = (ff) objG;
        Object objG2 = gh3Var.d.n.g(lh3.B);
        if (objG2 == null) {
            objG2 = null;
        }
        List list = (List) objG2;
        return ffVar == null ? list != null ? (ff) o70.i0(list) : null : ffVar;
    }

    public static final int D(String str, Bundle bundle) {
        int i2 = bundle.getInt(str, Integer.MIN_VALUE);
        if (i2 != Integer.MIN_VALUE || bundle.getInt(str, Api.BaseClientBuilder.API_PRIORITY_OTHER) != Integer.MAX_VALUE) {
            return i2;
        }
        nt1.I(str);
        throw null;
    }

    public static final Bundle E(String str, Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        nt1.I(str);
        throw null;
    }

    public static final ArrayList F(String str, Bundle bundle) {
        ArrayList arrayListC = Build.VERSION.SDK_INT >= 34 ? f3.c(bundle, str, on4.x(y33.a(Bundle.class))) : bundle.getParcelableArrayList(str);
        if (arrayListC != null) {
            return arrayListC;
        }
        nt1.I(str);
        throw null;
    }

    public static Class G(y84 y84Var) {
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            return ClaudeUsageService.class;
        }
        if (iOrdinal == 1) {
            return GeminiUsageService.class;
        }
        if (iOrdinal == 2) {
            return AntigravityUsageService.class;
        }
        if (iOrdinal == 3) {
            return CodexUsageService.class;
        }
        if (iOrdinal == 4) {
            return CopilotUsageService.class;
        }
        p61.x();
        return null;
    }

    public static int H(km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        return ((f1) km1Var).e(0, "http.socket.timeout");
    }

    public static ps I(Context context, y84 y84Var) {
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            return new r50(context);
        }
        if (iOrdinal == 1) {
            return new hg1(context);
        }
        if (iOrdinal == 2) {
            return new nf(context);
        }
        if (iOrdinal == 3) {
            return new g70(context);
        }
        if (iOrdinal == 4) {
            return new wh0(context);
        }
        p61.x();
        return null;
    }

    public static boolean J(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static final boolean K(float[] fArr, float[] fArr2) {
        if (fArr.length < 16 || fArr2.length < 16) {
            return false;
        }
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float f5 = fArr[3];
        float f6 = fArr[4];
        float f7 = fArr[5];
        float f8 = fArr[6];
        float f9 = fArr[7];
        float f10 = fArr[8];
        float f11 = fArr[9];
        float f12 = fArr[10];
        float f13 = fArr[11];
        float f14 = fArr[12];
        float f15 = fArr[13];
        float f16 = fArr[14];
        float f17 = fArr[15];
        float f18 = (f2 * f7) - (f3 * f6);
        float f19 = (f2 * f8) - (f4 * f6);
        float f20 = (f2 * f9) - (f5 * f6);
        float f21 = (f3 * f8) - (f4 * f7);
        float f22 = (f3 * f9) - (f5 * f7);
        float f23 = (f4 * f9) - (f5 * f8);
        float f24 = (f10 * f15) - (f11 * f14);
        float f25 = (f10 * f16) - (f12 * f14);
        float f26 = (f10 * f17) - (f13 * f14);
        float f27 = (f11 * f16) - (f12 * f15);
        float f28 = (f11 * f17) - (f13 * f15);
        float f29 = (f12 * f17) - (f13 * f16);
        float f30 = (f23 * f24) + (((f21 * f26) + ((f20 * f27) + ((f18 * f29) - (f19 * f28)))) - (f22 * f25));
        if (f30 != 0.0f) {
            float f31 = 1.0f / f30;
            fArr2[0] = ((f9 * f27) + ((f7 * f29) - (f8 * f28))) * f31;
            fArr2[1] = (((f4 * f28) + ((-f3) * f29)) - (f5 * f27)) * f31;
            fArr2[2] = ((f17 * f21) + ((f15 * f23) - (f16 * f22))) * f31;
            fArr2[3] = (((f12 * f22) + ((-f11) * f23)) - (f13 * f21)) * f31;
            float f32 = -f6;
            fArr2[4] = (((f8 * f26) + (f32 * f29)) - (f9 * f25)) * f31;
            fArr2[5] = ((f5 * f25) + ((f29 * f2) - (f4 * f26))) * f31;
            float f33 = -f14;
            fArr2[6] = (((f16 * f20) + (f33 * f23)) - (f17 * f19)) * f31;
            fArr2[7] = ((f13 * f19) + ((f23 * f10) - (f12 * f20))) * f31;
            fArr2[8] = ((f9 * f24) + ((f6 * f28) - (f7 * f26))) * f31;
            fArr2[9] = (((f26 * f3) + ((-f2) * f28)) - (f5 * f24)) * f31;
            fArr2[10] = ((f17 * f18) + ((f14 * f22) - (f15 * f20))) * f31;
            fArr2[11] = (((f20 * f11) + ((-f10) * f22)) - (f13 * f18)) * f31;
            fArr2[12] = (((f7 * f25) + (f32 * f27)) - (f8 * f24)) * f31;
            fArr2[13] = ((f4 * f24) + ((f2 * f27) - (f3 * f25))) * f31;
            fArr2[14] = (((f15 * f19) + (f33 * f21)) - (f16 * f18)) * f31;
            fArr2[15] = ((f12 * f18) + ((f10 * f21) - (f11 * f19))) * f31;
        }
        return !(f30 == 0.0f);
    }

    public static final boolean L(String str, Bundle bundle) {
        str.getClass();
        return bundle.containsKey(str) && bundle.get(str) == null;
    }

    public static boolean M(km1 km1Var) {
        w80.L(km1Var, "HTTP parameters");
        return ((f1) km1Var).d("http.connection.stalecheck", true);
    }

    public static final w13 N(qv3 qv3Var, String str, Executor executor, ne1 ne1Var) {
        t64 t64Var = t64.a;
        qv3Var.getClass();
        executor.getClass();
        wf2 wf2Var = new wf2(0);
        b20 b20Var = new b20();
        b20Var.c = new j73();
        e20 e20Var = new e20(b20Var);
        b20Var.b = e20Var;
        b20Var.a = di0.class;
        try {
            executor.execute(new mv(qv3Var, str, ne1Var, wf2Var, b20Var));
            b20Var.a = t64Var;
        } catch (Exception e2) {
            e20Var.o.k(e2);
        }
        return new w13(24);
    }

    public static void O(Object obj, String str) {
        if (obj != null) {
            return;
        }
        k21.n(str.concat(" is null"));
    }

    public static final nd2 P(nd2 nd2Var, pe1 pe1Var) {
        return nd2Var.c(new hp2(pe1Var));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.p00 Q(defpackage.kj1 r26) {
        /*
            Method dump skipped, instruction units count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mt1.Q(kj1):p00");
    }

    public static void R(ResultReceiver resultReceiver, String str, String str2) {
        resultReceiver.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("FAILURE_RESPONSE", true);
        bundle.putString("EXCEPTION_TYPE", str);
        bundle.putString("EXCEPTION_MESSAGE", str2);
        resultReceiver.send(Api.BaseClientBuilder.API_PRIORITY_OTHER, bundle);
    }

    public static void S(Context context, y84 y84Var) {
        context.getClass();
        y84Var.getClass();
        ra3 ra3Var = ez3.a;
        y84Var.toString();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        wr3 wr3Var = a.D;
        Intent intent = new Intent(context, (Class<?>) G(y84Var));
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static void T(Context context, y84 y84Var) {
        context.getClass();
        y84Var.getClass();
        ra3 ra3Var = ez3.a;
        y84Var.toString();
        ra3Var.getClass();
        ra3.c(new Object[0]);
        wr3 wr3Var = a.D;
        Class clsG = G(y84Var);
        "[NotifDebug] stopService: Calling context.stopService() for ".concat(clsG.getSimpleName());
        ra3.c(new Object[0]);
        context.stopService(new Intent(context, (Class<?>) clsG));
        ra3.c(new Object[0]);
    }

    public static final b11 U(n14 n14Var, pe1 pe1Var, Object obj, ag1 ag1Var) {
        ag1Var.U(-422486690, n14Var);
        boolean zG = n14Var.g();
        ib0 ib0Var = n14Var.a;
        b11 b11Var = b11.p;
        b11 b11Var2 = b11.o;
        b11 b11Var3 = b11.n;
        if (zG) {
            ag1Var.W(-212166497);
            ag1Var.p(false);
            if (((Boolean) pe1Var.k(obj)).booleanValue()) {
                b11Var = b11Var2;
            } else if (!((Boolean) pe1Var.k(ib0Var.l())).booleanValue()) {
                b11Var = b11Var3;
            }
        } else {
            ag1Var.W(-211890659);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = ca.A(Boolean.FALSE);
                ag1Var.g0(objK);
            }
            pg2 pg2Var = (pg2) objK;
            if (((Boolean) pe1Var.k(ib0Var.l())).booleanValue()) {
                pg2Var.setValue(Boolean.TRUE);
            }
            Object value = n14Var.e.getValue();
            if (((Boolean) pe1Var.k(obj)).booleanValue()) {
                b11Var = b11Var2;
            } else if ((value != null && ((Boolean) pe1Var.k(value)).booleanValue()) || !((Boolean) pg2Var.getValue()).booleanValue()) {
                b11Var = b11Var3;
            }
            ag1Var.p(false);
        }
        ag1Var.p(false);
        return b11Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final defpackage.r01 V(defpackage.r01 r17, defpackage.jo1 r18, defpackage.er2 r19, defpackage.j21 r20, defpackage.fh0 r21) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mt1.V(r01, jo1, er2, j21, fh0):r01");
    }

    public static final boolean W(Throwable th, ne1 ne1Var) {
        List listAsList;
        Object objInvoke;
        th.getClass();
        Integer num = gu1.a;
        gt0 gt0Var = null;
        if (num == null || num.intValue() >= 19) {
            Throwable[] suppressed = th.getSuppressed();
            suppressed.getClass();
            listAsList = Arrays.asList(suppressed);
            listAsList.getClass();
        } else {
            Method method = jv2.b;
            if (method == null || (objInvoke = method.invoke(th, null)) == null) {
                listAsList = g01.n;
            } else {
                listAsList = Arrays.asList((Throwable[]) objInvoke);
                listAsList.getClass();
            }
        }
        int size = listAsList.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            if (((Throwable) listAsList.get(i2)) instanceof gt0) {
                return false;
            }
        }
        try {
            hb0 hb0Var = (hb0) ne1Var.a();
            if (hb0Var != null) {
                boolean z2 = hb0Var.b;
                List list = hb0Var.a;
                if (z2) {
                    int size2 = list.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((jb0) list.get(i3)).getClass();
                    }
                } else if (!list.isEmpty()) {
                    z = true;
                }
            }
            if (z) {
                hb0Var.getClass();
                gt0Var = new gt0(hb0Var);
            }
        } catch (Throwable th2) {
            gt0Var = th2;
        }
        if (gt0Var != null) {
            on4.j(th, gt0Var);
        }
        return z;
    }

    public static final void X(String str, int i2, String str2) {
        throw new IllegalArgumentException("Expected " + str2 + " at index " + i2 + ", but was '" + str.charAt(i2) + '\'');
    }

    public static ef5 Y(List list) {
        if (list == null || list.isEmpty()) {
            return t(null);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((ow3) it.next()) == null) {
                q73.r("null tasks are not accepted");
                return null;
            }
        }
        ef5 ef5Var = new ef5();
        wn4 wn4Var = new wn4(list.size(), ef5Var);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ow3 ow3Var = (ow3) it2.next();
            gu0 gu0Var = qw3.b;
            ow3Var.c(gu0Var, wn4Var);
            ow3Var.b(gu0Var, wn4Var);
            ow3Var.a(gu0Var, wn4Var);
        }
        return ef5Var;
    }

    public static ef5 Z(ow3... ow3VarArr) {
        if (ow3VarArr.length == 0) {
            return t(Collections.EMPTY_LIST);
        }
        List listAsList = Arrays.asList(ow3VarArr);
        return (listAsList == null || listAsList.isEmpty()) ? t(Collections.EMPTY_LIST) : Y(listAsList).e(qw3.a, new wu0(listAsList));
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x06c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(defpackage.n14 r34, defpackage.pe1 r35, defpackage.nd2 r36, defpackage.o11 r37, defpackage.y31 r38, defpackage.df1 r39, defpackage.ka0 r40, defpackage.ag1 r41, int r42) {
        /*
            Method dump skipped, instruction units count: 1803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mt1.a(n14, pe1, nd2, o11, y31, df1, ka0, ag1, int):void");
    }

    public static final Exception a0(String str, FileNotFoundException fileNotFoundException) {
        int i2;
        boolean zEquals = false;
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
            method.getClass();
            try {
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.getClass();
                Process.myUserHandle().writeToParcel(parcelObtain, 0);
                parcelObtain.setDataPosition(0);
                i2 = parcelObtain.readInt();
            } catch (Throwable unused) {
                Log.d("DirectBootExceptionUtil", "Error when reading current user id. Selected default user id `0`.");
                i2 = 0;
            }
            Object objInvoke = method.invoke(null, "sys.user." + i2 + ".ce_available", "false");
            objInvoke.getClass();
            zEquals = ((String) objInvoke).equals("true");
        } catch (Throwable th) {
            on4.j(fileNotFoundException, th);
        }
        if (zEquals || str == null) {
            return fileNotFoundException;
        }
        File file = new File(str, "siblingTestFile.txt");
        if (file.exists()) {
            file.delete();
        }
        try {
            file.createNewFile();
            return fileNotFoundException;
        } catch (IOException unused2) {
            return new du0(fileNotFoundException);
        } finally {
            file.delete();
        }
    }

    public static final void b(boolean z, nd2 nd2Var, o11 o11Var, y31 y31Var, String str, ka0 ka0Var, ag1 ag1Var, int i2) {
        nd2 nd2Var2;
        String str2;
        ag1Var.X(-1448730565);
        int i3 = i2 | (ag1Var.g(z) ? 4 : 2) | 24624;
        if (ag1Var.N(i3 & 1, (74899 & i3) != 74898)) {
            n14 n14VarH = ht4.H(Boolean.valueOf(z), ag1Var, (i3 & 14) | 48);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = l9.z;
                ag1Var.g0(objK);
            }
            e(n14VarH, (pe1) objK, o11Var, y31Var, ka0Var, ag1Var, 1600944);
            nd2Var2 = kd2.b;
            str2 = "AnimatedVisibility";
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            str2 = str;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new le(z, nd2Var2, o11Var, y31Var, str2, ka0Var, i2, 0);
        }
    }

    public static Object b0(ow3 ow3Var) throws ExecutionException {
        if (ow3Var.j()) {
            return ow3Var.g();
        }
        if (((ef5) ow3Var).d) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(ow3Var.f());
    }

    public static final void c(boolean z, nd2 nd2Var, o11 o11Var, y31 y31Var, String str, ka0 ka0Var, ag1 ag1Var, int i2) {
        y31 y31Var2;
        ag1 ag1Var2;
        o11 o11Var2;
        ka0 ka0Var2;
        ag1Var.X(234057107);
        int i3 = (ag1Var.g(z) ? 32 : 16) | i2 | 384 | (ag1Var.f(o11Var) ? 2048 : 1024);
        if ((i2 & 24576) == 0) {
            i3 |= ag1Var.f(y31Var) ? 16384 : 8192;
        }
        int i4 = i3 | 196608;
        if (ag1Var.N(i4 & 1, (599185 & i4) != 599184)) {
            n14 n14VarH = ht4.H(Boolean.valueOf(z), ag1Var, ((i4 >> 3) & 14) | 48);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = l9.A;
                ag1Var.g0(objK);
            }
            y31Var2 = y31Var;
            ag1Var2 = ag1Var;
            e(n14VarH, (pe1) objK, o11Var, y31Var2, ka0Var, ag1Var2, (i4 & 7168) | 432 | (57344 & i4) | 1572864);
            o11Var2 = o11Var;
            ka0Var2 = ka0Var;
            nd2Var = kd2.b;
            str = "AnimatedVisibility";
        } else {
            y31Var2 = y31Var;
            ag1Var2 = ag1Var;
            o11Var2 = o11Var;
            ka0Var2 = ka0Var;
            ag1Var2.Q();
        }
        nd2 nd2Var2 = nd2Var;
        String str2 = str;
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            c33VarR.d = new me(z, nd2Var2, o11Var2, y31Var2, str2, ka0Var2, i2);
        }
    }

    public static final void d(boolean z, nd2 nd2Var, o11 o11Var, y31 y31Var, String str, ka0 ka0Var, ag1 ag1Var, int i2) {
        nd2 nd2Var2;
        String str2;
        ag1Var.X(1799879339);
        int i3 = i2 | (ag1Var.g(z) ? 32 : 16) | 384 | (ag1Var.f(o11Var) ? 2048 : 1024) | 196608;
        if (ag1Var.N(i3 & 1, (599185 & i3) != 599184)) {
            n14 n14VarH = ht4.H(Boolean.valueOf(z), ag1Var, ((i3 >> 3) & 14) | 48);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = l9.B;
                ag1Var.g0(objK);
            }
            e(n14VarH, (pe1) objK, o11Var, y31Var, ka0Var, ag1Var, (i3 & 7168) | 1597872);
            nd2Var2 = kd2.b;
            str2 = "AnimatedVisibility";
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            str2 = str;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new le(z, nd2Var2, o11Var, y31Var, str2, ka0Var, i2, 1);
        }
    }

    public static final void e(n14 n14Var, pe1 pe1Var, o11 o11Var, y31 y31Var, ka0 ka0Var, ag1 ag1Var, int i2) {
        int i3;
        o11 o11Var2;
        y31 y31Var2;
        ka0 ka0Var2;
        ag1Var.X(-497872534);
        if ((i2 & 6) == 0) {
            i3 = (ag1Var.f(n14Var) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= ag1Var.h(pe1Var) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= ag1Var.f(kd2.b) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            o11Var2 = o11Var;
            i3 |= ag1Var.f(o11Var2) ? 2048 : 1024;
        } else {
            o11Var2 = o11Var;
        }
        if ((i2 & 24576) == 0) {
            y31Var2 = y31Var;
            i3 |= ag1Var.f(y31Var2) ? 16384 : 8192;
        } else {
            y31Var2 = y31Var;
        }
        int i4 = i3 | 196608;
        if ((1572864 & i2) == 0) {
            ka0Var2 = ka0Var;
            i4 |= ag1Var.h(ka0Var2) ? 1048576 : 524288;
        } else {
            ka0Var2 = ka0Var;
        }
        if (ag1Var.N(i4 & 1, (599187 & i4) != 599186)) {
            int i5 = i4 & 112;
            int i6 = i4 & 14;
            boolean z = (i5 == 32) | (i6 == 4);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (z || objK == bx3Var) {
                objK = new ne(pe1Var, n14Var);
                ag1Var.g0(objK);
            }
            nd2 nd2VarT = kt4.T((ff1) objK);
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = fd.x;
                ag1Var.g0(objK2);
            }
            int i7 = 196608 | i6 | i5 | (i4 & 7168) | (57344 & i4);
            int i8 = i4 << 6;
            a(n14Var, pe1Var, nd2VarT, o11Var2, y31Var2, (df1) objK2, ka0Var2, ag1Var, (i8 & 234881024) | i7 | (29360128 & i8));
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new oe(n14Var, pe1Var, o11Var, y31Var, ka0Var, i2);
        }
    }

    public static final void f(ag1 ag1Var, nd2 nd2Var) {
        oa oaVar = oa.f;
        int iHashCode = Long.hashCode(ag1Var.T);
        nd2 nd2VarH = is0.H(ag1Var, nd2Var);
        hu2 hu2VarL = ag1Var.l();
        lb0.c.getClass();
        ic0 ic0Var = kb0.b;
        ag1Var.Z();
        if (ag1Var.S) {
            ag1Var.k(ic0Var);
        } else {
            ag1Var.j0();
        }
        ht4.D(kb0.f, ag1Var, oaVar);
        ht4.D(kb0.e, ag1Var, hu2VarL);
        ht4.y(ag1Var, kb0.h);
        ht4.D(kb0.d, ag1Var, nd2VarH);
        ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
        ag1Var.p(true);
    }

    public static final int g(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c2);
    }

    public static final boolean h(gh3 gh3Var) {
        bh3 bh3VarK = gh3Var.k();
        return !bh3VarK.n.c(lh3.j);
    }

    public static final String i(y84 y84Var) {
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            return (String) pe3.c.a;
        }
        if (iOrdinal == 1) {
            return (String) ve3.c.a;
        }
        if (iOrdinal == 2) {
            return (String) oe3.c.a;
        }
        if (iOrdinal == 3) {
            return (String) qe3.c.a;
        }
        if (iOrdinal == 4) {
            return (String) re3.c.a;
        }
        p61.x();
        return null;
    }

    public static final boolean j(gh3 gh3Var, Resources resources) {
        Object objG = gh3Var.d.n.g(lh3.a);
        if (objG == null) {
            objG = null;
        }
        List list = (List) objG;
        return !se0.w(gh3Var) && (gh3Var.d.p || (gh3Var.q() && ((list != null ? (String) o70.i0(list) : null) != null || C(gh3Var) != null || B(gh3Var, resources) != null || A(gh3Var))));
    }

    public static Object k(ow3 ow3Var) throws InterruptedException {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(ow3Var, "Task must not be null");
        if (ow3Var.i()) {
            return b0(ow3Var);
        }
        xc0 xc0Var = new xc0(1);
        Executor executor = qw3.b;
        ow3Var.c(executor, xc0Var);
        ow3Var.b(executor, xc0Var);
        ow3Var.a(executor, xc0Var);
        xc0Var.o.await();
        return b0(ow3Var);
    }

    public static Object l(ef5 ef5Var, long j2) throws TimeoutException {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(ef5Var, "Task must not be null");
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        if (ef5Var.i()) {
            return b0(ef5Var);
        }
        xc0 xc0Var = new xc0(1);
        Executor executor = qw3.b;
        ef5Var.c(executor, xc0Var);
        ef5Var.b(executor, xc0Var);
        ef5Var.a(executor, xc0Var);
        if (xc0Var.o.await(j2, timeUnit)) {
            return b0(ef5Var);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static ef5 m(Executor executor, Callable callable) {
        Preconditions.checkNotNull(executor, "Executor must not be null");
        Preconditions.checkNotNull(callable, "Callback must not be null");
        ef5 ef5Var = new ef5();
        executor.execute(new w85(8, ef5Var, callable, false));
        return ef5Var;
    }

    public static void n(String str, boolean z) {
        if (z) {
            return;
        }
        k21.n(str);
    }

    public static nd2 o(nd2 nd2Var) {
        return nd2Var.c(new r40(new t3(14)));
    }

    public static final int p(int i2, a12 a12Var, Object obj) {
        int iD;
        return (obj == null || a12Var.c() == 0 || (i2 < a12Var.c() && obj.equals(a12Var.d(i2))) || (iD = a12Var.d.d(obj)) == -1) ? i2 : iD;
    }

    public static final void q(jw2 jw2Var, xb0 xb0Var, String str) {
        jw2Var.getClass();
        xb0Var.q().getClass();
        ht4.F(null, str);
        throw null;
    }

    public static final void r(jw2 jw2Var, b bVar, Object obj) {
        jw2Var.getClass();
        obj.getClass();
        bVar.e.getClass();
        throw null;
    }

    public static ef5 s(Exception exc) {
        ef5 ef5Var = new ef5();
        ef5Var.p(exc);
        return ef5Var;
    }

    public static ef5 t(Object obj) {
        ef5 ef5Var = new ef5();
        ef5Var.n(obj);
        return ef5Var;
    }

    public static final void u(long j2, byte[] bArr, int i2, int i3, int i4) {
        int i5 = 7 - i3;
        int i6 = 8 - i4;
        if (i6 > i5) {
            return;
        }
        while (true) {
            int i7 = qj1.a[(int) ((j2 >> (i5 << 3)) & 255)];
            int i8 = i2 + 1;
            bArr[i2] = (byte) (i7 >> 8);
            i2 += 2;
            bArr[i8] = (byte) i7;
            if (i5 == i6) {
                return;
            } else {
                i5--;
            }
        }
    }

    public static n1 v(Context context, y84 y84Var) {
        context.getClass();
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            return new jf(context, 1);
        }
        if (iOrdinal == 1) {
            return new jf(context, 4);
        }
        if (iOrdinal == 2) {
            return new jf(context, 0);
        }
        if (iOrdinal == 3) {
            return new jf(context, 2);
        }
        if (iOrdinal == 4) {
            return new jf(context, 3);
        }
        p61.x();
        return null;
    }

    public static String w(di2 di2Var, int i2) {
        di2Var.getClass();
        if (i2 <= 16777215) {
            return String.valueOf(i2);
        }
        try {
            Context context = di2Var.o;
            context.getClass();
            String resourceName = context.getResources().getResourceName(i2);
            resourceName.getClass();
            return resourceName;
        } catch (Resources.NotFoundException unused) {
            return String.valueOf(i2);
        }
    }

    public static d84 x(y84 y84Var) {
        d84 d84VarV;
        y84Var.getClass();
        int iOrdinal = y84Var.ordinal();
        if (iOrdinal == 0) {
            int i2 = ClaudeUsageService.Z;
            d84VarV = is0.v();
        } else if (iOrdinal == 1) {
            int i3 = GeminiUsageService.Y;
            d84VarV = c75.u();
        } else if (iOrdinal == 2) {
            int i4 = AntigravityUsageService.Y;
            d84VarV = k75.r();
        } else if (iOrdinal == 3) {
            int i5 = CodexUsageService.Y;
            d84VarV = on4.p();
        } else {
            if (iOrdinal != 4) {
                p61.x();
                return null;
            }
            int i6 = CopilotUsageService.Y;
            d84VarV = k75.s();
        }
        List listC = d84VarV.c();
        ArrayList arrayList = new ArrayList(p70.a0(listC, 10));
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            arrayList.add(new p84(((p84) it.next()).d(), 0.0d, null, null));
        }
        return new d84(arrayList, 0L);
    }

    public static void y(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            mk0.b();
        }
    }

    public static ai3 z(qi2 qi2Var) {
        qi2Var.getClass();
        return ci3.K(qi2Var, new z82(10));
    }
}
