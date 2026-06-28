package defpackage;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hd extends xx1 implements ne1 {
    public final /* synthetic */ Context o;
    public final /* synthetic */ pe1 p;
    public final /* synthetic */ yf1 q;
    public final /* synthetic */ ic3 r;
    public final /* synthetic */ int s;
    public final /* synthetic */ View t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hd(Context context, pe1 pe1Var, yf1 yf1Var, ic3 ic3Var, int i, View view) {
        super(0);
        this.o = context;
        this.p = pe1Var;
        this.q = yf1Var;
        this.r = ic3Var;
        this.s = i;
        this.t = view;
    }

    @Override // defpackage.ne1
    public final Object a() {
        KeyEvent.Callback callback = this.t;
        callback.getClass();
        return new pb4(this.o, this.p, this.q, this.r, this.s, (sr2) callback).getLayoutNode();
    }
}
