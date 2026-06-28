package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kt3 extends ub2 implements SubMenu {
    public final ub2 v;
    public final zb2 w;

    public kt3(Context context, ub2 ub2Var, zb2 zb2Var) {
        super(context);
        this.v = ub2Var;
        this.w = zb2Var;
    }

    @Override // defpackage.ub2
    public final boolean d(zb2 zb2Var) {
        return this.v.d(zb2Var);
    }

    @Override // defpackage.ub2
    public final boolean e(ub2 ub2Var, MenuItem menuItem) {
        return super.e(ub2Var, menuItem) || this.v.e(ub2Var, menuItem);
    }

    @Override // defpackage.ub2
    public final boolean f(zb2 zb2Var) {
        return this.v.f(zb2Var);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.w;
    }

    @Override // defpackage.ub2
    public final ub2 j() {
        return this.v.j();
    }

    @Override // defpackage.ub2
    public final boolean l() {
        return this.v.l();
    }

    @Override // defpackage.ub2
    public final boolean m() {
        return this.v.m();
    }

    @Override // defpackage.ub2
    public final boolean n() {
        return this.v.n();
    }

    @Override // defpackage.ub2, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.v.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        q(0, null, 0, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        q(0, charSequence, 0, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        q(0, null, 0, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.w.setIcon(drawable);
        return this;
    }

    @Override // defpackage.ub2, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.v.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        q(0, null, i, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        q(i, null, 0, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.w.setIcon(i);
        return this;
    }
}
