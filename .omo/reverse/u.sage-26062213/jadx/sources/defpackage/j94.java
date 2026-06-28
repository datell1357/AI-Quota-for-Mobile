package defpackage;

import android.text.TextUtils;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j94 {
    public static final Pattern b = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static j94 c;
    public final ls3 a;

    public j94(ls3 ls3Var) {
        this.a = ls3Var;
    }

    public final boolean a(to toVar) {
        if (TextUtils.isEmpty(toVar.c)) {
            return true;
        }
        long j = toVar.f + toVar.e;
        this.a.getClass();
        return j < (System.currentTimeMillis() / 1000) + 3600;
    }
}
