package defpackage;

import androidx.work.impl.WorkDatabase;
import com.google.android.gms.common.util.BiConsumer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l20 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ l20(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.p = obj;
        this.o = obj2;
        this.q = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dh0 dh0Var = null;
        boolean zBooleanValue = true;
        char c = 1;
        switch (this.n) {
            case 0:
                WorkDatabase workDatabase = (WorkDatabase) this.p;
                String str = (String) this.o;
                eg4 eg4Var = (eg4) this.q;
                qg4 qg4VarW = workDatabase.w();
                qg4VarW.getClass();
                str.getClass();
                Iterator it = ((List) gg4.N(qg4VarW.a, true, false, new ao0(str, 16))).iterator();
                while (it.hasNext()) {
                    ht4.h(eg4Var, (String) it.next());
                }
                return;
            case 1:
                ((BiConsumer) this.p).accept((String) this.o, (ad0) this.q);
                return;
            case 2:
                ih ihVar = (ih) this.p;
                ix ixVar = (ix) this.o;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.q;
                try {
                    bb1 bb1VarQ = k75.q(ihVar.a);
                    if (bb1VarQ == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    ab1 ab1Var = (ab1) ((gz0) bb1VarQ.b);
                    synchronized (ab1Var.d) {
                        ab1Var.f = threadPoolExecutor;
                        break;
                    }
                    ((gz0) bb1VarQ.b).a(new jz0(ixVar, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    ixVar.I(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 3:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.p;
                b20 b20Var = (b20) this.o;
                j4 j4Var = (j4) this.q;
                if (atomicBoolean.get()) {
                    return;
                }
                try {
                    j4Var.a();
                    b20Var.a(null);
                    return;
                } catch (Throwable th2) {
                    b20Var.b(th2);
                    return;
                }
            case 4:
                ez2 ez2Var = (ez2) this.p;
                e20 e20Var = (e20) this.o;
                hh4 hh4Var = (hh4) this.q;
                ez2Var.getClass();
                try {
                    zBooleanValue = ((Boolean) e20Var.o.get()).booleanValue();
                    break;
                } catch (InterruptedException | ExecutionException unused) {
                }
                synchronized (ez2Var.k) {
                    try {
                        bg4 bg4VarA = rg4.a(hh4Var.a);
                        String str2 = bg4VarA.a;
                        if (ez2Var.c(str2) == hh4Var) {
                            ez2Var.b(str2);
                        }
                        t72.g().c(ez2.l, ez2.class.getSimpleName() + " " + str2 + " executed; reschedule = " + zBooleanValue);
                        ArrayList arrayList = ez2Var.j;
                        int size = arrayList.size();
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            ((f31) obj).d(bg4VarA, zBooleanValue);
                        }
                    } finally {
                    }
                    break;
                }
                return;
            case 5:
                pc4 pc4Var = (pc4) this.p;
                nr3 nr3Var = (nr3) this.o;
                ez2 ez2Var2 = (ez2) pc4Var.o;
                ez2Var2.getClass();
                bg4 bg4Var = nr3Var.a;
                String str3 = bg4Var.a;
                ArrayList arrayList2 = new ArrayList();
                og4 og4Var = (og4) ez2Var2.e.n(new s00(ez2Var2, arrayList2, str3, 2));
                int i = 15;
                if (og4Var == null) {
                    t72.g().j(ez2.l, "Didn't find WorkSpec for id " + bg4Var);
                    ((c73) ez2Var2.d.r).execute(new h7(i, ez2Var2, bg4Var));
                    return;
                }
                synchronized (ez2Var2.k) {
                    try {
                        synchronized (ez2Var2.k) {
                            i = ez2Var2.c(str3) != null ? 1 : 0;
                            break;
                        }
                        if (i != 0) {
                            Set set = (Set) ez2Var2.h.get(str3);
                            if (((nr3) set.iterator().next()).a.b == bg4Var.b) {
                                set.add(nr3Var);
                                t72.g().c(ez2.l, "Work " + bg4Var + " is already enqueued for processing");
                            } else {
                                ((c73) ez2Var2.d.r).execute(new h7(i, ez2Var2, bg4Var));
                            }
                            return;
                        }
                        if (og4Var.t != bg4Var.b) {
                            ((c73) ez2Var2.d.r).execute(new h7(i, ez2Var2, bg4Var));
                            return;
                        }
                        hh4 hh4Var2 = new hh4(new j04(ez2Var2.b, ez2Var2.c, ez2Var2.d, ez2Var2, ez2Var2.e, og4Var, arrayList2));
                        ji0 ji0Var = (ji0) hh4Var2.d.p;
                        vu1 vu1VarE = n44.E();
                        ji0Var.getClass();
                        e20 e20VarE = w80.E(ca.B(ji0Var, vu1VarE), new eh4(hh4Var2, dh0Var, c == true ? 1 : 0));
                        e20VarE.o.a(new l20(ez2Var2, e20VarE, hh4Var2, 4), (c73) ez2Var2.d.r);
                        ez2Var2.g.put(str3, hh4Var2);
                        HashSet hashSet = new HashSet();
                        hashSet.add(nr3Var);
                        ez2Var2.h.put(str3, hashSet);
                        t72.g().c(ez2.l, ez2.class.getSimpleName() + ": processing " + bg4Var);
                        return;
                    } finally {
                    }
                }
            default:
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.p;
                b20 b20Var2 = (b20) this.o;
                ne1 ne1Var = (ne1) this.q;
                if (atomicBoolean2.get()) {
                    return;
                }
                try {
                    b20Var2.a(ne1Var.a());
                    return;
                } catch (Throwable th3) {
                    b20Var2.b(th3);
                    return;
                }
        }
    }
}
