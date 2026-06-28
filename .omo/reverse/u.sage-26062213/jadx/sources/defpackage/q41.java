package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q41 implements z21 {
    public long n;
    public Object o;
    public Object p;
    public Serializable q;
    public final Object r;

    public /* synthetic */ q41(f35 f35Var, long j) {
        this.r = f35Var;
        Preconditions.checkNotEmpty("health_monitor");
        Preconditions.checkArgument(j > 0);
        this.o = "health_monitor:start";
        this.p = "health_monitor:count";
        this.q = "health_monitor:value";
        this.n = j;
    }

    public void a() {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.q;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            wa3 wa3Var = (wa3) it.next();
            wa3Var.cancel();
            wa3 wa3VarA = wa3Var.a();
            if (wa3VarA != null) {
                ((u23) this.o).p.addLast(wa3VarA);
            }
        }
        copyOnWriteArrayList.clear();
    }

    public va3 b() {
        wa3 n41Var;
        u23 u23Var = (u23) this.o;
        Throwable th = null;
        if (u23Var.a(null)) {
            try {
                n41Var = u23Var.b();
            } catch (Throwable th2) {
                n41Var = new n41(th2);
            }
            if (n41Var.d()) {
                return new va3(n41Var, th, 6);
            }
            if (n41Var instanceof n41) {
                return ((n41) n41Var).a;
            }
            ((CopyOnWriteArrayList) this.q).add(n41Var);
            ((tw3) this.p).d().c(new p41(hi4.b + " connect " + u23Var.i.h.f(), n41Var, this), 0L);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(long r11, defpackage.u35 r13) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q41.c(long, u35):boolean");
    }

    public void d() {
        f35 f35Var = (f35) this.r;
        f35Var.v();
        long jCurrentTimeMillis = ((r45) f35Var.a).k.currentTimeMillis();
        SharedPreferences.Editor editorEdit = f35Var.z().edit();
        editorEdit.remove((String) this.p);
        editorEdit.remove((String) this.q);
        editorEdit.putLong((String) this.o, jCurrentTimeMillis);
        editorEdit.apply();
    }

    @Override // defpackage.z21
    public i23 e() throws IOException {
        va3 va3VarB;
        long j;
        va3 va3Var;
        IOException iOException = null;
        while (true) {
            try {
                if (((CopyOnWriteArrayList) this.q).isEmpty() && !((u23) this.o).a(null)) {
                    a();
                    iOException.getClass();
                    throw iOException;
                }
                if (((u23) this.o).k.C) {
                    throw new IOException("Canceled");
                }
                ra3 ra3Var = ((tw3) this.p).a;
                long jNanoTime = System.nanoTime();
                long j2 = this.n - jNanoTime;
                if (((CopyOnWriteArrayList) this.q).isEmpty() || j2 <= 0) {
                    va3VarB = b();
                    j = 250000000;
                    this.n = jNanoTime + 250000000;
                } else {
                    j = j2;
                    va3VarB = null;
                }
                if (va3VarB == null) {
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.q;
                    if (copyOnWriteArrayList.isEmpty() || (va3Var = (va3) ((LinkedBlockingDeque) this.r).poll(j, timeUnit)) == null) {
                        va3VarB = null;
                    } else {
                        copyOnWriteArrayList.remove(va3Var.a);
                        va3VarB = va3Var;
                    }
                    if (va3VarB == null) {
                    }
                }
                boolean z = false;
                if (va3VarB.b == null && va3VarB.c == null) {
                    a();
                    if (!va3VarB.a.d()) {
                        va3VarB = va3VarB.a.b();
                    }
                    if (va3VarB.b == null && va3VarB.c == null) {
                        z = true;
                    }
                    if (z) {
                        return va3VarB.a.c();
                    }
                }
                Throwable th = va3VarB.c;
                if (th != null) {
                    if (!(th instanceof IOException)) {
                        throw th;
                    }
                    if (iOException == null) {
                        iOException = (IOException) th;
                    } else {
                        on4.j(iOException, th);
                    }
                }
                wa3 wa3Var = va3VarB.b;
                if (wa3Var != null) {
                    ((u23) this.o).p.addFirst(wa3Var);
                }
            } finally {
                a();
            }
        }
    }

    @Override // defpackage.z21
    public u23 g() {
        return (u23) this.o;
    }

    public /* synthetic */ q41(pb5 pb5Var) {
        this.r = pb5Var;
    }

    public q41(u23 u23Var, tw3 tw3Var) {
        tw3Var.getClass();
        this.o = u23Var;
        this.p = tw3Var;
        this.n = Long.MIN_VALUE;
        this.q = new CopyOnWriteArrayList();
        this.r = new LinkedBlockingDeque();
    }
}
