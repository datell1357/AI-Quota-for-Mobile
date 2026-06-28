package defpackage;

import androidx.compose.ui.input.pointer.PointerInputEventHandler;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class va implements PointerInputEventHandler {
    public final /* synthetic */ wa a;

    public va(wa waVar) {
        this.a = waVar;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(dw2 dw2Var, dh0 dh0Var) {
        Object objF = ht4.f(dw2Var, new ua(this.a, null), dh0Var);
        return objF == ri0.n ? objF : t64.a;
    }
}
