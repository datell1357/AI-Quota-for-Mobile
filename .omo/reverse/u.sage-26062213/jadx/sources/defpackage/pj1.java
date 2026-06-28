package defpackage;

import android.content.Context;
import android.os.Build;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pj1 {
    public static final rx2 b = new rx2("fire-global");
    public static final rx2 c = new rx2("fire-count");
    public static final rx2 d = new rx2("last-used-date");
    public final ju1 a;

    public pj1(Context context, String str) {
        this.a = new ju1(context, "FirebaseHeartBeat".concat(str));
    }

    public final synchronized ArrayList a() {
        try {
            ArrayList arrayList = new ArrayList();
            String strB = b(System.currentTimeMillis());
            ju1 ju1Var = this.a;
            ju1Var.getClass();
            dh0 dh0Var = null;
            for (Map.Entry entry : ((Map) ca.H(d01.n, new x50(ju1Var, dh0Var, 7))).entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(strB);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new io(((rx2) entry.getKey()).a, new ArrayList(hashSet)));
                    }
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                ju1 ju1Var2 = this.a;
                jy jyVar = new jy(jCurrentTimeMillis, 1);
                ju1Var2.getClass();
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized String b(long j) {
        if (Build.VERSION.SDK_INT < 26) {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j));
        }
        Instant instant = new Date(j).toInstant();
        ZoneOffset unused = ZoneOffset.UTC;
        LocalDateTime localDateTime = instant.atOffset(ZoneOffset.UTC).toLocalDateTime();
        DateTimeFormatter unused2 = DateTimeFormatter.ISO_LOCAL_DATE;
        return localDateTime.format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public final synchronized rx2 c(hg2 hg2Var, String str) {
        for (Map.Entry entry : hg2Var.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        String str2 = ((rx2) entry.getKey()).a;
                        str2.getClass();
                        return new rx2(str2);
                    }
                }
            }
        }
        return null;
    }

    public final synchronized void d(hg2 hg2Var, String str) {
        try {
            rx2 rx2VarC = c(hg2Var, str);
            if (rx2VarC == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) is0.z(hg2Var, rx2VarC, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                hg2Var.d(rx2VarC);
            } else {
                hg2Var.f(rx2VarC, hashSet);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
