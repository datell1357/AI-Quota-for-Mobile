package defpackage;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dt4 implements Comparator {
    public final /* synthetic */ zq4 n;
    public final /* synthetic */ qd1 o;

    public dt4(zq4 zq4Var, qd1 qd1Var) {
        this.n = zq4Var;
        this.o = qd1Var;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        ls4 ls4Var = (ls4) obj;
        ls4 ls4Var2 = (ls4) obj2;
        if (ls4Var instanceof vs4) {
            return !(ls4Var2 instanceof vs4) ? 1 : 0;
        }
        if (ls4Var2 instanceof vs4) {
            return -1;
        }
        zq4 zq4Var = this.n;
        return zq4Var == null ? ls4Var.zzc().compareTo(ls4Var2.zzc()) : (int) ai4.n(zq4Var.b(this.o, Arrays.asList(ls4Var, ls4Var2)).zzd().doubleValue());
    }
}
