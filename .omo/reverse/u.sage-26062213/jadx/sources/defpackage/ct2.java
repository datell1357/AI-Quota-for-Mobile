package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ct2 implements cu3 {
    public final ArrayList n;

    public ct2(rp rpVar) {
        rpVar.getClass();
        String str = sf4.a;
        cf0 cf0Var = (cf0) rpVar.c;
        yl2 yl2Var = (yl2) rpVar.e;
        ArrayList arrayListH = tv4.H(new tv(cf0Var, 0), new tv((uv) rpVar.d), new tv((cf0) rpVar.f, 4));
        if (Build.VERSION.SDK_INT >= 28) {
            Context context = (Context) rpVar.b;
            context.getClass();
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            arrayListH.add(new ul2((ConnectivityManager) systemService));
        } else {
            yl2Var.getClass();
            arrayListH.addAll(tv4.F(new tv(yl2Var, 2), new tv(yl2Var, 3), new rl2(yl2Var), new ql2(yl2Var)));
        }
        this.n = arrayListH;
    }

    public void a() {
        this.n.add(ft2.c);
    }

    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.n.add(new gt2(f, f2, f3, f4, f5, f6));
    }

    public void c(float f, float f2, float f3, float f4, float f5, float f6) {
        this.n.add(new ot2(f, f2, f3, f4, f5, f6));
    }

    public void d(float f) {
        this.n.add(new ht2(f));
    }

    public void e(float f) {
        this.n.add(new pt2(f));
    }

    public void f(float f, float f2) {
        this.n.add(new it2(f, f2));
    }

    public void g(float f, float f2) {
        this.n.add(new qt2(f, f2));
    }

    @Override // defpackage.cu3
    public /* synthetic */ Object get() {
        Object obj = o75.j;
        return new gd5(this.n);
    }

    public void h(float f, float f2) {
        this.n.add(new jt2(f, f2));
    }

    public void i(float f, float f2, float f3, float f4) {
        this.n.add(new lt2(f, f2, f3, f4));
    }

    public void j(float f, float f2, float f3, float f4) {
        this.n.add(new tt2(f, f2, f3, f4));
    }

    public a81 k(og4 og4Var) {
        og4Var.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.n;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            if (((bf0) obj).a(og4Var)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(p70.a0(arrayList, 10));
        int size2 = arrayList.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList.get(i2);
            i2++;
            arrayList3.add(((bf0) obj2).c(og4Var.j));
        }
        return qj0.D(new mt(4, (a81[]) o70.C0(arrayList3).toArray(new a81[0])));
    }

    public void l(float f) {
        this.n.add(new wt2(f));
    }

    public void m(float f) {
        this.n.add(new vt2(f));
    }

    public ct2() {
        this.n = new ArrayList(32);
    }

    public /* synthetic */ ct2(ArrayList arrayList) {
        this.n = arrayList;
    }
}
