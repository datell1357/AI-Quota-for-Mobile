package defpackage;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i extends k {
    @Override // defpackage.k
    public final Object q(Object obj, Throwable th) {
        qi qiVar = (qi) obj;
        ListenableFuture listenableFutureApply = qiVar.apply(th);
        n44.W(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", qiVar);
        return listenableFutureApply;
    }

    @Override // defpackage.k
    public final void r(Object obj) {
        o((ListenableFuture) obj);
    }
}
