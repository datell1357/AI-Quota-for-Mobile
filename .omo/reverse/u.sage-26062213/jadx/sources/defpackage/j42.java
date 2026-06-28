package defpackage;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j42 extends DataSetObserver {
    public final /* synthetic */ m42 a;

    public j42(m42 m42Var) {
        this.a = m42Var;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        m42 m42Var = this.a;
        if (m42Var.I.isShowing()) {
            m42Var.a();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.a.dismiss();
    }
}
