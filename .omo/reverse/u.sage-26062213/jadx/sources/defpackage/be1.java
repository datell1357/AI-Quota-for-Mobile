package defpackage;

import android.view.View;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class be1 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ ArrayList o;
    public final /* synthetic */ ArrayList p;
    public final /* synthetic */ ArrayList q;
    public final /* synthetic */ ArrayList r;

    public be1(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.n = i;
        this.o = arrayList;
        this.p = arrayList2;
        this.q = arrayList3;
        this.r = arrayList4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i = 0; i < this.n; i++) {
            View view = (View) this.o.get(i);
            String str = (String) this.p.get(i);
            Field field = lb4.a;
            view.setTransitionName(str);
            ((View) this.q.get(i)).setTransitionName((String) this.r.get(i));
        }
    }
}
