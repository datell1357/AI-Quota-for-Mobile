package defpackage;

import java.util.AbstractList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ao4 extends AbstractList {
    public final yn4 n;
    public final zn4 o;

    public ao4(yn4 yn4Var, zn4 zn4Var) {
        this.n = yn4Var;
        this.o = zn4Var;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int iD = ((sn4) this.n).d(i);
        ((ky4) this.o).getClass();
        nm4 nm4VarA = nm4.a(iD);
        return nm4VarA == null ? nm4.o : nm4VarA;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return ((sn4) this.n).p;
    }
}
