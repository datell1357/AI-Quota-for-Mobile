package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class va5 {
    public final ze1 a;
    public final boolean b;
    public final np1 c;
    public volatile String d = null;

    public va5(ze1 ze1Var, boolean z, np1 np1Var) {
        this.a = ze1Var;
        this.b = z;
        this.c = np1Var;
    }

    public final String a(Context context) {
        String str = this.d;
        if (str != null) {
            return str;
        }
        String str2 = (String) this.a.apply(context);
        this.d = str2;
        return str2;
    }
}
