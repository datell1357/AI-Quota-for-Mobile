package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t00 extends x00 {
    public final /* synthetic */ x00 n;
    public final /* synthetic */ Executor o;

    public t00(x00 x00Var, Executor executor) {
        this.n = x00Var;
        this.o = executor;
    }

    @Override // defpackage.x00
    public final Object load(Object obj) {
        return this.n.load(obj);
    }

    @Override // defpackage.x00
    public final Map loadAll(Iterable iterable) {
        return this.n.loadAll(iterable);
    }

    @Override // defpackage.x00
    public final ListenableFuture reload(Object obj, Object obj2) {
        q42 q42Var = new q42(new s00(this.n, obj, obj2, 0));
        this.o.execute(q42Var);
        return q42Var;
    }
}
