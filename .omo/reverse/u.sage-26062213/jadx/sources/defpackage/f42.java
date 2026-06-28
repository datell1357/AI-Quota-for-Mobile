package defpackage;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f42 implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ m42 n;

    public f42(m42 m42Var) {
        this.n = m42Var;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        fc2 fc2Var;
        if (i == -1 || (fc2Var = this.n.p) == null) {
            return;
        }
        fc2Var.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
