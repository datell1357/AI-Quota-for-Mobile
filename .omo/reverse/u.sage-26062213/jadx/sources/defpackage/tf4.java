package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tf4 {
    public static final String i = t72.i("WorkContinuationImpl");
    public final eg4 a;
    public final String b;
    public final x31 c;
    public final List d;
    public final ArrayList e;
    public final ArrayList f = new ArrayList();
    public boolean g;
    public w13 h;

    public tf4(eg4 eg4Var, String str, x31 x31Var, List list, int i2) {
        this.a = eg4Var;
        this.b = str;
        this.c = x31Var;
        this.d = list;
        this.e = new ArrayList(list.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (x31Var == x31.n && ((mg4) list.get(i3)).b.f243u != Long.MAX_VALUE) {
                k21.f("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
                throw null;
            }
            String string = ((mg4) list.get(i3)).a.toString();
            string.getClass();
            this.e.add(string);
            this.f.add(string);
        }
    }

    public static HashSet b(tf4 tf4Var) {
        HashSet hashSet = new HashSet();
        tf4Var.getClass();
        return hashSet;
    }

    public final w13 a() {
        if (this.g) {
            t72.g().j(i, "Already enqueued work ids (" + TextUtils.join(", ", this.e) + ")");
        } else {
            eg4 eg4Var = this.a;
            this.h = mt1.N(eg4Var.b.m, "EnqueueRunnable_" + this.c.name(), (ji3) eg4Var.d.o, new vc3(11, this));
        }
        return this.h;
    }
}
