package defpackage;

import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class qc1 extends u90 {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    final uc1 mFragments;
    boolean mResumed;
    final r22 mFragmentLifecycleRegistry = new r22(this, true);
    boolean mStopped = true;

    public qc1() {
        final SignInHubActivity signInHubActivity = (SignInHubActivity) this;
        this.mFragments = new uc1(new pc1(signInHubActivity));
        getSavedStateRegistry().c(LIFECYCLE_TAG, new mc1(0, signInHubActivity));
        final int i = 0;
        addOnConfigurationChangedListener(new xf0() { // from class: nc1
            @Override // defpackage.xf0
            public final void accept(Object obj) {
                int i2 = i;
                SignInHubActivity signInHubActivity2 = signInHubActivity;
                switch (i2) {
                    case 0:
                        signInHubActivity2.mFragments.a();
                        break;
                    default:
                        signInHubActivity2.mFragments.a();
                        break;
                }
            }
        });
        final int i2 = 1;
        addOnNewIntentListener(new xf0() { // from class: nc1
            @Override // defpackage.xf0
            public final void accept(Object obj) {
                int i22 = i2;
                SignInHubActivity signInHubActivity2 = signInHubActivity;
                switch (i22) {
                    case 0:
                        signInHubActivity2.mFragments.a();
                        break;
                    default:
                        signInHubActivity2.mFragments.a();
                        break;
                }
            }
        });
        addOnContextAvailableListener(new oc1(signInHubActivity, 0));
    }

    public static boolean g(hd1 hd1Var) {
        boolean zG = false;
        for (lc1 lc1Var : hd1Var.c.x()) {
            if (lc1Var != null) {
                if (lc1Var.getHost() != null) {
                    zG |= g(lc1Var.getChildFragmentManager());
                }
                ce1 ce1Var = lc1Var.mViewLifecycleOwner;
                g22 g22Var = g22.q;
                g22 g22Var2 = g22.p;
                if (ce1Var != null) {
                    ce1Var.b();
                    if (ce1Var.q.d.compareTo(g22Var) >= 0) {
                        lc1Var.mViewLifecycleOwner.q.g(g22Var2);
                        zG = true;
                    }
                }
                if (lc1Var.mLifecycleRegistry.d.compareTo(g22Var) >= 0) {
                    lc1Var.mLifecycleRegistry.g(g22Var2);
                    zG = true;
                }
            }
        }
        return zG;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.a.q.f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                j52.a(this).b(str2, fileDescriptor, printWriter, strArr);
            }
            this.mFragments.a.q.u(str, fileDescriptor, printWriter, strArr);
        }
    }

    public hd1 getSupportFragmentManager() {
        return this.mFragments.a.q;
    }

    @Deprecated
    public j52 getSupportLoaderManager() {
        return j52.a(this);
    }

    public void markFragmentsCreated() {
        while (g(getSupportFragmentManager())) {
        }
    }

    @Override // defpackage.u90, defpackage.t90, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.e(f22.ON_CREATE);
        id1 id1Var = this.mFragments.a.q;
        id1Var.E = false;
        id1Var.F = false;
        id1Var.L.g = false;
        id1Var.t(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.a.q.k();
        this.mFragmentLifecycleRegistry.e(f22.ON_DESTROY);
    }

    @Override // defpackage.u90, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return this.mFragments.a.q.i(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.a.q.t(5);
        this.mFragmentLifecycleRegistry.e(f22.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // defpackage.u90, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.a();
        super.onResume();
        this.mResumed = true;
        this.mFragments.a.q.x(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.e(f22.ON_RESUME);
        id1 id1Var = this.mFragments.a.q;
        id1Var.E = false;
        id1Var.F = false;
        id1Var.L.g = false;
        id1Var.t(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.a();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            id1 id1Var = this.mFragments.a.q;
            id1Var.E = false;
            id1Var.F = false;
            id1Var.L.g = false;
            id1Var.t(4);
        }
        this.mFragments.a.q.x(true);
        this.mFragmentLifecycleRegistry.e(f22.ON_START);
        id1 id1Var2 = this.mFragments.a.q;
        id1Var2.E = false;
        id1Var2.F = false;
        id1Var2.L.g = false;
        id1Var2.t(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        id1 id1Var = this.mFragments.a.q;
        id1Var.F = true;
        id1Var.L.g = true;
        id1Var.t(4);
        this.mFragmentLifecycleRegistry.e(f22.ON_STOP);
    }

    public void setEnterSharedElementCallback(sl3 sl3Var) {
        setEnterSharedElementCallback((SharedElementCallback) null);
    }

    public void setExitSharedElementCallback(sl3 sl3Var) {
        setExitSharedElementCallback((SharedElementCallback) null);
    }

    public void startActivityFromFragment(lc1 lc1Var, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            startActivityForResult(intent, -1, bundle);
        } else {
            lc1Var.startActivityForResult(intent, i, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(lc1 lc1Var, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i == -1) {
            startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            lc1Var.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        finishAfterTransition();
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateMenu();
    }

    public void supportPostponeEnterTransition() {
        postponeEnterTransition();
    }

    public void supportStartPostponedEnterTransition() {
        startPostponedEnterTransition();
    }

    public void startActivityFromFragment(lc1 lc1Var, Intent intent, int i) {
        startActivityFromFragment(lc1Var, intent, i, (Bundle) null);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Deprecated
    public void onAttachFragment(lc1 lc1Var) {
    }

    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }
}
