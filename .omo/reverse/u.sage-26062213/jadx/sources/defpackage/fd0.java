package defpackage;

import android.util.Log;
import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fd0 {
    public static final Pattern e;
    public static final Pattern f;
    public final HashSet a = new HashSet();
    public final Executor b;
    public final yc0 c;
    public final yc0 d;

    static {
        Charset.forName("UTF-8");
        e = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
        f = Pattern.compile("^(0|false|f|no|n|off|)$", 2);
    }

    public fd0(Executor executor, yc0 yc0Var, yc0 yc0Var2) {
        this.b = executor;
        this.c = yc0Var;
        this.d = yc0Var2;
    }

    public static String b(yc0 yc0Var, String str) {
        ad0 ad0VarC = yc0Var.c();
        if (ad0VarC == null) {
            return null;
        }
        try {
            return ad0VarC.b.getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static void c(String str, String str2) {
        Log.w("FirebaseRemoteConfig", xw1.r("No value of type '", str2, "' exists for parameter key '", str, "'."));
    }

    public final void a(String str, ad0 ad0Var) {
        if (ad0Var == null) {
            return;
        }
        synchronized (this.a) {
            try {
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    this.b.execute(new l20((BiConsumer) it.next(), str, ad0Var, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
