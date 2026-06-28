package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sb2 extends BaseAdapter {
    public final ub2 a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    public sb2(ub2 ub2Var, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = ub2Var;
        this.f = i;
        a();
    }

    public final void a() {
        ub2 ub2Var = this.a;
        zb2 zb2Var = ub2Var.s;
        if (zb2Var != null) {
            ub2Var.i();
            ArrayList arrayList = ub2Var.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((zb2) arrayList.get(i)) == zb2Var) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zb2 getItem(int i) {
        ArrayList arrayListK;
        boolean z = this.d;
        ub2 ub2Var = this.a;
        if (z) {
            ub2Var.i();
            arrayListK = ub2Var.j;
        } else {
            arrayListK = ub2Var.k();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (zb2) arrayListK.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListK;
        boolean z = this.d;
        ub2 ub2Var = this.a;
        if (z) {
            ub2Var.i();
            arrayListK = ub2Var.j;
        } else {
            arrayListK = ub2Var.k();
        }
        return this.b < 0 ? arrayListK.size() : arrayListK.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int i2 = getItem(i).b;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).b : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.a.l() && i2 != i4) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        kc2 kc2Var = (kc2) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        kc2Var.a(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
