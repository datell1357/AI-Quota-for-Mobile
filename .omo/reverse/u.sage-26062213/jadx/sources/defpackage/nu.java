package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nu implements zk0 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    @Override // defpackage.zk0
    public final yk0 a(sj sjVar) {
        ConcurrentHashMap concurrentHashMap = this.a;
        yk0 yk0Var = (yk0) concurrentHashMap.get(sjVar);
        if (yk0Var == null) {
            int i = -1;
            sj sjVar2 = null;
            for (sj sjVar3 : concurrentHashMap.keySet()) {
                int iA = sjVar.a(sjVar3);
                if (iA > i) {
                    sjVar2 = sjVar3;
                    i = iA;
                }
            }
            if (sjVar2 != null) {
                return (yk0) concurrentHashMap.get(sjVar2);
            }
        }
        return yk0Var;
    }

    @Override // defpackage.zk0
    public final void b(sj sjVar, e94 e94Var) {
        this.a.put(sjVar, e94Var);
    }

    public final String toString() {
        return this.a.toString();
    }
}
