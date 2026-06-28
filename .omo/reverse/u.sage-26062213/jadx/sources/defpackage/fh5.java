package defpackage;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fh5 {
    public static final dh5 e;
    public static final eh5 f;
    public final HashMap a;
    public final HashMap b;
    public final dh5 c;
    public eh5 d;

    static {
        int i = 0;
        e = new dh5(i);
        f = new eh5(i);
    }

    public fh5(fh5 fh5Var) {
        HashMap map = new HashMap();
        this.a = map;
        HashMap map2 = new HashMap();
        this.b = map2;
        map.putAll(fh5Var.a);
        map2.putAll(fh5Var.b);
        this.c = fh5Var.c;
        this.d = fh5Var.d;
    }

    public void a(og5 og5Var, Object obj, ah5 ah5Var) {
        dh5 dh5Var = (dh5) this.a.get(og5Var);
        if (dh5Var != null) {
            dh5Var.a(og5Var, obj, ah5Var);
        } else {
            this.c.a(og5Var, obj, ah5Var);
        }
    }

    public void b(og5 og5Var, Iterator it, ah5 ah5Var) {
        eh5 eh5Var = (eh5) this.b.get(og5Var);
        if (eh5Var != null) {
            eh5Var.a(og5Var, it, ah5Var);
            return;
        }
        eh5 eh5Var2 = this.d;
        if (eh5Var2 != null && !this.a.containsKey(og5Var)) {
            eh5Var2.a(og5Var, it, ah5Var);
        } else {
            while (it.hasNext()) {
                a(og5Var, it.next(), ah5Var);
            }
        }
    }

    public /* synthetic */ fh5() {
        dh5 dh5Var = qn0.g;
        this.a = new HashMap();
        this.b = new HashMap();
        this.d = null;
        this.c = dh5Var;
    }
}
