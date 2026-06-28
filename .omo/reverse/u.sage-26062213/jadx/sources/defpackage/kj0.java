package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kj0 {
    public final q51 a;

    public kj0(q51 q51Var) {
        this.a = q51Var;
    }

    public final void a(xo xoVar) {
        q51 q51Var = this.a;
        HashSet<y93> hashSet = xoVar.a;
        ArrayList arrayList = new ArrayList(p70.a0(hashSet, 10));
        for (y93 y93Var : hashSet) {
            String str = ((vo) y93Var).b;
            vo voVar = (vo) y93Var;
            String str2 = voVar.d;
            String strSubstring = voVar.e;
            String str3 = voVar.c;
            long j = voVar.f;
            dd1 dd1Var = z93.a;
            if (strSubstring.length() > 256) {
                strSubstring = strSubstring.substring(0, 256);
            }
            arrayList.add(new wo(j, str, str2, strSubstring, str3));
        }
        synchronized (((aa3) q51Var.f)) {
            try {
                if (((aa3) q51Var.f).b(arrayList)) {
                    ((qk0) ((eh) q51Var.c).p).a(new h7(21, q51Var, ((aa3) q51Var.f).a()));
                }
            } finally {
            }
        }
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Updated Crashlytics Rollout State", null);
        }
    }
}
