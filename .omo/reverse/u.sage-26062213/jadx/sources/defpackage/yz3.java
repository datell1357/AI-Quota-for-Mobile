package defpackage;

import android.view.View;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yz3 implements View.OnClickListener {
    public final /* synthetic */ Toolbar n;

    public yz3(Toolbar toolbar) {
        this.n = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a04 a04Var = this.n.a0;
        zb2 zb2Var = a04Var == null ? null : a04Var.o;
        if (zb2Var != null) {
            zb2Var.collapseActionView();
        }
    }
}
