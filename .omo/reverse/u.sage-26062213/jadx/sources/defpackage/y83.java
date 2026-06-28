package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import java.util.ArrayList;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y83 extends ViewGroup {
    public final int n;
    public final ArrayList o;
    public final ArrayList p;
    public final xh1 q;
    public int r;

    public y83(Context context) {
        super(context);
        this.n = 5;
        ArrayList arrayList = new ArrayList();
        this.o = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.p = arrayList2;
        this.q = new xh1(20);
        setClipChildren(false);
        z83 z83Var = new z83(context);
        addView(z83Var);
        arrayList.add(z83Var);
        arrayList2.add(z83Var);
        this.r = 1;
        setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
