package defpackage;

import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kt0 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ nt0 n;

    public kt0(nt0 nt0Var) {
        this.n = nt0Var;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        nt0 nt0Var = this.n;
        if (nt0Var.mDialog != null) {
            nt0Var.onCancel(nt0Var.mDialog);
        }
    }
}
