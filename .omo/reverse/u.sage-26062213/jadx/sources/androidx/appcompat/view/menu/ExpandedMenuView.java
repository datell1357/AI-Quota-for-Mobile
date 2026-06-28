package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.tb2;
import defpackage.ui3;
import defpackage.zb2;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements tb2, AdapterView.OnItemClickListener {
    public static final int[] n = {R.attr.background, R.attr.divider};

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        ui3 ui3VarH = ui3.h(context, attributeSet, n, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) ui3VarH.p;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(ui3VarH.e(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(ui3VarH.e(1));
        }
        ui3VarH.j();
    }

    @Override // defpackage.tb2
    public final boolean a(zb2 zb2Var) {
        throw null;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        throw null;
    }
}
