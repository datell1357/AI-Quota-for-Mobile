package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class be5 implements qi {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ ic5 b;
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ int d;

    public /* synthetic */ be5(ic5 ic5Var, int i, ArrayList arrayList) {
        this.b = ic5Var;
        this.d = i;
        this.c = arrayList;
    }

    @Override // defpackage.qi
    public final ListenableFuture apply(Object obj) {
        int i = this.a;
        int i2 = this.d;
        ArrayList arrayList = this.c;
        ic5 ic5Var = this.b;
        switch (i) {
            case 0:
                ArrayList arrayList2 = new ArrayList(i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    if (((Boolean) tf1.b((Future) arrayList.get(i3))).booleanValue()) {
                        ((List) ic5Var.b).get(i3).getClass();
                        mk0.b();
                        return null;
                    }
                }
                lp1 lp1VarK = lp1.k(arrayList2);
                y10 y10Var = new y10();
                s80 s80Var = new s80(lp1VarK, true);
                s80Var.A = new r80(s80Var, y10Var);
                s80Var.s();
                return s80Var;
            default:
                lp1 lp1VarK2 = lp1.k(arrayList);
                pc4 pc4VarA = vf5.a(new lb(ic5Var, (sm4) obj, i2, arrayList));
                Executor executor = (Executor) ic5Var.c;
                s80 s80Var2 = new s80(lp1VarK2, false);
                s80Var2.A = new r80(s80Var2, pc4VarA, executor);
                s80Var2.s();
                return s80Var2;
        }
    }

    public /* synthetic */ be5(ic5 ic5Var, ArrayList arrayList, int i) {
        this.b = ic5Var;
        this.c = arrayList;
        this.d = i;
    }
}
