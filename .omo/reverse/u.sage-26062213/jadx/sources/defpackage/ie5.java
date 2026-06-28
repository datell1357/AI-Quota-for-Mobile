package defpackage;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ie5 implements pi, w70 {
    public final /* synthetic */ Object n;

    public /* synthetic */ ie5(Object obj) {
        this.n = obj;
    }

    @Override // defpackage.w70
    public long a() {
        return ((n93) this.n).c;
    }

    @Override // defpackage.pi
    public ListenableFuture call() {
        bo boVar = (bo) this.n;
        ge5 ge5Var = new ge5(boVar, 3);
        int i = vf5.a;
        return tf1.d(tf1.f((ListenableFuture) boVar.c, new ic5(4, ye5.a(), ge5Var), (fi3) boVar.e));
    }
}
