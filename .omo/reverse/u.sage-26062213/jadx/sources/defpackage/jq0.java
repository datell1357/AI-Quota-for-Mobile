package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jq0 extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ pq3 d;
    public final /* synthetic */ mq0 e;

    public jq0(ViewGroup viewGroup, View view, boolean z, pq3 pq3Var, mq0 mq0Var) {
        this.a = viewGroup;
        this.b = view;
        this.c = z;
        this.d = pq3Var;
        this.e = mq0Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        boolean z = this.c;
        pq3 pq3Var = this.d;
        if (z) {
            xw1.a(view, pq3Var.a);
        }
        this.e.a();
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Animator from operation " + pq3Var + " has ended.");
        }
    }
}
