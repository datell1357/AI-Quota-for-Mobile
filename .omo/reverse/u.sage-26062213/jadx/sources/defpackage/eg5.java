package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eg5 extends og5 {
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ eg5(String str, Class cls, boolean z, boolean z2, int i) {
        super(str, cls, z, z2);
        this.f = i;
    }

    @Override // defpackage.og5
    public void a(Iterator it, ah5 ah5Var) {
        switch (this.f) {
            case 0:
                if (it.hasNext()) {
                    Object next = it.next();
                    boolean zHasNext = it.hasNext();
                    String str = this.a;
                    if (!zHasNext) {
                        ah5Var.a(next, str);
                    } else {
                        StringBuilder sb = new StringBuilder("[");
                        sb.append(next);
                        do {
                            sb.append(',');
                            sb.append(it.next());
                        } while (it.hasNext());
                        sb.append(']');
                        ah5Var.a(sb.toString(), str);
                    }
                }
                break;
            default:
                super.a(it, ah5Var);
                break;
        }
    }

    @Override // defpackage.og5
    public void b(Object obj, ah5 ah5Var) {
        switch (this.f) {
            case 1:
                zl4 zl4Var = (zl4) obj;
                if (zl4Var != null) {
                    xl4 xl4Var = zl4Var.a.p;
                    xl4Var.getClass();
                    int i = 0;
                    while (true) {
                        if (!(i < xl4Var.c() - xl4Var.a())) {
                            break;
                        } else if (i >= xl4Var.c() - xl4Var.a()) {
                            p61.v();
                            break;
                        } else {
                            yl4 yl4Var = xl4Var.o;
                            int iA = xl4Var.a() + i;
                            i++;
                            Map.Entry entry = (Map.Entry) yl4Var.n[iA];
                            if (((Set) entry.getValue()).isEmpty()) {
                                ah5Var.a(null, (String) entry.getKey());
                            } else {
                                Iterator it = ((Set) entry.getValue()).iterator();
                                while (it.hasNext()) {
                                    ah5Var.a(it.next(), (String) entry.getKey());
                                }
                            }
                        }
                    }
                }
                break;
            default:
                super.b(obj, ah5Var);
                break;
        }
    }
}
