package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fc2 extends yx0 {
    public final int A;
    public yb2 B;
    public zb2 C;
    public final int z;

    public fc2(Context context, boolean z) {
        super(context, z);
        if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
            this.z = 21;
            this.A = 22;
        } else {
            this.z = 22;
            this.A = 21;
        }
    }

    @Override // defpackage.yx0, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        sb2 sb2Var;
        int headersCount;
        int iPointToPosition;
        int i;
        if (this.B != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                sb2Var = (sb2) headerViewListAdapter.getWrappedAdapter();
            } else {
                sb2Var = (sb2) adapter;
                headersCount = 0;
            }
            zb2 item = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i = iPointToPosition - headersCount) < 0 || i >= sb2Var.getCount()) ? null : sb2Var.getItem(i);
            zb2 zb2Var = this.C;
            if (zb2Var != item) {
                ub2 ub2Var = sb2Var.a;
                if (zb2Var != null) {
                    this.B.b(ub2Var, zb2Var);
                }
                this.C = item;
                if (item != null) {
                    this.B.d(ub2Var, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.z) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i != this.A) {
            return super.onKeyDown(i, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (sb2) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (sb2) adapter).a.c(false);
        return true;
    }

    public void setHoverListener(yb2 yb2Var) {
        this.B = yb2Var;
    }

    @Override // defpackage.yx0, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
