package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f45 extends FutureTask implements Comparable {
    public final long n;
    public final boolean o;
    public final String p;
    public final /* synthetic */ j45 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f45(j45 j45Var, Callable callable, boolean z) {
        super(callable);
        this.q = j45Var;
        Preconditions.checkNotNull("Task exception on worker thread");
        long andIncrement = j45.k.getAndIncrement();
        this.n = andIncrement;
        this.p = "Task exception on worker thread";
        this.o = z;
        if (andIncrement == Long.MAX_VALUE) {
            a25 a25Var = ((r45) j45Var.a).f;
            r45.l(a25Var);
            a25Var.f.a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        f45 f45Var = (f45) obj;
        boolean z = f45Var.o;
        boolean z2 = this.o;
        if (z2 != z) {
            return !z2 ? 1 : -1;
        }
        long j = f45Var.n;
        long j2 = this.n;
        if (j2 < j) {
            return -1;
        }
        if (j2 > j) {
            return 1;
        }
        a25 a25Var = ((r45) this.q.a).f;
        r45.l(a25Var);
        a25Var.g.b(Long.valueOf(j2), "Two tasks share the same index. index");
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        a25 a25Var = ((r45) this.q.a).f;
        r45.l(a25Var);
        a25Var.f.b(th, this.p);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f45(j45 j45Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.q = j45Var;
        Preconditions.checkNotNull(str);
        long andIncrement = j45.k.getAndIncrement();
        this.n = andIncrement;
        this.p = str;
        this.o = z;
        if (andIncrement == Long.MAX_VALUE) {
            a25 a25Var = ((r45) j45Var.a).f;
            r45.l(a25Var);
            a25Var.f.a("Tasks index overflow");
        }
    }
}
