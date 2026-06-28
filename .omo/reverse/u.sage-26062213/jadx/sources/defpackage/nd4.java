package defpackage;

import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nd4 extends WindowInsetsAnimation$Callback {
    public final b70 a;
    public List b;
    public ArrayList c;
    public final HashMap d;

    public nd4(b70 b70Var) {
        super(b70Var.n);
        this.d = new HashMap();
        this.a = b70Var;
    }

    public final qd4 a(WindowInsetsAnimation windowInsetsAnimation) {
        HashMap map = this.d;
        qd4 qd4Var = (qd4) map.get(windowInsetsAnimation);
        if (qd4Var != null) {
            return qd4Var;
        }
        qd4 qd4Var2 = new qd4(0, null, 0L);
        qd4Var2.a = new od4(windowInsetsAnimation);
        map.put(windowInsetsAnimation, qd4Var2);
        return qd4Var2;
    }

    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        this.a.k(a(windowInsetsAnimation));
        this.d.remove(windowInsetsAnimation);
    }

    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        this.a.l(a(windowInsetsAnimation));
    }

    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        ArrayList arrayList = this.c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.c = arrayList2;
            this.b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation windowInsetsAnimationI = md4.i(list.get(size));
            qd4 qd4VarA = a(windowInsetsAnimationI);
            qd4VarA.a.d(windowInsetsAnimationI.getFraction());
            this.c.add(qd4VarA);
        }
        return this.a.m(ke4.c(null, windowInsets), this.b).b();
    }

    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        pc4 pc4VarN = this.a.n(a(windowInsetsAnimation), new pc4(bounds));
        pc4VarN.getClass();
        md4.k();
        return md4.h(((nr1) pc4VarN.o).d(), ((nr1) pc4VarN.p).d());
    }
}
