package defpackage;

import android.content.ContentResolver;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aw4 {
    public static final di g = new di(0);
    public static final String[] h = {"key", "value"};
    public final ContentResolver a;
    public final Uri b;
    public final if4 c;
    public final Object d;
    public volatile Map e;
    public final ArrayList f;

    public aw4(ContentResolver contentResolver, Uri uri) {
        if4 if4Var = new if4(this);
        this.c = if4Var;
        this.d = new Object();
        this.f = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.a = contentResolver;
        this.b = uri;
        contentResolver.registerContentObserver(uri, false, if4Var);
    }

    public static synchronized void b() {
        try {
            for (aw4 aw4Var : (ci) g.values()) {
                aw4Var.a.unregisterContentObserver(aw4Var.c);
            }
            g.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.StrictMode$ThreadPolicy, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final Object a(String str) {
        Map map;
        ?? r0;
        Object objZza;
        Map map2 = this.e;
        ?? r02 = map2;
        if (map2 == null) {
            synchronized (this.d) {
                ?? r03 = this.e;
                if (r03 != 0) {
                    r0 = r03;
                } else {
                    try {
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            gt4 gt4Var = new gt4(1, this);
                            try {
                                objZza = gt4Var.zza();
                            } catch (SecurityException unused) {
                                long jClearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    objZza = gt4Var.zza();
                                } finally {
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                }
                            }
                            map = (Map) objZza;
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        } catch (SQLiteException | IllegalStateException | SecurityException unused2) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            map = null;
                        }
                        this.e = map;
                        r0 = map;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(r03);
                        throw th;
                    }
                }
            }
            r02 = r0;
        }
        if (r02 == 0) {
            r02 = Collections.EMPTY_MAP;
        }
        return (String) r02.get(str);
    }
}
