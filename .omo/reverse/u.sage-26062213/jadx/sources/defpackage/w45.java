package defpackage;

import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w45 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ long q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Object s;

    public w45(f85 f85Var, Bundle bundle, w75 w75Var, w75 w75Var2, long j) {
        this.n = 2;
        this.o = bundle;
        this.p = w75Var;
        this.r = w75Var2;
        this.q = j;
        Objects.requireNonNull(f85Var);
        this.s = f85Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Object obj = this.r;
        Object obj2 = this.p;
        Object obj3 = this.s;
        Object obj4 = this.o;
        switch (i) {
            case 0:
                String str = (String) obj2;
                o55 o55Var = (o55) obj3;
                String str2 = (String) obj4;
                if (str2 != null) {
                    w75 w75Var = new w75((String) obj, str2, this.q);
                    pb5 pb5Var = o55Var.c;
                    pb5Var.d().v();
                    String str3 = pb5Var.G;
                    if (str3 != null) {
                        str3.equals(str);
                    }
                    pb5Var.G = str;
                    pb5Var.F = w75Var;
                } else {
                    pb5 pb5Var2 = o55Var.c;
                    pb5Var2.d().v();
                    String str4 = pb5Var2.G;
                    if (str4 == null || str4.equals(str)) {
                        pb5Var2.G = str;
                        pb5Var2.F = null;
                    }
                }
                break;
            case 1:
                m75 m75Var = (m75) obj3;
                String str5 = (String) obj4;
                String str6 = (String) obj2;
                m75Var.G(this.q, this.r, str5, str6);
                break;
            default:
                Bundle bundle = (Bundle) obj4;
                bundle.remove("screen_name");
                bundle.remove("screen_class");
                f85 f85Var = (f85) obj3;
                ac5 ac5Var = ((r45) f85Var.a).i;
                r45.j(ac5Var);
                f85Var.B((w75) obj2, (w75) obj, this.q, true, ac5Var.F("screen_view", bundle, null, false));
                break;
        }
    }

    public /* synthetic */ w45(Object obj, String str, String str2, Object obj2, long j, int i) {
        this.n = i;
        this.o = str;
        this.p = str2;
        this.r = obj2;
        this.q = j;
        this.s = obj;
    }
}
