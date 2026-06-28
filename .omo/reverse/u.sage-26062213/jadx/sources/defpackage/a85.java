package defpackage;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a85 {
    public static final wu4 a;

    static {
        Object pl4Var;
        ((gl4) bl4.a).getClass();
        AtomicReference atomicReference = ll4.f;
        String strReplace = "Phlogger";
        if (atomicReference.get() != null) {
            nl4 nl4Var = (nl4) atomicReference.get();
            pl4Var = new pl4("Phlogger", nl4Var.a, nl4Var.b, nl4Var.c);
        } else {
            int i = 7;
            while (true) {
                if (i >= 0) {
                    char cCharAt = "Phlogger".charAt(i);
                    if (cCharAt != '$') {
                        if (cCharAt == '.') {
                            break;
                        } else {
                            i--;
                        }
                    } else {
                        strReplace = "Phlogger".replace('$', '.');
                        break;
                    }
                } else {
                    break;
                }
            }
            ll4 ll4Var = new ll4(strReplace);
            if (ll4.c || ll4.d) {
                ll4Var.b = new ol4(strReplace);
            } else if (ll4.e) {
                nl4 nl4Var2 = pl4.h;
                ll4Var.b = new pl4(strReplace, Level.OFF, nl4Var2.b, nl4Var2.c);
            } else {
                ll4Var.b = null;
            }
            ConcurrentLinkedQueue concurrentLinkedQueue = jl4.a;
            concurrentLinkedQueue.offer(ll4Var);
            pl4Var = ll4Var;
            if (atomicReference.get() != null) {
                while (true) {
                    ll4 ll4Var2 = (ll4) concurrentLinkedQueue.poll();
                    if (ll4Var2 == null) {
                        break;
                    }
                    nl4 nl4Var3 = (nl4) atomicReference.get();
                    ll4Var2.b = new pl4(ll4Var2.a, nl4Var3.a, nl4Var3.b, nl4Var3.c);
                }
                ll4.d();
                pl4Var = ll4Var;
            }
        }
        a = new wu4(4, pl4Var);
    }
}
