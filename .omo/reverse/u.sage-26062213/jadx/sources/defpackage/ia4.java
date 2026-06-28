package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ia4 {
    boolean a();

    long c(bf bfVar, bf bfVar2, bf bfVar3);

    bf m(long j, bf bfVar, bf bfVar2, bf bfVar3);

    bf p(long j, bf bfVar, bf bfVar2, bf bfVar3);

    default bf q(bf bfVar, bf bfVar2, bf bfVar3) {
        return m(c(bfVar, bfVar2, bfVar3), bfVar, bfVar2, bfVar3);
    }
}
