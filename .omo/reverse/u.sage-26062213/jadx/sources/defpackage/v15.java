package defpackage;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v15 implements Runnable {
    public final /* synthetic */ int n = 0;
    public final int o;
    public final String p;
    public final Object q;
    public final Object r;
    public final Object s;
    public final Object t;

    public /* synthetic */ v15(String str, d25 d25Var, int i, IOException iOException, byte[] bArr, Map map) {
        Preconditions.checkNotNull(d25Var);
        this.q = d25Var;
        this.o = i;
        this.r = iOException;
        this.s = bArr;
        this.p = str;
        this.t = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.n) {
            case 0:
                a25 a25Var = (a25) this.t;
                f35 f35Var = ((r45) a25Var.a).e;
                r45.j(f35Var);
                if (!f35Var.b) {
                    Log.println(6, a25Var.F(), "Persisted config not initialized. Not logging error/warn");
                    return;
                }
                if (a25Var.c == 0) {
                    ds4 ds4Var = ((r45) a25Var.a).d;
                    if (ds4Var.e == null) {
                        synchronized (ds4Var) {
                            try {
                                if (ds4Var.e == null) {
                                    r45 r45Var = (r45) ds4Var.a;
                                    ApplicationInfo applicationInfo = r45Var.a.getApplicationInfo();
                                    String myProcessName = ProcessUtils.getMyProcessName();
                                    if (applicationInfo != null) {
                                        String str = applicationInfo.processName;
                                        ds4Var.e = Boolean.valueOf(str != null && str.equals(myProcessName));
                                    }
                                    if (ds4Var.e == null) {
                                        ds4Var.e = Boolean.TRUE;
                                        a25 a25Var2 = r45Var.f;
                                        r45.l(a25Var2);
                                        a25Var2.f.a("My process not in the list of running processes");
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    if (ds4Var.e.booleanValue()) {
                        a25Var.c = 'C';
                    } else {
                        a25Var.c = 'c';
                    }
                    break;
                }
                if (a25Var.d < 0) {
                    ((r45) a25Var.a).d.B();
                    a25Var.d = 161000L;
                }
                int i = this.o;
                char c = a25Var.c;
                long j = a25Var.d;
                String str2 = this.p;
                Object obj = this.q;
                Object obj2 = this.r;
                Object obj3 = this.s;
                char cCharAt = "01VDIWEA?".charAt(i);
                String strG = a25.G(true, str2, obj, obj2, obj3);
                StringBuilder sb = new StringBuilder(String.valueOf(cCharAt).length() + 1 + String.valueOf(c).length() + String.valueOf(j).length() + 1 + strG.length());
                sb.append("2");
                sb.append(cCharAt);
                sb.append(c);
                sb.append(j);
                sb.append(":");
                sb.append(strG);
                String string = sb.toString();
                if (string.length() > 1024) {
                    string = str2.substring(0, 1024);
                }
                q41 q41Var = f35Var.e;
                if (q41Var != null) {
                    String str3 = (String) q41Var.q;
                    f35 f35Var2 = (f35) q41Var.r;
                    f35Var2.v();
                    if (((f35) q41Var.r).z().getLong((String) q41Var.o, 0L) == 0) {
                        q41Var.d();
                    }
                    SharedPreferences sharedPreferencesZ = f35Var2.z();
                    String str4 = (String) q41Var.p;
                    long j2 = sharedPreferencesZ.getLong(str4, 0L);
                    if (j2 <= 0) {
                        SharedPreferences.Editor editorEdit = f35Var2.z().edit();
                        editorEdit.putString(str3, string);
                        editorEdit.putLong(str4, 1L);
                        editorEdit.apply();
                        return;
                    }
                    ac5 ac5Var = ((r45) f35Var2.a).i;
                    r45.j(ac5Var);
                    long jNextLong = ac5Var.t0().nextLong() & Long.MAX_VALUE;
                    long j3 = j2 + 1;
                    long j4 = Long.MAX_VALUE / j3;
                    SharedPreferences.Editor editorEdit2 = f35Var2.z().edit();
                    if (jNextLong < j4) {
                        editorEdit2.putString(str3, string);
                    }
                    editorEdit2.putLong(str4, j3);
                    editorEdit2.apply();
                    return;
                }
                return;
            default:
                ((d25) this.q).a(this.p, this.o, (Throwable) this.r, (byte[]) this.s, (Map) this.t);
                return;
        }
    }

    public v15(a25 a25Var, int i, String str, Object obj, Object obj2, Object obj3) {
        this.o = i;
        this.p = str;
        this.q = obj;
        this.r = obj2;
        this.s = obj3;
        this.t = a25Var;
    }
}
