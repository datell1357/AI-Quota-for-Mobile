package defpackage;

import android.app.Activity;
import android.content.Context;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@kk2("activity")
public class c6 extends lk2 {
    public final Activity c;

    public c6(Context context) {
        Object next;
        context.getClass();
        Iterator it = ci3.K(context, new t3(3)).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((Context) next) instanceof Activity) {
                    break;
                }
            }
        }
        this.c = (Activity) next;
    }

    @Override // defpackage.lk2
    public final qi2 a() {
        return new b6(this);
    }

    @Override // defpackage.lk2
    public final qi2 c(qi2 qi2Var) {
        throw new IllegalStateException(xw1.p(((b6) qi2Var).o.a, " does not have an Intent set.", new StringBuilder("Destination ")).toString());
    }

    @Override // defpackage.lk2
    public final boolean f() {
        Activity activity = this.c;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }
}
