package defpackage;

import android.view.View;
import android.view.Window;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pc1 extends vc1 implements yo2, kp2, fp2, gp2, cc4, vo2, t6, yc3, md1, vb2 {
    public final /* synthetic */ SignInHubActivity r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pc1(SignInHubActivity signInHubActivity) {
        super(signInHubActivity);
        this.r = signInHubActivity;
    }

    @Override // defpackage.md1
    public final void a(lc1 lc1Var) {
        this.r.onAttachFragment(lc1Var);
    }

    @Override // defpackage.vb2
    public final void addMenuProvider(jc2 jc2Var) {
        this.r.addMenuProvider(jc2Var);
    }

    @Override // defpackage.yo2
    public final void addOnConfigurationChangedListener(xf0 xf0Var) {
        this.r.addOnConfigurationChangedListener(xf0Var);
    }

    @Override // defpackage.fp2
    public final void addOnMultiWindowModeChangedListener(xf0 xf0Var) {
        this.r.addOnMultiWindowModeChangedListener(xf0Var);
    }

    @Override // defpackage.gp2
    public final void addOnPictureInPictureModeChangedListener(xf0 xf0Var) {
        this.r.addOnPictureInPictureModeChangedListener(xf0Var);
    }

    @Override // defpackage.kp2
    public final void addOnTrimMemoryListener(xf0 xf0Var) {
        this.r.addOnTrimMemoryListener(xf0Var);
    }

    @Override // defpackage.sc1
    public final View b(int i) {
        return this.r.findViewById(i);
    }

    @Override // defpackage.sc1
    public final boolean c() {
        Window window = this.r.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // defpackage.t6
    public final p6 getActivityResultRegistry() {
        return this.r.getActivityResultRegistry();
    }

    @Override // defpackage.p22
    public final h22 getLifecycle() {
        return this.r.mFragmentLifecycleRegistry;
    }

    @Override // defpackage.vo2
    public final uo2 getOnBackPressedDispatcher() {
        return this.r.getOnBackPressedDispatcher();
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        return this.r.getSavedStateRegistry();
    }

    @Override // defpackage.cc4
    public final bc4 getViewModelStore() {
        return this.r.getViewModelStore();
    }

    @Override // defpackage.vb2
    public final void removeMenuProvider(jc2 jc2Var) {
        this.r.removeMenuProvider(jc2Var);
    }

    @Override // defpackage.yo2
    public final void removeOnConfigurationChangedListener(xf0 xf0Var) {
        this.r.removeOnConfigurationChangedListener(xf0Var);
    }

    @Override // defpackage.fp2
    public final void removeOnMultiWindowModeChangedListener(xf0 xf0Var) {
        this.r.removeOnMultiWindowModeChangedListener(xf0Var);
    }

    @Override // defpackage.gp2
    public final void removeOnPictureInPictureModeChangedListener(xf0 xf0Var) {
        this.r.removeOnPictureInPictureModeChangedListener(xf0Var);
    }

    @Override // defpackage.kp2
    public final void removeOnTrimMemoryListener(xf0 xf0Var) {
        this.r.removeOnTrimMemoryListener(xf0Var);
    }
}
