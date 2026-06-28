package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a25 extends q55 {
    public char c;
    public long d;
    public String e;
    public final x15 f;
    public final x15 g;
    public final x15 h;
    public final x15 i;
    public final x15 j;
    public final x15 k;
    public final x15 l;
    public final x15 m;
    public final x15 n;

    public a25(r45 r45Var) {
        super(r45Var);
        this.c = (char) 0;
        this.d = -1L;
        this.f = new x15(this, 6, false, false);
        this.g = new x15(this, 6, true, false);
        this.h = new x15(this, 6, false, true);
        this.i = new x15(this, 5, false, false);
        this.j = new x15(this, 5, true, false);
        this.k = new x15(this, 5, false, true);
        this.l = new x15(this, 4, false, false);
        this.m = new x15(this, 3, false, false);
        this.n = new x15(this, 2, false, false);
    }

    public static y15 D(String str) {
        if (str == null) {
            return null;
        }
        return new y15(str);
    }

    public static String G(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String strH = H(obj, z);
        String strH2 = H(obj2, z);
        String strH3 = H(obj3, z);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strH)) {
            sb.append(str2);
            sb.append(strH);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strH2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strH2);
        }
        if (!TextUtils.isEmpty(strH3)) {
            sb.append(str3);
            sb.append(strH3);
        }
        return sb.toString();
    }

    public static String H(Object obj, boolean z) {
        int iLastIndexOf;
        String className;
        int iLastIndexOf2;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return obj.toString();
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return obj.toString();
            }
            char cCharAt = obj.toString().charAt(0);
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            int length = String.valueOf(jRound).length();
            String str = cCharAt == '-' ? "-" : "";
            StringBuilder sb = new StringBuilder(str.length() + str.length() + length + 3 + String.valueOf(jRound2).length());
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof y15 ? ((y15) obj).a : z ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String canonicalName = r45.class.getCanonicalName();
        String strSubstring = (TextUtils.isEmpty(canonicalName) || (iLastIndexOf = canonicalName.lastIndexOf(46)) == -1) ? "" : canonicalName.substring(0, iLastIndexOf);
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length2 = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length2) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                if (((TextUtils.isEmpty(className) || (iLastIndexOf2 = className.lastIndexOf(46)) == -1) ? "" : className.substring(0, iLastIndexOf2)).equals(strSubstring)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
            i++;
        }
        return sb2.toString();
    }

    public final x15 A() {
        return this.i;
    }

    public final x15 B() {
        return this.m;
    }

    public final x15 C() {
        return this.n;
    }

    public final void E(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(F(), i)) {
            Log.println(i, F(), G(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        j45 j45Var = ((r45) this.a).g;
        if (j45Var == null) {
            Log.println(6, F(), "Scheduler not set. Not logging error/warn");
        } else {
            if (!j45Var.b) {
                Log.println(6, F(), "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i >= 9) {
                i = 8;
            }
            j45Var.E(new v15(this, i, str, obj, obj2, obj3));
        }
    }

    public final String F() {
        String str;
        synchronized (this) {
            try {
                if (this.e == null) {
                    ((r45) ((r45) this.a).d.a).getClass();
                    this.e = "FA";
                }
                Preconditions.checkNotNull(this.e);
                str = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    @Override // defpackage.q55
    public final boolean w() {
        return false;
    }

    public final x15 z() {
        return this.f;
    }
}
