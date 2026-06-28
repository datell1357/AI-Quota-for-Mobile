package defpackage;

import android.app.Application;
import android.app.PictureInPictureUiState;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class u90 extends t90 implements cc4, ej1, yc3, vo2, dk2, t6, yo2, kp2, fp2, gp2, vb2 {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private static final n90 Companion = new n90();
    private bc4 _viewModelStore;
    private final p6 activityResultRegistry;
    private int contentLayoutId;
    private final qz1 defaultViewModelProviderFactory$delegate;
    private boolean dispatchingOnMultiWindowModeChanged;
    private boolean dispatchingOnPictureInPictureModeChanged;
    private final qz1 fullyDrawnReporter$delegate;
    private boolean hasPictureInPictureSystemFeature;
    private final AtomicInteger nextLocalRequestCode;
    private final qz1 onBackPressedDispatcher$delegate;
    private final qz1 onBackPressedInput$delegate;
    private final CopyOnWriteArrayList<xf0> onConfigurationChangedListeners;
    private final CopyOnWriteArrayList<xf0> onMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<xf0> onNewIntentListeners;
    private final CopyOnWriteArrayList<xf0> onPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<xf0> onPictureInPictureUiStateChangedListeners;
    private final CopyOnWriteArrayList<xf0> onTrimMemoryListeners;
    private final CopyOnWriteArrayList<Runnable> onUserLeaveHintListeners;
    private final q90 reportFullyDrawnExecutor;
    private final wc3 savedStateRegistryController;
    private final wg0 contextAwareHelper = new wg0();
    private final xb2 menuHostHelper = new xb2(new j90(this, 1));

    public u90() {
        wc3 wc3Var = new wc3(new xc3(this, new vc3(0, this)));
        this.savedStateRegistryController = wc3Var;
        this.reportFullyDrawnExecutor = new r90(this);
        this.fullyDrawnReporter$delegate = new nv3(new k90(this, 1));
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new s90(this);
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.onNewIntentListeners = new CopyOnWriteArrayList<>();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureUiStateChangedListeners = new CopyOnWriteArrayList<>();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList<>();
        this.onBackPressedInput$delegate = new nv3(new k90(this, 2));
        if (getLifecycle() == null) {
            k21.n("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
            throw null;
        }
        final int i = 0;
        getLifecycle().a(new n22(this) { // from class: m90
            public final /* synthetic */ u90 o;

            {
                this.o = this;
            }

            @Override // defpackage.n22
            public final void B(p22 p22Var, f22 f22Var) {
                Window window;
                View viewPeekDecorView;
                int i2 = i;
                u90 u90Var = this.o;
                switch (i2) {
                    case 0:
                        if (f22Var == f22.ON_STOP && (window = u90Var.getWindow()) != null && (viewPeekDecorView = window.peekDecorView()) != null) {
                            viewPeekDecorView.cancelPendingInputEvents();
                            break;
                        }
                        break;
                    default:
                        u90.d(u90Var, p22Var, f22Var);
                        break;
                }
            }
        });
        final int i2 = 1;
        getLifecycle().a(new n22(this) { // from class: m90
            public final /* synthetic */ u90 o;

            {
                this.o = this;
            }

            @Override // defpackage.n22
            public final void B(p22 p22Var, f22 f22Var) {
                Window window;
                View viewPeekDecorView;
                int i22 = i2;
                u90 u90Var = this.o;
                switch (i22) {
                    case 0:
                        if (f22Var == f22.ON_STOP && (window = u90Var.getWindow()) != null && (viewPeekDecorView = window.peekDecorView()) != null) {
                            viewPeekDecorView.cancelPendingInputEvents();
                            break;
                        }
                        break;
                    default:
                        u90.d(u90Var, p22Var, f22Var);
                        break;
                }
            }
        });
        getLifecycle().a(new k33(2, this));
        wc3Var.a();
        pc3.b(this);
        getSavedStateRegistry().c(ACTIVITY_RESULT_TAG, new mc1(1, this));
        addOnContextAvailableListener(new oc1(this, 1));
        this.defaultViewModelProviderFactory$delegate = new nv3(new k90(this, 3));
        this.onBackPressedDispatcher$delegate = new nv3(new k90(this, 4));
    }

    public static final void access$ensureViewModelStore(u90 u90Var) {
        if (u90Var._viewModelStore == null) {
            p90 p90Var = (p90) u90Var.getLastNonConfigurationInstance();
            if (p90Var != null) {
                u90Var._viewModelStore = p90Var.b;
            }
            if (u90Var._viewModelStore == null) {
                u90Var._viewModelStore = new bc4();
            }
        }
    }

    public static Bundle b(u90 u90Var) {
        Bundle bundle = new Bundle();
        p6 p6Var = u90Var.activityResultRegistry;
        p6Var.getClass();
        LinkedHashMap linkedHashMap = p6Var.b;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(p6Var.d));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(p6Var.g));
        return bundle;
    }

    public static me1 c(u90 u90Var) {
        return new me1(u90Var.reportFullyDrawnExecutor, new k90(u90Var, 0));
    }

    public static void d(u90 u90Var, p22 p22Var, f22 f22Var) {
        if (f22Var == f22.ON_DESTROY) {
            u90Var.contextAwareHelper.b = null;
            if (!u90Var.isChangingConfigurations()) {
                u90Var.getViewModelStore().a();
            }
            r90 r90Var = (r90) u90Var.reportFullyDrawnExecutor;
            u90 u90Var2 = r90Var.q;
            u90Var2.getWindow().getDecorView().removeCallbacks(r90Var);
            u90Var2.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(r90Var);
        }
    }

    public static void e(u90 u90Var) {
        try {
            super.onBackPressed();
        } catch (IllegalStateException e) {
            if (!nt1.g(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        } catch (NullPointerException e2) {
            if (!nt1.g(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e2;
            }
        }
    }

    public static void f(u90 u90Var, Context context) {
        context.getClass();
        Bundle bundleA = u90Var.getSavedStateRegistry().a(ACTIVITY_RESULT_TAG);
        if (bundleA != null) {
            p6 p6Var = u90Var.activityResultRegistry;
            LinkedHashMap linkedHashMap = p6Var.b;
            LinkedHashMap linkedHashMap2 = p6Var.a;
            Bundle bundle = p6Var.g;
            ArrayList<Integer> integerArrayList = bundleA.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            ArrayList<String> stringArrayList2 = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            if (stringArrayList2 != null) {
                p6Var.d.addAll(stringArrayList2);
            }
            Bundle bundle2 = bundleA.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            int size = stringArrayList.size();
            for (int i = 0; i < size; i++) {
                String str = stringArrayList.get(i);
                if (linkedHashMap.containsKey(str)) {
                    Integer num = (Integer) linkedHashMap.remove(str);
                    if (!bundle.containsKey(str)) {
                        n44.P(linkedHashMap2).remove(num);
                    }
                }
                Integer num2 = integerArrayList.get(i);
                num2.getClass();
                int iIntValue = num2.intValue();
                String str2 = stringArrayList.get(i);
                str2.getClass();
                String str3 = str2;
                linkedHashMap2.put(Integer.valueOf(iIntValue), str3);
                p6Var.b.put(str3, Integer.valueOf(iIntValue));
            }
        }
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        q90 q90Var = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        ((r90) q90Var).a(decorView);
        super.addContentView(view, layoutParams);
    }

    public void addMenuProvider(jc2 jc2Var, p22 p22Var) {
        jc2Var.getClass();
        p22Var.getClass();
        xb2 xb2Var = this.menuHostHelper;
        xb2Var.b.add(jc2Var);
        xb2Var.a.run();
        h22 lifecycle = p22Var.getLifecycle();
        HashMap map = xb2Var.c;
        wb2 wb2Var = (wb2) map.remove(jc2Var);
        if (wb2Var != null) {
            wb2Var.a.b(wb2Var.b);
            wb2Var.b = null;
        }
        map.put(jc2Var, new wb2(lifecycle, new l90(1, xb2Var, jc2Var)));
    }

    @Override // defpackage.yo2
    public final void addOnConfigurationChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onConfigurationChangedListeners.add(xf0Var);
    }

    public final void addOnContextAvailableListener(ap2 ap2Var) {
        ap2Var.getClass();
        wg0 wg0Var = this.contextAwareHelper;
        wg0Var.getClass();
        u90 u90Var = wg0Var.b;
        if (u90Var != null) {
            ap2Var.a(u90Var);
        }
        wg0Var.a.add(ap2Var);
    }

    @Override // defpackage.fp2
    public final void addOnMultiWindowModeChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onMultiWindowModeChangedListeners.add(xf0Var);
    }

    public final void addOnNewIntentListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onNewIntentListeners.add(xf0Var);
    }

    @Override // defpackage.gp2
    public final void addOnPictureInPictureModeChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onPictureInPictureModeChangedListeners.add(xf0Var);
    }

    public final void addOnPictureInPictureUiStateChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onPictureInPictureUiStateChangedListeners.add(xf0Var);
    }

    @Override // defpackage.kp2
    public final void addOnTrimMemoryListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onTrimMemoryListeners.add(xf0Var);
    }

    public final void addOnUserLeaveHintListener(Runnable runnable) {
        runnable.getClass();
        this.onUserLeaveHintListeners.add(runnable);
    }

    public final void enterPictureInPictureMode(zu2 zu2Var) {
        throw null;
    }

    @Override // defpackage.t6
    public final p6 getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override // defpackage.ej1
    public vk0 getDefaultViewModelCreationExtras() {
        of2 of2Var = new of2(0);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = of2Var.a;
        if (application != null) {
            linkedHashMap.put(yb4.d, getApplication());
        }
        linkedHashMap.put(pc3.a, this);
        linkedHashMap.put(pc3.b, this);
        Intent intent = getIntent();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null) {
            linkedHashMap.put(pc3.c, extras);
        }
        return of2Var;
    }

    public zb4 getDefaultViewModelProviderFactory() {
        return (zb4) this.defaultViewModelProviderFactory$delegate.getValue();
    }

    public me1 getFullyDrawnReporter() {
        return (me1) this.fullyDrawnReporter$delegate.getValue();
    }

    @ks0
    public Object getLastCustomNonConfigurationInstance() {
        p90 p90Var = (p90) getLastNonConfigurationInstance();
        if (p90Var != null) {
            return p90Var.a;
        }
        return null;
    }

    @Override // defpackage.t90, defpackage.p22
    public h22 getLifecycle() {
        return super.getLifecycle();
    }

    @Override // defpackage.dk2
    public ck2 getNavigationEventDispatcher() {
        return getOnBackPressedDispatcher().b().c;
    }

    @Override // defpackage.vo2
    public final uo2 getOnBackPressedDispatcher() {
        return (uo2) this.onBackPressedDispatcher$delegate.getValue();
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        return this.savedStateRegistryController.b;
    }

    @Override // defpackage.cc4
    public bc4 getViewModelStore() {
        if (getApplication() == null) {
            k21.n("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
            return null;
        }
        if (this._viewModelStore == null) {
            p90 p90Var = (p90) getLastNonConfigurationInstance();
            if (p90Var != null) {
                this._viewModelStore = p90Var.b;
            }
            if (this._viewModelStore == null) {
                this._viewModelStore = new bc4();
            }
        }
        bc4 bc4Var = this._viewModelStore;
        bc4Var.getClass();
        return bc4Var;
    }

    public void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        decorView5.getClass();
        decorView5.setTag(R.id.report_drawn, this);
        View decorView6 = getWindow().getDecorView();
        decorView6.getClass();
        decorView6.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.activityResultRegistry.a(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    @ks0
    public void onBackPressed() {
        ((iu0) this.onBackPressedInput$delegate.getValue()).a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        Iterator<xf0> it = this.onConfigurationChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // defpackage.t90, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.savedStateRegistryController.b(bundle);
        wg0 wg0Var = this.contextAwareHelper;
        wg0Var.getClass();
        wg0Var.b = this;
        Iterator it = wg0Var.a.iterator();
        while (it.hasNext()) {
            ((ap2) it.next()).a(this);
        }
        super.onCreate(bundle);
        int i = g63.o;
        e63.b(this);
        int i2 = this.contentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
        this.hasPictureInPictureSystemFeature = getPackageManager().hasSystemFeature("android.software.picture_in_picture");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        menu.getClass();
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        xb2 xb2Var = this.menuHostHelper;
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = xb2Var.b.iterator();
        while (it.hasNext()) {
            ((ad1) ((jc2) it.next())).a.j(menu, menuInflater);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        menuItem.getClass();
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.menuHostHelper.a(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator<xf0> it = this.onMultiWindowModeChangedListeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                it.next().accept(new ff2(z));
            }
        } catch (Throwable th) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        Iterator<xf0> it = this.onNewIntentListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        menu.getClass();
        Iterator it = this.menuHostHelper.b.iterator();
        while (it.hasNext()) {
            ((ad1) ((jc2) it.next())).a.p(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator<xf0> it = this.onPictureInPictureModeChangedListeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                it.next().accept(new yu2(z));
            }
        } catch (Throwable th) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureUiStateChanged(PictureInPictureUiState pictureInPictureUiState) {
        b21 b21Var;
        pictureInPictureUiState.getClass();
        super.onPictureInPictureUiStateChanged(pictureInPictureUiState);
        int i = Build.VERSION.SDK_INT;
        int i2 = 16;
        if (i >= 35) {
            pictureInPictureUiState.isStashed();
            pictureInPictureUiState.isTransitioningToPip();
            b21Var = new b21(i2);
        } else if (i >= 31) {
            pictureInPictureUiState.isStashed();
            b21Var = new b21(i2);
        } else {
            b21Var = new b21(i2);
        }
        Iterator<xf0> it = this.onPictureInPictureUiStateChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(b21Var);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        menu.getClass();
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator it = this.menuHostHelper.b.iterator();
        while (it.hasNext()) {
            ((ad1) ((jc2) it.next())).a.s(menu);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        if (this.activityResultRegistry.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @ks0
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        p90 p90Var;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        bc4 bc4Var = this._viewModelStore;
        if (bc4Var == null && (p90Var = (p90) getLastNonConfigurationInstance()) != null) {
            bc4Var = p90Var.b;
        }
        if (bc4Var == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        p90 p90Var2 = new p90();
        p90Var2.a = objOnRetainCustomNonConfigurationInstance;
        p90Var2.b = bc4Var;
        return p90Var2;
    }

    @Override // defpackage.t90, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        if (getLifecycle() instanceof r22) {
            h22 lifecycle = getLifecycle();
            lifecycle.getClass();
            ((r22) lifecycle).g(g22.p);
        }
        super.onSaveInstanceState(bundle);
        this.savedStateRegistryController.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator<xf0> it = this.onTrimMemoryListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator<Runnable> it = this.onUserLeaveHintListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public Context peekAvailableContext() {
        return this.contextAwareHelper.b;
    }

    public final <I, O> i6 registerForActivityResult(g6 g6Var, p6 p6Var, f6 f6Var) {
        g6Var.getClass();
        p6Var.getClass();
        f6Var.getClass();
        return p6Var.d("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, g6Var, f6Var);
    }

    @Override // defpackage.vb2
    public void removeMenuProvider(jc2 jc2Var) {
        jc2Var.getClass();
        this.menuHostHelper.b(jc2Var);
    }

    @Override // defpackage.yo2
    public final void removeOnConfigurationChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onConfigurationChangedListeners.remove(xf0Var);
    }

    public final void removeOnContextAvailableListener(ap2 ap2Var) {
        ap2Var.getClass();
        wg0 wg0Var = this.contextAwareHelper;
        wg0Var.getClass();
        wg0Var.a.remove(ap2Var);
    }

    @Override // defpackage.fp2
    public final void removeOnMultiWindowModeChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onMultiWindowModeChangedListeners.remove(xf0Var);
    }

    public final void removeOnNewIntentListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onNewIntentListeners.remove(xf0Var);
    }

    @Override // defpackage.gp2
    public final void removeOnPictureInPictureModeChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onPictureInPictureModeChangedListeners.remove(xf0Var);
    }

    public final void removeOnPictureInPictureUiStateChangedListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onPictureInPictureUiStateChangedListeners.remove(xf0Var);
    }

    @Override // defpackage.kp2
    public final void removeOnTrimMemoryListener(xf0 xf0Var) {
        xf0Var.getClass();
        this.onTrimMemoryListeners.remove(xf0Var);
    }

    public final void removeOnUserLeaveHintListener(Runnable runnable) {
        runnable.getClass();
        this.onUserLeaveHintListeners.remove(runnable);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (ix.B()) {
                Trace.beginSection(ix.Y("reportFullyDrawn() for ComponentActivity"));
            }
            super.reportFullyDrawn();
            me1 fullyDrawnReporter = getFullyDrawnReporter();
            synchronized (fullyDrawnReporter.a) {
                try {
                    fullyDrawnReporter.b = true;
                    ArrayList arrayList = fullyDrawnReporter.c;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((ne1) obj).a();
                    }
                    fullyDrawnReporter.c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initializeViewTreeOwners();
        q90 q90Var = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        ((r90) q90Var).a(decorView);
        super.setContentView(i);
    }

    public final void setPictureInPictureParams(zu2 zu2Var) {
        throw null;
    }

    @Override // android.app.Activity
    @ks0
    public void startActivityForResult(Intent intent, int i) {
        intent.getClass();
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @ks0
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @ks0
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        intent.getClass();
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @ks0
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        q90 q90Var = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        ((r90) q90Var).a(decorView);
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        q90 q90Var = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        ((r90) q90Var).a(decorView);
        super.setContentView(view, layoutParams);
    }

    public final <I, O> i6 registerForActivityResult(g6 g6Var, f6 f6Var) {
        g6Var.getClass();
        f6Var.getClass();
        return registerForActivityResult(g6Var, this.activityResultRegistry, f6Var);
    }

    @Override // android.app.Activity
    @ks0
    public void onMultiWindowModeChanged(boolean z) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<xf0> it = this.onMultiWindowModeChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(new ff2(z));
        }
    }

    @Override // android.app.Activity
    @ks0
    public void onPictureInPictureModeChanged(boolean z) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<xf0> it = this.onPictureInPictureModeChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            it.next().accept(new yu2(z));
        }
    }

    @Override // defpackage.vb2
    public void addMenuProvider(jc2 jc2Var) {
        jc2Var.getClass();
        xb2 xb2Var = this.menuHostHelper;
        xb2Var.b.add(jc2Var);
        xb2Var.a.run();
    }

    public void addMenuProvider(jc2 jc2Var, p22 p22Var, g22 g22Var) {
        jc2Var.getClass();
        p22Var.getClass();
        g22Var.getClass();
        xb2 xb2Var = this.menuHostHelper;
        xb2Var.getClass();
        h22 lifecycle = p22Var.getLifecycle();
        HashMap map = xb2Var.c;
        wb2 wb2Var = (wb2) map.remove(jc2Var);
        if (wb2Var != null) {
            wb2Var.a.b(wb2Var.b);
            wb2Var.b = null;
        }
        map.put(jc2Var, new wb2(lifecycle, new l22(xb2Var, g22Var, jc2Var, 1)));
    }
}
