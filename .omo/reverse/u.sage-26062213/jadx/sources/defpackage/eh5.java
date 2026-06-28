package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eh5 {
    public final /* synthetic */ int a;

    public /* synthetic */ eh5(int i) {
        this.a = i;
    }

    public final void a(og5 og5Var, Iterator it, ah5 ah5Var) {
        switch (this.a) {
            case 0:
                break;
            default:
                if (!og5Var.c) {
                    k21.n("non repeating key");
                } else if (og5Var.d && ((im4) im4.o.get()).n > 20) {
                    while (it.hasNext()) {
                        ah5Var.a(it.next(), og5Var.a);
                    }
                } else {
                    og5Var.a(it, ah5Var);
                }
                break;
        }
    }

    private final void b(og5 og5Var, Iterator it, ah5 ah5Var) {
    }
}
