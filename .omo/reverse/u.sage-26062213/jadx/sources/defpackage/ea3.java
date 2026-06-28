package defpackage;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ea3 {
    public final Context b;
    public final String c;
    public Executor f;
    public Executor g;
    public r6 h;
    public boolean i;
    public boolean q;
    public boolean r;
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public final fa3 j = fa3.n;
    public final long k = -1;
    public final vq1 l = new vq1(1);
    public final LinkedHashSet m = new LinkedHashSet();
    public final LinkedHashSet n = new LinkedHashSet();
    public final ArrayList o = new ArrayList();
    public boolean p = true;
    public final boolean s = true;
    public final i50 a = y33.a(WorkDatabase.class);

    public ea3(Context context, String str) {
        this.b = context;
        this.c = str;
    }

    public final void a(ad2... ad2VarArr) {
        for (ad2 ad2Var : ad2VarArr) {
            Integer numValueOf = Integer.valueOf(ad2Var.a);
            LinkedHashSet linkedHashSet = this.n;
            linkedHashSet.add(numValueOf);
            linkedHashSet.add(Integer.valueOf(ad2Var.b));
        }
        ad2[] ad2VarArr2 = (ad2[]) Arrays.copyOf(ad2VarArr, ad2VarArr.length);
        vq1 vq1Var = this.l;
        vq1Var.getClass();
        for (ad2 ad2Var2 : ad2VarArr2) {
            vq1Var.b(ad2Var2);
        }
    }
}
