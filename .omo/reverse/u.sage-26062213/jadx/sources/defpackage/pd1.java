package defpackage;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pd1 {
    public final gw4 a;
    public final qd1 b;
    public final lc1 c;
    public boolean d = false;
    public int e = -1;

    public pd1(gw4 gw4Var, qd1 qd1Var, ClassLoader classLoader, bd1 bd1Var, od1 od1Var) {
        this.a = gw4Var;
        this.b = qd1Var;
        lc1 lc1VarInstantiate = lc1.instantiate(bd1Var.a.t.o, od1Var.n, null);
        Bundle bundle = od1Var.w;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        lc1VarInstantiate.setArguments(bundle);
        lc1VarInstantiate.mWho = od1Var.o;
        lc1VarInstantiate.mFromLayout = od1Var.p;
        lc1VarInstantiate.mRestored = true;
        lc1VarInstantiate.mFragmentId = od1Var.q;
        lc1VarInstantiate.mContainerId = od1Var.r;
        lc1VarInstantiate.mTag = od1Var.s;
        lc1VarInstantiate.mRetainInstance = od1Var.t;
        lc1VarInstantiate.mRemoving = od1Var.f241u;
        lc1VarInstantiate.mDetached = od1Var.v;
        lc1VarInstantiate.mHidden = od1Var.x;
        lc1VarInstantiate.mMaxState = g22.values()[od1Var.y];
        Bundle bundle2 = od1Var.z;
        if (bundle2 != null) {
            lc1VarInstantiate.mSavedFragmentState = bundle2;
        } else {
            lc1VarInstantiate.mSavedFragmentState = new Bundle();
        }
        this.c = lc1VarInstantiate;
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + lc1VarInstantiate);
        }
    }

    public final void a() {
        View view;
        View view2;
        ArrayList arrayList = (ArrayList) this.b.o;
        lc1 lc1Var = this.c;
        ViewGroup viewGroup = lc1Var.mContainer;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = arrayList.indexOf(lc1Var);
            int i = iIndexOf - 1;
            while (true) {
                if (i < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= arrayList.size()) {
                            break;
                        }
                        lc1 lc1Var2 = (lc1) arrayList.get(iIndexOf);
                        if (lc1Var2.mContainer == viewGroup && (view = lc1Var2.mView) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    lc1 lc1Var3 = (lc1) arrayList.get(i);
                    if (lc1Var3.mContainer == viewGroup && (view2 = lc1Var3.mView) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i--;
                }
            }
        }
        lc1Var.mContainer.addView(lc1Var.mView, iIndexOfChild);
    }

    public final void b() {
        boolean zG = hd1.G(3);
        lc1 lc1Var = this.c;
        if (zG) {
            Log.d("FragmentManager", "moveto ATTACHED: " + lc1Var);
        }
        lc1 lc1Var2 = lc1Var.mTarget;
        pd1 pd1Var = null;
        qd1 qd1Var = this.b;
        if (lc1Var2 != null) {
            pd1 pd1Var2 = (pd1) ((HashMap) qd1Var.p).get(lc1Var2.mWho);
            if (pd1Var2 == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(lc1Var);
                lc1 lc1Var3 = lc1Var.mTarget;
                sb.append(" declared target fragment ");
                sb.append(lc1Var3);
                sb.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sb.toString());
            }
            lc1Var.mTargetWho = lc1Var.mTarget.mWho;
            lc1Var.mTarget = null;
            pd1Var = pd1Var2;
        } else {
            String str = lc1Var.mTargetWho;
            if (str != null && (pd1Var = (pd1) ((HashMap) qd1Var.p).get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(lc1Var);
                sb2.append(" declared target fragment ");
                k21.n(xw1.s(sb2, lc1Var.mTargetWho, " that does not belong to this FragmentManager!"));
                return;
            }
        }
        if (pd1Var != null) {
            pd1Var.j();
        }
        hd1 hd1Var = lc1Var.mFragmentManager;
        lc1Var.mHost = hd1Var.t;
        lc1Var.mParentFragment = hd1Var.v;
        gw4 gw4Var = this.a;
        gw4Var.q(false);
        lc1Var.performAttach();
        gw4Var.l(false);
    }

    public final int c() {
        pq3 pq3Var;
        lc1 lc1Var = this.c;
        if (lc1Var.mFragmentManager == null) {
            return lc1Var.mState;
        }
        int iMin = this.e;
        int iOrdinal = lc1Var.mMaxState.ordinal();
        int i = 0;
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (lc1Var.mFromLayout) {
            boolean z = lc1Var.mInLayout;
            int i2 = this.e;
            if (z) {
                iMin = Math.max(i2, 2);
                View view = lc1Var.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = i2 < 4 ? Math.min(iMin, lc1Var.mState) : Math.min(iMin, 1);
            }
        }
        if (!lc1Var.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = lc1Var.mContainer;
        if (viewGroup != null) {
            pq0 pq0VarI = pq0.i(viewGroup, lc1Var.getParentFragmentManager());
            pq3 pq3VarF = pq0VarI.f(lc1Var);
            int i3 = pq3VarF != null ? pq3VarF.b : 0;
            ArrayList arrayList = pq0VarI.c;
            int size = arrayList.size();
            while (true) {
                if (i >= size) {
                    pq3Var = null;
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                pq3Var = (pq3) obj;
                if (pq3Var.c.equals(lc1Var) && !pq3Var.f) {
                    break;
                }
            }
            i = (pq3Var == null || !(i3 == 0 || i3 == 1)) ? i3 : pq3Var.b;
        }
        if (i == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i == 3) {
            iMin = Math.max(iMin, 3);
        } else if (lc1Var.mRemoving) {
            iMin = lc1Var.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (lc1Var.mDeferStart && lc1Var.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + lc1Var);
        }
        return iMin;
    }

    public final void d() {
        boolean zG = hd1.G(3);
        lc1 lc1Var = this.c;
        if (zG) {
            Log.d("FragmentManager", "moveto CREATED: " + lc1Var);
        }
        boolean z = lc1Var.mIsCreated;
        Bundle bundle = lc1Var.mSavedFragmentState;
        if (z) {
            lc1Var.restoreChildFragmentState(bundle);
            lc1Var.mState = 1;
        } else {
            gw4 gw4Var = this.a;
            gw4Var.r(false);
            lc1Var.performCreate(lc1Var.mSavedFragmentState);
            gw4Var.m(false);
        }
    }

    public final void e() {
        String resourceName;
        lc1 lc1Var = this.c;
        if (lc1Var.mFromLayout) {
            return;
        }
        if (hd1.G(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + lc1Var);
        }
        LayoutInflater layoutInflaterPerformGetLayoutInflater = lc1Var.performGetLayoutInflater(lc1Var.mSavedFragmentState);
        ViewGroup viewGroup = lc1Var.mContainer;
        if (viewGroup == null) {
            int i = lc1Var.mContainerId;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    k21.f(di0.t("Cannot create fragment ", lc1Var, " for a container view with no id"));
                    return;
                }
                viewGroup = (ViewGroup) lc1Var.mFragmentManager.f126u.b(i);
                if (viewGroup == null) {
                    if (!lc1Var.mRestored) {
                        try {
                            resourceName = lc1Var.getResources().getResourceName(lc1Var.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(lc1Var.mContainerId) + " (" + resourceName + ") for fragment " + lc1Var);
                    }
                } else if (!(viewGroup instanceof tc1)) {
                    rd1 rd1Var = sd1.a;
                    sd1.b(new nd1(lc1Var, "Attempting to add fragment " + lc1Var + " to container " + viewGroup + " which is not a FragmentContainerView"));
                    sd1.a(lc1Var).getClass();
                }
            }
        }
        lc1Var.mContainer = viewGroup;
        lc1Var.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, lc1Var.mSavedFragmentState);
        View view = lc1Var.mView;
        int i2 = 2;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            lc1Var.mView.setTag(R.id.fragment_container_view_tag, lc1Var);
            if (viewGroup != null) {
                a();
            }
            if (lc1Var.mHidden) {
                lc1Var.mView.setVisibility(8);
            }
            View view2 = lc1Var.mView;
            Field field = lb4.a;
            boolean zIsAttachedToWindow = view2.isAttachedToWindow();
            View view3 = lc1Var.mView;
            if (zIsAttachedToWindow) {
                view3.requestApplyInsets();
            } else {
                view3.addOnAttachStateChangeListener(new eb(i2, view3));
            }
            lc1Var.performViewCreated();
            this.a.w(false);
            int visibility = lc1Var.mView.getVisibility();
            lc1Var.setPostOnViewCreatedAlpha(lc1Var.mView.getAlpha());
            if (lc1Var.mContainer != null && visibility == 0) {
                View viewFindFocus = lc1Var.mView.findFocus();
                if (viewFindFocus != null) {
                    lc1Var.setFocusedView(viewFindFocus);
                    if (hd1.G(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + lc1Var);
                    }
                }
                lc1Var.mView.setAlpha(0.0f);
            }
        }
        lc1Var.mState = 2;
    }

    public final void f() {
        lc1 lc1VarS;
        boolean zG = hd1.G(3);
        lc1 lc1Var = this.c;
        if (zG) {
            Log.d("FragmentManager", "movefrom CREATED: " + lc1Var);
        }
        int i = 0;
        boolean zIsChangingConfigurations = true;
        boolean z = lc1Var.mRemoving && !lc1Var.isInBackStack();
        qd1 qd1Var = this.b;
        if (z && !lc1Var.mBeingSaved) {
        }
        if (!z) {
            ld1 ld1Var = (ld1) qd1Var.r;
            if (!((ld1Var.b.containsKey(lc1Var.mWho) && ld1Var.e) ? ld1Var.f : true)) {
                String str = lc1Var.mTargetWho;
                if (str != null && (lc1VarS = qd1Var.s(str)) != null && lc1VarS.mRetainInstance) {
                    lc1Var.mTarget = lc1VarS;
                }
                lc1Var.mState = 0;
                return;
            }
        }
        vc1 vc1Var = lc1Var.mHost;
        if (vc1Var instanceof cc4) {
            zIsChangingConfigurations = ((ld1) qd1Var.r).f;
        } else {
            SignInHubActivity signInHubActivity = vc1Var.o;
            if (signInHubActivity != null) {
                zIsChangingConfigurations = true ^ signInHubActivity.isChangingConfigurations();
            }
        }
        if ((z && !lc1Var.mBeingSaved) || zIsChangingConfigurations) {
            ((ld1) qd1Var.r).d(lc1Var);
        }
        lc1Var.performDestroy();
        this.a.n(false);
        ArrayList arrayListV = qd1Var.v();
        int size = arrayListV.size();
        while (i < size) {
            Object obj = arrayListV.get(i);
            i++;
            pd1 pd1Var = (pd1) obj;
            if (pd1Var != null) {
                lc1 lc1Var2 = pd1Var.c;
                if (lc1Var.mWho.equals(lc1Var2.mTargetWho)) {
                    lc1Var2.mTarget = lc1Var;
                    lc1Var2.mTargetWho = null;
                }
            }
        }
        String str2 = lc1Var.mTargetWho;
        if (str2 != null) {
            lc1Var.mTarget = qd1Var.s(str2);
        }
        qd1Var.D(this);
    }

    public final void g() {
        View view;
        boolean zG = hd1.G(3);
        lc1 lc1Var = this.c;
        if (zG) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + lc1Var);
        }
        ViewGroup viewGroup = lc1Var.mContainer;
        if (viewGroup != null && (view = lc1Var.mView) != null) {
            viewGroup.removeView(view);
        }
        lc1Var.performDestroyView();
        this.a.x(false);
        lc1Var.mContainer = null;
        lc1Var.mView = null;
        lc1Var.mViewLifecycleOwner = null;
        lc1Var.mViewLifecycleOwnerLiveData.h(null);
        lc1Var.mInLayout = false;
    }

    public final void h() {
        boolean zG = hd1.G(3);
        lc1 lc1Var = this.c;
        if (zG) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + lc1Var);
        }
        lc1Var.performDetach();
        this.a.o(false);
        lc1Var.mState = -1;
        lc1Var.mHost = null;
        lc1Var.mParentFragment = null;
        lc1Var.mFragmentManager = null;
        if (!lc1Var.mRemoving || lc1Var.isInBackStack()) {
            ld1 ld1Var = (ld1) this.b.r;
            if (!((ld1Var.b.containsKey(lc1Var.mWho) && ld1Var.e) ? ld1Var.f : true)) {
                return;
            }
        }
        if (hd1.G(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + lc1Var);
        }
        lc1Var.initState();
    }

    public final void i() {
        lc1 lc1Var = this.c;
        if (lc1Var.mFromLayout && lc1Var.mInLayout && !lc1Var.mPerformedCreateView) {
            if (hd1.G(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + lc1Var);
            }
            lc1Var.performCreateView(lc1Var.performGetLayoutInflater(lc1Var.mSavedFragmentState), null, lc1Var.mSavedFragmentState);
            View view = lc1Var.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                lc1Var.mView.setTag(R.id.fragment_container_view_tag, lc1Var);
                if (lc1Var.mHidden) {
                    lc1Var.mView.setVisibility(8);
                }
                lc1Var.performViewCreated();
                this.a.w(false);
                lc1Var.mState = 2;
            }
        }
    }

    public final void j() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.d;
        lc1 lc1Var = this.c;
        if (z) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + lc1Var);
                return;
            }
            return;
        }
        try {
            this.d = true;
            boolean z2 = false;
            while (true) {
                int iC = c();
                int i = lc1Var.mState;
                qd1 qd1Var = this.b;
                if (iC == i) {
                    if (!z2 && i == -1 && lc1Var.mRemoving && !lc1Var.isInBackStack() && !lc1Var.mBeingSaved) {
                        if (hd1.G(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + lc1Var);
                        }
                        ((ld1) qd1Var.r).d(lc1Var);
                        qd1Var.D(this);
                        if (hd1.G(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + lc1Var);
                        }
                        lc1Var.initState();
                    }
                    if (lc1Var.mHiddenChanged) {
                        if (lc1Var.mView != null && (viewGroup = lc1Var.mContainer) != null) {
                            pq0 pq0VarI = pq0.i(viewGroup, lc1Var.getParentFragmentManager());
                            if (lc1Var.mHidden) {
                                if (hd1.G(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + lc1Var);
                                }
                                pq0VarI.b(3, 1, this);
                            } else {
                                if (hd1.G(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + lc1Var);
                                }
                                pq0VarI.b(2, 1, this);
                            }
                        }
                        hd1 hd1Var = lc1Var.mFragmentManager;
                        if (hd1Var != null && lc1Var.mAdded && hd1.H(lc1Var)) {
                            hd1Var.D = true;
                        }
                        lc1Var.mHiddenChanged = false;
                        lc1Var.onHiddenChanged(lc1Var.mHidden);
                        lc1Var.mChildFragmentManager.n();
                    }
                    this.d = false;
                    return;
                }
                gw4 gw4Var = this.a;
                if (iC <= i) {
                    switch (i - 1) {
                        case -1:
                            h();
                            break;
                        case 0:
                            if (lc1Var.mBeingSaved) {
                                if (((od1) ((HashMap) qd1Var.q).get(lc1Var.mWho)) == null) {
                                    m();
                                }
                            }
                            f();
                            break;
                        case 1:
                            g();
                            lc1Var.mState = 1;
                            break;
                        case 2:
                            lc1Var.mInLayout = false;
                            lc1Var.mState = 2;
                            break;
                        case 3:
                            if (hd1.G(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + lc1Var);
                            }
                            if (lc1Var.mBeingSaved) {
                                m();
                            } else if (lc1Var.mView != null && lc1Var.mSavedViewState == null) {
                                n();
                            }
                            if (lc1Var.mView != null && (viewGroup2 = lc1Var.mContainer) != null) {
                                pq0 pq0VarI2 = pq0.i(viewGroup2, lc1Var.getParentFragmentManager());
                                if (hd1.G(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + lc1Var);
                                }
                                pq0VarI2.b(1, 3, this);
                            }
                            lc1Var.mState = 3;
                            break;
                        case 4:
                            if (hd1.G(3)) {
                                Log.d("FragmentManager", "movefrom STARTED: " + lc1Var);
                            }
                            lc1Var.performStop();
                            gw4Var.v(false);
                            break;
                        case 5:
                            lc1Var.mState = 5;
                            break;
                        case 6:
                            if (hd1.G(3)) {
                                Log.d("FragmentManager", "movefrom RESUMED: " + lc1Var);
                            }
                            lc1Var.performPause();
                            gw4Var.p(false);
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            b();
                            break;
                        case 1:
                            d();
                            break;
                        case 2:
                            i();
                            e();
                            break;
                        case 3:
                            if (hd1.G(3)) {
                                Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + lc1Var);
                            }
                            lc1Var.performActivityCreated(lc1Var.mSavedFragmentState);
                            gw4Var.k(false);
                            break;
                        case 4:
                            if (lc1Var.mView != null && (viewGroup3 = lc1Var.mContainer) != null) {
                                pq0 pq0VarI3 = pq0.i(viewGroup3, lc1Var.getParentFragmentManager());
                                int iE = xw1.e(lc1Var.mView.getVisibility());
                                if (hd1.G(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + lc1Var);
                                }
                                pq0VarI3.b(iE, 2, this);
                            }
                            lc1Var.mState = 4;
                            break;
                        case 5:
                            if (hd1.G(3)) {
                                Log.d("FragmentManager", "moveto STARTED: " + lc1Var);
                            }
                            lc1Var.performStart();
                            gw4Var.u(false);
                            break;
                        case 6:
                            lc1Var.mState = 6;
                            break;
                        case 7:
                            l();
                            break;
                    }
                }
                z2 = true;
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void k(ClassLoader classLoader) {
        lc1 lc1Var = this.c;
        Bundle bundle = lc1Var.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        lc1Var.mSavedViewState = lc1Var.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        lc1Var.mSavedViewRegistryState = lc1Var.mSavedFragmentState.getBundle("android:view_registry_state");
        lc1Var.mTargetWho = lc1Var.mSavedFragmentState.getString("android:target_state");
        if (lc1Var.mTargetWho != null) {
            lc1Var.mTargetRequestCode = lc1Var.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Boolean bool = lc1Var.mSavedUserVisibleHint;
        if (bool != null) {
            lc1Var.mUserVisibleHint = bool.booleanValue();
            lc1Var.mSavedUserVisibleHint = null;
        } else {
            lc1Var.mUserVisibleHint = lc1Var.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        if (lc1Var.mUserVisibleHint) {
            return;
        }
        lc1Var.mDeferStart = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l() {
        /*
            r6 = this;
            r0 = 3
            boolean r0 = defpackage.hd1.G(r0)
            java.lang.String r1 = "FragmentManager"
            lc1 r2 = r6.c
            if (r0 == 0) goto L1c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "moveto RESUMED: "
            r0.<init>(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r1, r0)
        L1c:
            android.view.View r0 = r2.getFocusedView()
            if (r0 == 0) goto L78
            android.view.View r3 = r2.mView
            if (r0 != r3) goto L27
            goto L31
        L27:
            android.view.ViewParent r3 = r0.getParent()
        L2b:
            if (r3 == 0) goto L78
            android.view.View r4 = r2.mView
            if (r3 != r4) goto L73
        L31:
            boolean r3 = r0.requestFocus()
            r4 = 2
            boolean r4 = defpackage.hd1.G(r4)
            if (r4 == 0) goto L78
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "requestFocus: Restoring focused view "
            r4.<init>(r5)
            r4.append(r0)
            java.lang.String r0 = " "
            r4.append(r0)
            if (r3 == 0) goto L50
            java.lang.String r0 = "succeeded"
            goto L52
        L50:
            java.lang.String r0 = "failed"
        L52:
            r4.append(r0)
            java.lang.String r0 = " on Fragment "
            r4.append(r0)
            r4.append(r2)
            java.lang.String r0 = " resulting in focused view "
            r4.append(r0)
            android.view.View r0 = r2.mView
            android.view.View r0 = r0.findFocus()
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            android.util.Log.v(r1, r0)
            goto L78
        L73:
            android.view.ViewParent r3 = r3.getParent()
            goto L2b
        L78:
            r0 = 0
            r2.setFocusedView(r0)
            r2.performResume()
            gw4 r6 = r6.a
            r1 = 0
            r6.s(r1)
            r2.mSavedFragmentState = r0
            r2.mSavedViewState = r0
            r2.mSavedViewRegistryState = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pd1.l():void");
    }

    public final void m() {
        lc1 lc1Var = this.c;
        od1 od1Var = new od1(lc1Var);
        if (lc1Var.mState <= -1 || od1Var.z != null) {
            od1Var.z = lc1Var.mSavedFragmentState;
        } else {
            Bundle bundle = new Bundle();
            lc1Var.performSaveInstanceState(bundle);
            this.a.t(false);
            if (bundle.isEmpty()) {
                bundle = null;
            }
            if (lc1Var.mView != null) {
                n();
            }
            if (lc1Var.mSavedViewState != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray("android:view_state", lc1Var.mSavedViewState);
            }
            if (lc1Var.mSavedViewRegistryState != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBundle("android:view_registry_state", lc1Var.mSavedViewRegistryState);
            }
            if (!lc1Var.mUserVisibleHint) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBoolean("android:user_visible_hint", lc1Var.mUserVisibleHint);
            }
            od1Var.z = bundle;
            if (lc1Var.mTargetWho != null) {
                if (bundle == null) {
                    od1Var.z = new Bundle();
                }
                od1Var.z.putString("android:target_state", lc1Var.mTargetWho);
                int i = lc1Var.mTargetRequestCode;
                if (i != 0) {
                    od1Var.z.putInt("android:target_req_state", i);
                }
            }
        }
    }

    public final void n() {
        lc1 lc1Var = this.c;
        if (lc1Var.mView == null) {
            return;
        }
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + lc1Var + " with view " + lc1Var.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        lc1Var.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            lc1Var.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        lc1Var.mViewLifecycleOwner.r.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        lc1Var.mSavedViewRegistryState = bundle;
    }

    public pd1(gw4 gw4Var, qd1 qd1Var, lc1 lc1Var) {
        this.a = gw4Var;
        this.b = qd1Var;
        this.c = lc1Var;
    }

    public pd1(gw4 gw4Var, qd1 qd1Var, lc1 lc1Var, od1 od1Var) {
        this.a = gw4Var;
        this.b = qd1Var;
        this.c = lc1Var;
        lc1Var.mSavedViewState = null;
        lc1Var.mSavedViewRegistryState = null;
        lc1Var.mBackStackNesting = 0;
        lc1Var.mInLayout = false;
        lc1Var.mAdded = false;
        lc1 lc1Var2 = lc1Var.mTarget;
        lc1Var.mTargetWho = lc1Var2 != null ? lc1Var2.mWho : null;
        lc1Var.mTarget = null;
        Bundle bundle = od1Var.z;
        if (bundle != null) {
            lc1Var.mSavedFragmentState = bundle;
        } else {
            lc1Var.mSavedFragmentState = new Bundle();
        }
    }
}
