package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lk0 {
    public static final HashMap f;
    public static final String g;
    public final Context a;
    public final sn1 b;
    public final dh c;
    public final xh1 d;
    public final ed0 e;

    static {
        HashMap map = new HashMap();
        f = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        Locale locale = Locale.US;
        g = "Crashlytics Android SDK/20.0.6";
    }

    public lk0(Context context, sn1 sn1Var, dh dhVar, xh1 xh1Var, ed0 ed0Var) {
        this.a = context;
        this.b = sn1Var;
        this.c = dhVar;
        this.d = xh1Var;
        this.e = ed0Var;
    }

    public static hn c(qd1 qd1Var, int i) {
        String str = (String) qd1Var.p;
        String str2 = (String) qd1Var.o;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) qd1Var.q;
        int i2 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        qd1 qd1Var2 = (qd1) qd1Var.r;
        if (i >= 8) {
            qd1 qd1Var3 = qd1Var2;
            while (qd1Var3 != null) {
                qd1Var3 = (qd1) qd1Var3.r;
                i2++;
            }
        }
        int i3 = i2;
        List listD = d(stackTraceElementArr, 4);
        if (listD == null) {
            q73.r("Null frames");
            return null;
        }
        byte b = (byte) (0 | 1);
        hn hnVarC = (qd1Var2 == null || i3 != 0) ? null : c(qd1Var2, i + 1);
        if (b == 1) {
            return new hn(str, str2, listD, hnVarC, i3);
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" overflowCount");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }

    public static List d(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            kn knVar = new kn();
            knVar.e = i;
            knVar.f = (byte) (knVar.f | 4);
            long lineNumber = 0;
            long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                lineNumber = stackTraceElement.getLineNumber();
            }
            knVar.a = jMax;
            byte b = (byte) (knVar.f | 1);
            knVar.b = str;
            knVar.c = fileName;
            knVar.d = lineNumber;
            knVar.f = (byte) (b | 2);
            arrayList.add(knVar.a());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static in e() {
        return new in("0", "0", 0L);
    }

    public final List a() {
        byte b = (byte) (((byte) (0 | 1)) | 2);
        dh dhVar = this.c;
        String str = (String) dhVar.d;
        if (str == null) {
            q73.r("Null name");
            return null;
        }
        String str2 = (String) dhVar.b;
        if (b == 3) {
            return Collections.singletonList(new gn(0L, 0L, str, str2));
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" baseAddress");
        }
        if ((b & 2) == 0) {
            sb.append(" size");
        }
        k21.n(di0.w("Missing required properties:", sb));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.pn b(int r17) {
        /*
            Method dump skipped, instruction units count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lk0.b(int):pn");
    }
}
