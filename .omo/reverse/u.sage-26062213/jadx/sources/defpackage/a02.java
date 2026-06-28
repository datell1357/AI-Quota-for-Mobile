package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a02 implements Comparator {
    public final /* synthetic */ int n;
    public final /* synthetic */ hb o;

    public /* synthetic */ a02(hb hbVar, int i) {
        this.n = i;
        this.o = hbVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.n;
        hb hbVar = this.o;
        switch (i) {
        }
        return ca.i(Integer.valueOf(hbVar.d(((g12) obj2).i)), Integer.valueOf(hbVar.d(((g12) obj).i)));
    }
}
