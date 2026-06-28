package defpackage;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yo0 implements nj1, oj1 {
    public final rz1 a;
    public final Context b;
    public final n03 c;
    public final Set d;
    public final Executor e;

    public yo0(Context context, String str, Set set, n03 n03Var, Executor executor) {
        this.a = new rz1(new fa0(1, context, str));
        this.d = set;
        this.e = executor;
        this.c = n03Var;
        this.b = context;
    }

    public final ef5 a() {
        if (!w80.D(this.b)) {
            return mt1.t("");
        }
        return mt1.m(this.e, new xo0(this, 0));
    }

    public final void b() {
        if (this.d.size() <= 0) {
            mt1.t(null);
        } else if (!w80.D(this.b)) {
            mt1.t(null);
        } else {
            mt1.m(this.e, new xo0(this, 1));
        }
    }
}
