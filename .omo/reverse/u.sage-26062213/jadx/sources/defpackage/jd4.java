package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jd4 extends AnimatorListenerAdapter {
    public final /* synthetic */ qd4 a;
    public final /* synthetic */ View b;

    public jd4(qd4 qd4Var, View view) {
        this.a = qd4Var;
        this.b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        qd4 qd4Var = this.a;
        qd4Var.a.d(1.0f);
        ld4.e(qd4Var, this.b);
    }
}
