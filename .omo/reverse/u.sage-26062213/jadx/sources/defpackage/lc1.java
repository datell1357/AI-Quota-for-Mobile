package defpackage;

import android.animation.Animator;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lc1 implements ComponentCallbacks, View.OnCreateContextMenuListener, p22, cc4, ej1, yc3 {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    ic1 mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    zb4 mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    hd1 mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    vc1 mHost;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    r22 mLifecycleRegistry;
    lc1 mParentFragment;
    boolean mPerformedCreateView;
    Handler mPostponedHandler;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    wc3 mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    lc1 mTarget;
    int mTargetRequestCode;
    View mView;
    ce1 mViewLifecycleOwner;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    hd1 mChildFragmentManager = new id1();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    Runnable mPostponedDurationRunnable = new ec1(this, 0);
    g22 mMaxState = g22.r;
    wf2 mViewLifecycleOwnerLiveData = new wf2();
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final ArrayList<jc1> mOnPreAttachedListeners = new ArrayList<>();
    private final jc1 mSavedStateAttachListener = new fc1(this);

    public lc1() {
        d();
    }

    @Deprecated
    public static lc1 instantiate(Context context, String str, Bundle bundle) {
        try {
            lc1 lc1Var = (lc1) bd1.b(context.getClassLoader(), str).getConstructor(null).newInstance(null);
            if (bundle == null) {
                return lc1Var;
            }
            bundle.setClassLoader(lc1Var.getClass().getClassLoader());
            lc1Var.setArguments(bundle);
            return lc1Var;
        } catch (IllegalAccessException e) {
            throw new v00(3, di0.v("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new v00(3, di0.v("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new v00(3, di0.v("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new v00(3, di0.v("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }

    public final ic1 a() {
        if (this.mAnimationInfo == null) {
            ic1 ic1Var = new ic1();
            ic1Var.i = null;
            Object obj = USE_DEFAULT_TRANSITION;
            ic1Var.j = obj;
            ic1Var.k = null;
            ic1Var.l = obj;
            ic1Var.m = null;
            ic1Var.n = obj;
            ic1Var.q = 1.0f;
            ic1Var.r = null;
            this.mAnimationInfo = ic1Var;
        }
        return this.mAnimationInfo;
    }

    public final int b() {
        g22 g22Var = this.mMaxState;
        return (g22Var == g22.o || this.mParentFragment == null) ? g22Var.ordinal() : Math.min(g22Var.ordinal(), this.mParentFragment.b());
    }

    public final lc1 c(boolean z) {
        String str;
        if (z) {
            rd1 rd1Var = sd1.a;
            sd1.b(new ch1(this, "Attempting to get target fragment from fragment " + this));
            sd1.a(this).getClass();
        }
        lc1 lc1Var = this.mTarget;
        if (lc1Var != null) {
            return lc1Var;
        }
        hd1 hd1Var = this.mFragmentManager;
        if (hd1Var == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return hd1Var.c.s(str);
    }

    public void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        hd1 hd1Var;
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var != null) {
            ic1Var.s = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (hd1Var = this.mFragmentManager) == null) {
            return;
        }
        pq0 pq0VarH = pq0.h(viewGroup, hd1Var.E());
        pq0VarH.j();
        if (z) {
            this.mHost.p.post(new o9(7, pq0VarH));
        } else {
            pq0VarH.d();
        }
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
            this.mPostponedHandler = null;
        }
    }

    public sc1 createFragmentContainer() {
        return new gc1(this);
    }

    public final void d() {
        this.mLifecycleRegistry = new r22(this, true);
        this.mSavedStateRegistryController = new wc3(new xc3(this, new vc3(0, this)));
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        jc1 jc1Var = this.mSavedStateAttachListener;
        if (this.mState >= 0) {
            jc1Var.a();
        } else {
            this.mOnPreAttachedListeners.add(jc1Var);
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        lc1 lc1VarC = c(false);
        if (lc1VarC != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(lc1VarC);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            j52.a(this).b(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.u(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public final dc1 e(g6 g6Var, wu4 wu4Var, f6 f6Var) {
        if (this.mState > 1) {
            k21.n(di0.t("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
            return null;
        }
        AtomicReference atomicReference = new AtomicReference();
        hc1 hc1Var = new hc1(this, wu4Var, atomicReference, g6Var, f6Var);
        if (this.mState >= 0) {
            hc1Var.a();
        } else {
            this.mOnPreAttachedListeners.add(hc1Var);
        }
        return new dc1(atomicReference);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public lc1 findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.c.u(str);
    }

    public String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final qc1 getActivity() {
        vc1 vc1Var = this.mHost;
        if (vc1Var == null) {
            return null;
        }
        return vc1Var.n;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null || (bool = ic1Var.p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null || (bool = ic1Var.o) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        ic1Var.getClass();
        return null;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final hd1 getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        k21.n(di0.t("Fragment ", this, " has not been attached yet."));
        return null;
    }

    public Context getContext() {
        vc1 vc1Var = this.mHost;
        if (vc1Var == null) {
            return null;
        }
        return vc1Var.o;
    }

    @Override // defpackage.ej1
    public vk0 getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && hd1.G(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        of2 of2Var = new of2(0);
        LinkedHashMap linkedHashMap = of2Var.a;
        if (application != null) {
            linkedHashMap.put(yb4.d, application);
        }
        linkedHashMap.put(pc3.a, this);
        linkedHashMap.put(pc3.b, this);
        if (getArguments() != null) {
            linkedHashMap.put(pc3.c, getArguments());
        }
        return of2Var;
    }

    @Override // defpackage.ej1
    public zb4 getDefaultViewModelProviderFactory() {
        Application application = null;
        if (this.mFragmentManager == null) {
            k21.n("Can't access ViewModels from detached fragment");
            return null;
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && hd1.G(3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.mDefaultFactory = new zc3(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public int getEnterAnim() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return 0;
        }
        return ic1Var.b;
    }

    public Object getEnterTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        return ic1Var.i;
    }

    public sl3 getEnterTransitionCallback() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        ic1Var.getClass();
        return null;
    }

    public int getExitAnim() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return 0;
        }
        return ic1Var.c;
    }

    public Object getExitTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        return ic1Var.k;
    }

    public sl3 getExitTransitionCallback() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        ic1Var.getClass();
        return null;
    }

    public View getFocusedView() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        return ic1Var.r;
    }

    @Deprecated
    public final hd1 getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        vc1 vc1Var = this.mHost;
        if (vc1Var == null) {
            return null;
        }
        return ((pc1) vc1Var).r;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        vc1 vc1Var = this.mHost;
        if (vc1Var == null) {
            k21.n("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
            return null;
        }
        SignInHubActivity signInHubActivity = ((pc1) vc1Var).r;
        LayoutInflater layoutInflaterCloneInContext = signInHubActivity.getLayoutInflater().cloneInContext(signInHubActivity);
        layoutInflaterCloneInContext.setFactory2(this.mChildFragmentManager.f);
        return layoutInflaterCloneInContext;
    }

    @Override // defpackage.p22
    public h22 getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public j52 getLoaderManager() {
        return j52.a(this);
    }

    public int getNextTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return 0;
        }
        return ic1Var.f;
    }

    public final lc1 getParentFragment() {
        return this.mParentFragment;
    }

    public final hd1 getParentFragmentManager() {
        hd1 hd1Var = this.mFragmentManager;
        if (hd1Var != null) {
            return hd1Var;
        }
        k21.n(di0.t("Fragment ", this, " not associated with a fragment manager."));
        return null;
    }

    public boolean getPopDirection() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return false;
        }
        return ic1Var.a;
    }

    public int getPopEnterAnim() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return 0;
        }
        return ic1Var.d;
    }

    public int getPopExitAnim() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return 0;
        }
        return ic1Var.e;
    }

    public float getPostOnViewCreatedAlpha() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return 1.0f;
        }
        return ic1Var.q;
    }

    public Object getReenterTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        Object obj = ic1Var.l;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        rd1 rd1Var = sd1.a;
        sd1.b(new bh1(this, "Attempting to get retain instance for fragment " + this));
        sd1.a(this).getClass();
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        Object obj = ic1Var.j;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // defpackage.yc3
    public final uc3 getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b;
    }

    public Object getSharedElementEnterTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        return ic1Var.m;
    }

    public Object getSharedElementReturnTransition() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return null;
        }
        Object obj = ic1Var.n;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        ic1 ic1Var = this.mAnimationInfo;
        return (ic1Var == null || (arrayList = ic1Var.g) == null) ? new ArrayList<>() : arrayList;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        ic1 ic1Var = this.mAnimationInfo;
        return (ic1Var == null || (arrayList = ic1Var.h) == null) ? new ArrayList<>() : arrayList;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final lc1 getTargetFragment() {
        return c(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        rd1 rd1Var = sd1.a;
        sd1.b(new ch1(this, "Attempting to get target request code from fragment " + this));
        sd1.a(this).getClass();
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public p22 getViewLifecycleOwner() {
        ce1 ce1Var = this.mViewLifecycleOwner;
        if (ce1Var != null) {
            return ce1Var;
        }
        k21.n("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
        return null;
    }

    public c52 getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // defpackage.cc4
    public bc4 getViewModelStore() {
        if (this.mFragmentManager == null) {
            k21.n("Can't access ViewModels from detached fragment");
            return null;
        }
        if (b() == 1) {
            k21.n("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            return null;
        }
        HashMap map = this.mFragmentManager.L.d;
        bc4 bc4Var = (bc4) map.get(this.mWho);
        if (bc4Var != null) {
            return bc4Var;
        }
        bc4 bc4Var2 = new bc4();
        map.put(this.mWho, bc4Var2);
        return bc4Var2;
    }

    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        d();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new id1();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        if (this.mHidden) {
            return true;
        }
        hd1 hd1Var = this.mFragmentManager;
        if (hd1Var != null) {
            lc1 lc1Var = this.mParentFragment;
            hd1Var.getClass();
            if (lc1Var == null ? false : lc1Var.isHidden()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (!this.mMenuVisible) {
            return false;
        }
        if (this.mFragmentManager != null) {
            lc1 lc1Var = this.mParentFragment;
            if (!(lc1Var == null ? true : lc1Var.isMenuVisible())) {
                return false;
            }
        }
        return true;
    }

    public boolean isPostponed() {
        ic1 ic1Var = this.mAnimationInfo;
        if (ic1Var == null) {
            return false;
        }
        return ic1Var.s;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        hd1 hd1Var = this.mFragmentManager;
        if (hd1Var == null) {
            return false;
        }
        return hd1Var.E || hd1Var.F;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.L();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        vc1 vc1Var = this.mHost;
        SignInHubActivity signInHubActivity = vc1Var == null ? null : vc1Var.n;
        if (signInHubActivity != null) {
            this.mCalled = false;
            onAttach((Activity) signInHubActivity);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        hd1 hd1Var = this.mChildFragmentManager;
        if (hd1Var.s >= 1) {
            return;
        }
        hd1Var.E = false;
        hd1Var.F = false;
        hd1Var.L.g = false;
        hd1Var.t(1);
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.mContentLayoutId;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        vc1 vc1Var = this.mHost;
        SignInHubActivity signInHubActivity = vc1Var == null ? null : vc1Var.n;
        if (signInHubActivity != null) {
            this.mCalled = false;
            onInflate((Activity) signInHubActivity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onResume() {
        this.mCalled = true;
    }

    public abstract void onSaveInstanceState(Bundle bundle);

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.L();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        if (hd1.G(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
        hd1 hd1Var = this.mChildFragmentManager;
        hd1Var.E = false;
        hd1Var.F = false;
        hd1Var.L.g = false;
        hd1Var.t(4);
    }

    public void performAttach() {
        ArrayList<jc1> arrayList = this.mOnPreAttachedListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            jc1 jc1Var = arrayList.get(i);
            i++;
            jc1Var.a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach((Context) this.mHost.o);
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator it = this.mFragmentManager.m.iterator();
        while (it.hasNext()) {
            ((md1) it.next()).a(this);
        }
        hd1 hd1Var = this.mChildFragmentManager;
        hd1Var.E = false;
        hd1Var.F = false;
        hd1Var.L.g = false;
        hd1Var.t(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.i(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.L();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.a(new k33(1, this));
        this.mSavedStateRegistryController.b(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.e(f22.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        return this.mChildFragmentManager.j(menu, menuInflater) | z;
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.L();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new ce1(this, getViewModelStore());
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        ce1 ce1Var = this.mViewLifecycleOwner;
        if (viewOnCreateView == null) {
            if (ce1Var.q == null) {
                this.mViewLifecycleOwner = null;
                return;
            } else {
                k21.n("Called getViewLifecycleOwner() but onCreateView() returned null");
                return;
            }
        }
        ce1Var.b();
        View view = this.mView;
        ce1 ce1Var2 = this.mViewLifecycleOwner;
        view.getClass();
        view.setTag(R.id.view_tree_lifecycle_owner, ce1Var2);
        View view2 = this.mView;
        ce1 ce1Var3 = this.mViewLifecycleOwner;
        view2.getClass();
        view2.setTag(R.id.view_tree_view_model_store_owner, ce1Var3);
        View view3 = this.mView;
        ce1 ce1Var4 = this.mViewLifecycleOwner;
        view3.getClass();
        view3.setTag(R.id.view_tree_saved_state_registry_owner, ce1Var4);
        this.mViewLifecycleOwnerLiveData.h(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.k();
        this.mLifecycleRegistry.e(f22.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.t(1);
        if (this.mView != null) {
            ce1 ce1Var = this.mViewLifecycleOwner;
            ce1Var.b();
            if (ce1Var.q.d.compareTo(g22.p) >= 0) {
                this.mViewLifecycleOwner.a(f22.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        mq3 mq3Var = j52.a(this).b.b;
        int iF = mq3Var.f();
        for (int i = 0; i < iF; i++) {
            ((k52) mq3Var.g(i)).j();
        }
        this.mPerformedCreateView = false;
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onDetach()"));
        }
        hd1 hd1Var = this.mChildFragmentManager;
        if (hd1Var.G) {
            return;
        }
        hd1Var.k();
        this.mChildFragmentManager = new id1();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.o(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.p(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.t(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(f22.ON_PAUSE);
        }
        this.mLifecycleRegistry.e(f22.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        return this.mChildFragmentManager.s(menu) | z;
    }

    public void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean zJ = hd1.J(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zJ) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zJ);
            onPrimaryNavigationFragmentChanged(zJ);
            hd1 hd1Var = this.mChildFragmentManager;
            hd1Var.a0();
            hd1Var.q(hd1Var.w);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.L();
        this.mChildFragmentManager.x(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onResume()"));
        }
        r22 r22Var = this.mLifecycleRegistry;
        f22 f22Var = f22.ON_RESUME;
        r22Var.e(f22Var);
        if (this.mView != null) {
            this.mViewLifecycleOwner.q.e(f22Var);
        }
        hd1 hd1Var = this.mChildFragmentManager;
        hd1Var.E = false;
        hd1Var.F = false;
        hd1Var.L.g = false;
        hd1Var.t(7);
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.c(bundle);
        bundle.putParcelable("android:support:fragments", this.mChildFragmentManager.S());
    }

    public void performStart() {
        this.mChildFragmentManager.L();
        this.mChildFragmentManager.x(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onStart()"));
        }
        r22 r22Var = this.mLifecycleRegistry;
        f22 f22Var = f22.ON_START;
        r22Var.e(f22Var);
        if (this.mView != null) {
            this.mViewLifecycleOwner.q.e(f22Var);
        }
        hd1 hd1Var = this.mChildFragmentManager;
        hd1Var.E = false;
        hd1Var.F = false;
        hd1Var.L.g = false;
        hd1Var.t(5);
    }

    public void performStop() {
        hd1 hd1Var = this.mChildFragmentManager;
        hd1Var.F = true;
        hd1Var.L.g = true;
        hd1Var.t(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(f22.ON_STOP);
        }
        this.mLifecycleRegistry.e(f22.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.t(2);
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        a().s = true;
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
        }
        hd1 hd1Var = this.mFragmentManager;
        if (hd1Var != null) {
            this.mPostponedHandler = hd1Var.t.p;
        } else {
            this.mPostponedHandler = new Handler(Looper.getMainLooper());
        }
        this.mPostponedHandler.removeCallbacks(this.mPostponedDurationRunnable);
        this.mPostponedHandler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final <I, O> i6 registerForActivityResult(g6 g6Var, p6 p6Var, f6 f6Var) {
        return e(g6Var, new wu4(29, p6Var), f6Var);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost == null) {
            k21.n(di0.t("Fragment ", this, " not attached to Activity"));
            return;
        }
        hd1 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.B == null) {
            parentFragmentManager.t.getClass();
            return;
        }
        parentFragmentManager.C.addLast(new ed1(this.mWho, i));
        parentFragmentManager.B.a(strArr);
    }

    public final qc1 requireActivity() {
        qc1 activity = getActivity();
        if (activity != null) {
            return activity;
        }
        k21.n(di0.t("Fragment ", this, " not attached to an activity."));
        return null;
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        k21.n(di0.t("Fragment ", this, " does not have any arguments."));
        return null;
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        k21.n(di0.t("Fragment ", this, " not attached to a context."));
        return null;
    }

    @Deprecated
    public final hd1 requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        k21.n(di0.t("Fragment ", this, " not attached to a host."));
        return null;
    }

    public final lc1 requireParentFragment() {
        lc1 parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            k21.n(di0.t("Fragment ", this, " is not attached to any Fragment or host"));
            return null;
        }
        StringBuilder sb = new StringBuilder("Fragment ");
        sb.append(this);
        Context context = getContext();
        sb.append(" is not a child Fragment, it is directly attached to ");
        sb.append(context);
        throw new IllegalStateException(sb.toString());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        k21.n(di0.t("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
        return null;
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.R(parcelable);
        hd1 hd1Var = this.mChildFragmentManager;
        hd1Var.E = false;
        hd1Var.F = false;
        hd1Var.L.g = false;
        hd1Var.t(1);
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            ce1 ce1Var = this.mViewLifecycleOwner;
            ce1Var.r.b(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new zt3(di0.t("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(f22.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        a().p = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        a().o = Boolean.valueOf(z);
    }

    public void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        a().b = i;
        a().c = i2;
        a().d = i3;
        a().e = i4;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager == null || !isStateSaved()) {
            this.mArguments = bundle;
        } else {
            k21.n("Fragment already added and state has been saved");
        }
    }

    public void setEnterSharedElementCallback(sl3 sl3Var) {
        a().getClass();
    }

    public void setEnterTransition(Object obj) {
        a().i = obj;
    }

    public void setExitSharedElementCallback(sl3 sl3Var) {
        a().getClass();
    }

    public void setExitTransition(Object obj) {
        a().k = obj;
    }

    public void setFocusedView(View view) {
        a().r = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            ((pc1) this.mHost).r.invalidateMenu();
        }
    }

    public void setInitialSavedState(kc1 kc1Var) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            k21.n("Fragment already added");
            return;
        }
        if (kc1Var == null || (bundle = kc1Var.n) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                ((pc1) this.mHost).r.invalidateMenu();
            }
        }
    }

    public void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        a();
        this.mAnimationInfo.f = i;
    }

    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        a().a = z;
    }

    public void setPostOnViewCreatedAlpha(float f) {
        a().q = f;
    }

    public void setReenterTransition(Object obj) {
        a().l = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        rd1 rd1Var = sd1.a;
        sd1.b(new bh1(this, "Attempting to set retain instance for fragment " + this));
        sd1.a(this).getClass();
        this.mRetainInstance = z;
        hd1 hd1Var = this.mFragmentManager;
        if (hd1Var == null) {
            this.mRetainInstanceChangedWhileDetached = true;
            return;
        }
        ld1 ld1Var = hd1Var.L;
        if (z) {
            ld1Var.c(this);
        } else {
            ld1Var.f(this);
        }
    }

    public void setReturnTransition(Object obj) {
        a().j = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        a().m = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        a();
        ic1 ic1Var = this.mAnimationInfo;
        ic1Var.g = arrayList;
        ic1Var.h = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        a().n = obj;
    }

    @Deprecated
    public void setTargetFragment(lc1 lc1Var, int i) {
        if (lc1Var != null) {
            rd1 rd1Var = sd1.a;
            sd1.b(new ch1(this, "Attempting to set target fragment " + lc1Var + " with request code " + i + " for fragment " + this));
            sd1.a(this).getClass();
        }
        hd1 hd1Var = this.mFragmentManager;
        hd1 hd1Var2 = lc1Var != null ? lc1Var.mFragmentManager : null;
        if (hd1Var != null && hd1Var2 != null && hd1Var != hd1Var2) {
            k21.f(di0.t("Fragment ", lc1Var, " must share the same FragmentManager to be set as a target fragment"));
            return;
        }
        for (lc1 lc1VarC = lc1Var; lc1VarC != null; lc1VarC = lc1VarC.c(false)) {
            if (lc1VarC.equals(this)) {
                p61.o("Setting ", lc1Var, " as the target of ", this, " would create a target cycle");
                return;
            }
        }
        if (lc1Var == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || lc1Var.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = lc1Var;
        } else {
            this.mTargetWho = lc1Var.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        rd1 rd1Var = sd1.a;
        sd1.b(new nd1(this, "Attempting to set user visible hint to " + z + " for fragment " + this));
        sd1.a(this).getClass();
        boolean z2 = false;
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            hd1 hd1Var = this.mFragmentManager;
            pd1 pd1VarF = hd1Var.f(this);
            lc1 lc1Var = pd1VarF.c;
            if (lc1Var.mDeferStart) {
                if (hd1Var.b) {
                    hd1Var.H = true;
                } else {
                    lc1Var.mDeferStart = false;
                    pd1VarF.j();
                }
            }
        }
        this.mUserVisibleHint = z;
        if (this.mState < 5 && !z) {
            z2 = true;
        }
        this.mDeferStart = z2;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        vc1 vc1Var = this.mHost;
        if (vc1Var == null) {
            return false;
        }
        SignInHubActivity signInHubActivity = ((pc1) vc1Var).r;
        int i = Build.VERSION.SDK_INT;
        if (i < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        if (i >= 32) {
            return signInHubActivity.shouldShowRequestPermissionRationale(str);
        }
        if (i != 31) {
            return signInHubActivity.shouldShowRequestPermissionRationale(str);
        }
        try {
            return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(signInHubActivity.getApplication().getPackageManager(), str)).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return signInHubActivity.shouldShowRequestPermissionRationale(str);
        }
    }

    public void startActivity(Intent intent, Bundle bundle) {
        vc1 vc1Var = this.mHost;
        if (vc1Var != null) {
            vc1Var.o.startActivity(intent, bundle);
        } else {
            k21.n(di0.t("Fragment ", this, " not attached to Activity"));
        }
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (this.mHost == null) {
            k21.n(di0.t("Fragment ", this, " not attached to Activity"));
            return;
        }
        hd1 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.z != null) {
            parentFragmentManager.C.addLast(new ed1(this.mWho, i));
            if (intent != null && bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            parentFragmentManager.z.a(intent);
            return;
        }
        vc1 vc1Var = parentFragmentManager.t;
        if (i == -1) {
            vc1Var.o.startActivity(intent, bundle);
        } else {
            vc1Var.getClass();
            k21.n("Starting activity with a requestCode requires a FragmentActivity host");
        }
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (this.mHost == null) {
            k21.n(di0.t("Fragment ", this, " not attached to Activity"));
            return;
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        hd1 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.A == null) {
            vc1 vc1Var = parentFragmentManager.t;
            if (i == -1) {
                vc1Var.n.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
                return;
            } else {
                vc1Var.getClass();
                k21.n("Starting intent sender with a requestCode requires a FragmentActivity host");
                return;
            }
        }
        if (bundle != null) {
            if (intent == null) {
                intent = new Intent();
                intent.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (hd1.G(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent + " for fragment " + this);
            }
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        intentSender.getClass();
        us1 us1Var = new us1(intentSender, intent, i2, i3);
        parentFragmentManager.C.addLast(new ed1(this.mWho, i));
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Fragment " + this + "is launching an IntentSender for result ");
        }
        parentFragmentManager.A.a(us1Var);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !a().s) {
            return;
        }
        if (this.mHost == null) {
            a().s = false;
        } else if (Looper.myLooper() != this.mHost.p.getLooper()) {
            this.mHost.p.postAtFrontOfQueue(new ec1(this, 1));
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final <I, O> i6 registerForActivityResult(g6 g6Var, f6 f6Var) {
        return e(g6Var, new wu4(1, this), f6Var);
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    @Deprecated
    public void onAttachFragment(lc1 lc1Var) {
    }

    public void onHiddenChanged(boolean z) {
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void postponeEnterTransition() {
        a().s = true;
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public static lc1 instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }
}
