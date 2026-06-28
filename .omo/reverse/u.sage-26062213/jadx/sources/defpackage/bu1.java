package defpackage;

import androidx.work.impl.WorkDatabase_Impl;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bu1 {
    public final WorkDatabase_Impl a;
    public final v24 b;
    public final LinkedHashMap c;
    public final ReentrantLock d;
    public final l6 e;
    public final l6 f;
    public final Object g;

    public bu1(WorkDatabase_Impl workDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.a = workDatabase_Impl;
        v24 v24Var = new v24(workDatabase_Impl, linkedHashMap, linkedHashMap2, strArr, workDatabase_Impl.j, new o(1, this, bu1.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0, 0, 5));
        this.b = v24Var;
        this.c = new LinkedHashMap();
        this.d = new ReentrantLock();
        this.e = new l6(this, 21);
        this.f = new l6(this, 22);
        Collections.newSetFromMap(new IdentityHashMap()).getClass();
        this.g = new Object();
        v24Var.k = new cc(15, this);
    }

    public final Object a(bv3 bv3Var) {
        Object objF;
        WorkDatabase_Impl workDatabase_Impl = this.a;
        return ((!workDatabase_Impl.j() || workDatabase_Impl.m()) && (objF = this.b.f(bv3Var)) == ri0.n) ? objF : t64.a;
    }
}
