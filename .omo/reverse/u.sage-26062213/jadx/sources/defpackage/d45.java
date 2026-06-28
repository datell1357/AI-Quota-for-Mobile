package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d45 implements Thread.UncaughtExceptionHandler {
    public final String a;
    public final /* synthetic */ j45 b;

    public d45(j45 j45Var, String str) {
        this.b = j45Var;
        Preconditions.checkNotNull(str);
        this.a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        a25 a25Var = ((r45) this.b.a).f;
        r45.l(a25Var);
        a25Var.f.b(th, this.a);
    }
}
