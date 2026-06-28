package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.ScrollCaptureTarget;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.translation.TranslationRequestValue;
import android.view.translation.ViewTranslationRequest;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q9 extends ViewGroup implements sr2, ia3, op0, ir2, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnTouchModeChangeListener, x91 {
    public static Class V0;
    public static Method W0;
    public static Method X0;
    public static l7 Z0;
    public static Method a1;
    public static Method b1;
    public final sa A;
    public long A0;
    public final ws2 B;
    public final pc4 B0;
    public final os0 C;
    public final dg2 C0;
    public final xe4 D;
    public float D0;
    public final xy1 E;
    public float E0;
    public final tf2 F;
    public float F0;
    public final n33 G;
    public float G0;
    public final jh3 H;
    public final o9 H0;
    public final v9 I;
    public final c9 I0;
    public final ha J;
    public boolean J0;
    public final fb K;
    public df1 K0;
    public final lp L;
    public final lq1 L0;
    public final dg2 M;
    public final i9 M0;
    public dg2 N;
    public final i9 N0;
    public boolean O;
    public boolean O0;
    public boolean P;
    public boolean P0;
    public final be2 Q;
    public boolean Q0;
    public final ic R;
    public final dd1 R0;
    public final ws2 S;
    public View S0;
    public final os0 T;
    public final bx3 T0;
    public final v8 U;
    public final w8 V;
    public boolean W;
    public final ur2 a0;
    public boolean b0;
    public id c0;
    public mf0 d0;
    public boolean e0;
    public final ab2 f0;
    public long g0;
    public final int[] h0;
    public final float[] i0;
    public final Matrix j0;
    public final float[] k0;
    public final float[] l0;
    public long m0;
    public pb0 n;
    public boolean n0;
    public long o;
    public long o0;
    public final boolean p;
    public pe1 p0;
    public aq1 q;
    public ix3 q0;
    public t22 r;
    public hx3 r0;
    public u22 s;
    public final AtomicReference s0;
    public l83 t;
    public bx3 t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final vh f275u;
    public final pg2 u0;
    public final c9 v;
    public final ws2 v0;
    public final ws2 w;
    public lr1 w0;
    public final View x;
    public final od2 x0;
    public final dh y;
    public bx3 y0;
    public hi0 z;
    public MotionEvent z0;
    public static final qv3 U0 = new qv3(8);
    public static final dg2 Y0 = new dg2();

    public q9(Context context, pb0 pb0Var) {
        super(context);
        this.n = pb0Var;
        this.o = 9205357640488583168L;
        int i = 1;
        this.p = true;
        this.t = w13.E;
        this.f275u = new vh();
        int i2 = 0;
        this.v = new c9(this, i2);
        this.w = new ws2(is0.b(context), w13.P);
        this.y = new dh(this, this);
        pb0Var.f();
        zb0 zb0Var = pb0Var.c;
        zb0Var.getClass();
        this.z = zb0Var.j();
        this.A = new sa();
        this.B = ca.A(Boolean.FALSE);
        this.C = ca.m(new i9(this, i2));
        this.D = new xe4();
        xy1 xy1Var = new xy1(3);
        xy1Var.e0(ja3.c);
        xy1Var.b0(getDensity());
        xy1Var.g0(getViewConfiguration());
        xy1Var.f0(new p9(this).c((z91) ((dh) getFocusOwner()).e).c(getDragAndDropManager().c));
        this.E = xy1Var;
        tf2 tf2Var = is1.a;
        this.F = new tf2();
        this.G = new n33(getLayoutNodes(), this);
        this.H = new jh3(getRoot(), new i01(), getLayoutNodes());
        v9 v9Var = new v9(this);
        this.I = v9Var;
        ha haVar = new ha(this, new h9(0, this, ca.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", 1, 0, 0));
        this.J = haVar;
        this.K = new fb(this);
        this.L = new lp();
        this.M = new dg2();
        this.Q = new be2();
        xy1 root = getRoot();
        ic icVar = new ic();
        icVar.b = root;
        icVar.c = new wj1((gr1) root.S.d);
        icVar.d = new dh1(25, false);
        icVar.e = new zj1();
        this.R = icVar;
        this.S = ca.A(new Configuration(context.getResources().getConfiguration()));
        int i3 = 2;
        this.T = ca.m(new i9(this, i3));
        this.U = d() ? new v8(this, getAutofillTree()) : null;
        this.V = d() ? new w8(new xh1(context, 15), getSemanticsOwner(), this, getRectManager(), context.getPackageName()) : null;
        this.a0 = new ur2(new m9(this, i));
        this.f0 = new ab2(getRoot());
        this.g0 = 9223372034707292159L;
        this.h0 = new int[]{0, 0};
        this.i0 = xa2.a();
        this.j0 = new Matrix();
        this.k0 = xa2.a();
        this.l0 = xa2.a();
        this.m0 = -1L;
        this.o0 = 9187343241974906880L;
        this.s0 = new AtomicReference(null);
        this.u0 = pb0Var.p;
        int layoutDirection = context.getResources().getConfiguration().getLayoutDirection();
        int[] iArr = v91.a;
        hy1 hy1Var = hy1.n;
        hy1 hy1Var2 = layoutDirection != 0 ? layoutDirection != 1 ? null : hy1.o : hy1Var;
        this.v0 = ca.A(hy1Var2 != null ? hy1Var2 : hy1Var);
        od2 od2Var = new od2();
        new ug2(new kq[16]);
        new ug2(new k30[16]);
        new ug2(new xy1[16]);
        new ug2(new k30[16]);
        this.x0 = od2Var;
        this.B0 = new pc4(0);
        this.C0 = new dg2();
        this.D0 = Float.NaN;
        this.E0 = Float.NaN;
        this.F0 = Float.NaN;
        this.G0 = Float.NaN;
        this.H0 = new o9(i2, this);
        this.I0 = new c9(this, i);
        this.K0 = new dl3(i3, this);
        this.L0 = new lq1(context, new m9(this, i2));
        this.M0 = new i9(this, 4);
        this.N0 = new i9(this, i);
        addOnAttachStateChangeListener(haVar);
        setWillNotDraw(false);
        setFocusable(true);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            ba.a.a(this, 1, false);
        }
        setFocusableInTouchMode(true);
        setClipChildren(false);
        lb4.e(this, v9Var);
        setOnDragListener(getDragAndDropManager());
        if (i4 >= 29) {
            x9.a.a(this);
        }
        if (l()) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
            view.setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
            this.x = view;
            addView(view, -1);
        }
        this.R0 = i4 >= 31 ? new dd1(14) : null;
        this.T0 = new bx3(this);
    }

    public static final void b(q9 q9Var, int i, AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int iD;
        v9 v9Var = q9Var.I;
        if (nt1.g(str, v9Var.R)) {
            int iD2 = v9Var.P.d(i);
            if (iD2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, iD2);
                return;
            }
            return;
        }
        if (!nt1.g(str, v9Var.S) || (iD = v9Var.Q.d(i)) == -1) {
            return;
        }
        accessibilityNodeInfo.getExtras().putInt(str, iD);
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static void e(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof q9) {
                ((q9) childAt).u();
            } else if (childAt instanceof ViewGroup) {
                e((ViewGroup) childAt);
            }
        }
    }

    public static long f(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            return size;
        }
        if (mode == 0) {
            return 2147483647L;
        }
        if (mode != 1073741824) {
            throw new IllegalStateException();
        }
        long j = size;
        return j | (j << 32);
    }

    private final y20 getCanvasHolder() {
        return this.n.f259u;
    }

    private final boolean getDerivedIsAttached() {
        return ((Boolean) this.C.getValue()).booleanValue();
    }

    private final ix3 getLegacyTextInputServiceAndroid() {
        ix3 ix3Var = this.q0;
        if (ix3Var != null) {
            return ix3Var;
        }
        ix3 ix3Var2 = new ix3(getView(), this);
        this.q0 = ix3Var2;
        return ix3Var2;
    }

    public static void i(xy1 xy1Var) {
        xy1Var.D();
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            i((xy1) objArr[i2]);
        }
    }

    public static boolean l() {
        return Build.VERSION.SDK_INT >= 35;
    }

    public static boolean m(MotionEvent motionEvent) {
        boolean z = (Float.floatToRawIntBits(motionEvent.getX()) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY()) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawX()) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getRawY()) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040;
        if (!z) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 1; i < pointerCount; i++) {
                z = (Float.floatToRawIntBits(motionEvent.getX(i)) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040 || (Float.floatToRawIntBits(motionEvent.getY(i)) & Api.BaseClientBuilder.API_PRIORITY_OTHER) >= 2139095040 || (Build.VERSION.SDK_INT >= 29 && !ce2.a.a(motionEvent, i));
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    private final void setAttached(boolean z) {
        this.B.setValue(Boolean.valueOf(z));
    }

    private void setDensity(as0 as0Var) {
        this.w.setValue(as0Var);
    }

    private void setLayoutDirection(hy1 hy1Var) {
        this.v0.setValue(hy1Var);
    }

    @Override // defpackage.op0
    public final void A(p22 p22Var) {
        q20 q20VarS;
        if (Build.VERSION.SDK_INT < 30) {
            setShowLayoutBounds(qv3.p());
        }
        u22 u22Var = this.s;
        if (u22Var != null) {
            t22 t22Var = this.r;
            t22Var.getClass();
            dd1 dd1Var = u22Var.a;
            x92 x92Var = (x92) dd1Var.o;
            if (!x92Var.n || x92Var.p) {
                return;
            }
            try {
                q20VarS = ((oh4) t22Var).n.s(new je(8, u22Var));
            } catch (CancellationException unused) {
                x92 x92Var2 = (x92) dd1Var.o;
                if (!x92Var2.o) {
                    if (x92Var2.p) {
                        jx2.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    x92Var2.a();
                    x92Var2.p = true;
                }
                q20VarS = null;
            }
            q20 q20Var = u22Var.d;
            if (q20Var != null) {
                q20Var.cancel();
            }
            u22Var.d = q20VarS;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(android.view.ViewStructure r14) {
        /*
            Method dump skipped, instruction units count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q9.C(android.view.ViewStructure):void");
    }

    public final void D() {
        if (this.n0) {
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (jCurrentAnimationTimeMillis != this.m0) {
            this.m0 = jCurrentAnimationTimeMillis;
            F();
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            int[] iArr = this.h0;
            view.getLocationOnScreen(iArr);
            float f = iArr[0];
            float f2 = iArr[1];
            view.getLocationInWindow(iArr);
            this.o0 = (((long) Float.floatToRawIntBits(f - iArr[0])) << 32) | (((long) Float.floatToRawIntBits(f2 - iArr[1])) & 4294967295L);
        }
    }

    public final void E(MotionEvent motionEvent) {
        this.m0 = AnimationUtils.currentAnimationTimeMillis();
        F();
        float x = motionEvent.getX();
        long jB = xa2.b(this.k0, (((long) Float.floatToRawIntBits(motionEvent.getY())) & 4294967295L) | (Float.floatToRawIntBits(x) << 32));
        this.o0 = (((long) Float.floatToRawIntBits(motionEvent.getRawX() - Float.intBitsToFloat((int) (jB >> 32)))) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getRawY() - Float.intBitsToFloat((int) (jB & 4294967295L)))) & 4294967295L);
    }

    public final void F() {
        int i = Build.VERSION.SDK_INT;
        float[] fArr = this.k0;
        int[] iArr = this.h0;
        if (i >= 29) {
            d10.a.a(this, fArr, this.j0, iArr);
        } else {
            xa2.d(fArr);
            n44.O0(this, fArr, this.i0, iArr);
        }
        mt1.K(fArr, this.l0);
    }

    public final boolean G() {
        if (isFocused()) {
            return true;
        }
        return super.requestFocus(130, null);
    }

    public final void H(ne1 ne1Var) {
        vh vhVar = this.f275u;
        boolean zIsEmpty = vhVar.isEmpty();
        vhVar.addLast(ne1Var);
        if (zIsEmpty) {
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtFrontOfQueue(this.v);
            } else {
                k21.f("schedule is called when outOfFrameExecutor is not available (view is detached)");
            }
        }
    }

    public final void I(xy1 xy1Var) {
        if (isLayoutRequested() || !isAttachedToWindow()) {
            return;
        }
        if (xy1Var != null) {
            while (xy1Var != null && xy1Var.r() == vy1.n) {
                if (!this.e0) {
                    xy1 xy1VarU = xy1Var.u();
                    if (xy1VarU == null) {
                        break;
                    }
                    long j = ((gr1) xy1VarU.S.d).q;
                    if (mf0.f(j) && mf0.e(j)) {
                        break;
                    }
                }
                xy1Var = xy1Var.u();
            }
            if (xy1Var == getRoot()) {
                requestLayout();
                return;
            }
        }
        if (getWidth() == 0 || getHeight() == 0) {
            requestLayout();
        } else {
            invalidate();
        }
    }

    public final long J(long j) {
        D();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (this.o0 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (this.o0 & 4294967295L));
        long jFloatToRawIntBits = Float.floatToRawIntBits(fIntBitsToFloat);
        return xa2.b(this.l0, (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L) | (jFloatToRawIntBits << 32));
    }

    public final int K(MotionEvent motionEvent) {
        Object obj;
        if (this.O0) {
            this.O0 = false;
            dh1 dh1Var = this.n.t;
            int metaState = motionEvent.getMetaState();
            dh1Var.getClass();
            gd4.n.setValue(new gw2(metaState));
        }
        be2 be2Var = this.Q;
        xh1 xh1VarC = be2Var.c(motionEvent, this);
        int actionMasked = motionEvent.getActionMasked();
        ic icVar = this.R;
        if (xh1VarC == null) {
            if (!icVar.a) {
                e82 e82Var = (e82) ((dh1) icVar.d).n;
                int i = e82Var.q;
                Object[] objArr = e82Var.p;
                for (int i2 = 0; i2 < i; i2++) {
                    objArr[i2] = null;
                }
                e82Var.q = 0;
                e82Var.n = false;
                ((wj1) icVar.c).c();
            }
            return 0;
        }
        List list = (List) xh1VarC.n;
        int size = list.size() - 1;
        if (size >= 0) {
            while (true) {
                int i3 = size - 1;
                obj = list.get(size);
                if (((bw2) obj).e && (actionMasked == 0 || actionMasked == 5)) {
                    break;
                }
                if (i3 < 0) {
                    break;
                }
                size = i3;
            }
            obj = null;
        } else {
            obj = null;
        }
        bw2 bw2Var = (bw2) obj;
        if (bw2Var != null) {
            this.o = bw2Var.d;
        }
        int iD = icVar.d(xh1VarC, this, n(motionEvent));
        xh1VarC.o = null;
        if ((actionMasked != 0 && actionMasked != 5) || (iD & 1) != 0) {
            return iD;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        be2Var.c.delete(pointerId);
        be2Var.b.delete(pointerId);
        return iD;
    }

    public final void L(MotionEvent motionEvent, int i, long j, boolean z) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                actionIndex = motionEvent.getActionIndex();
            }
        } else if (i != 9 && i != 10) {
            actionIndex = 0;
        }
        int pointerCount = motionEvent.getPointerCount() - (actionIndex >= 0 ? 1 : 0);
        if (pointerCount == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        for (int i2 = 0; i2 < pointerCount; i2++) {
            pointerPropertiesArr[i2] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i3 = 0; i3 < pointerCount; i3++) {
            pointerCoordsArr[i3] = new MotionEvent.PointerCoords();
        }
        int i4 = 0;
        while (i4 < pointerCount) {
            int i5 = ((actionIndex < 0 || actionIndex > i4) ? 0 : 1) + i4;
            motionEvent.getPointerProperties(i5, pointerPropertiesArr[i4]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i4];
            motionEvent.getPointerCoords(i5, pointerCoords);
            float f = pointerCoords.x;
            long jP = p((((long) Float.floatToRawIntBits(pointerCoords.y)) & 4294967295L) | (((long) Float.floatToRawIntBits(f)) << 32));
            pointerCoords.x = Float.intBitsToFloat((int) (jP >> 32));
            pointerCoords.y = Float.intBitsToFloat((int) (jP & 4294967295L));
            i4++;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent.getDownTime() == motionEvent.getEventTime() ? j : motionEvent.getDownTime(), j, i, pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), z ? 0 : motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        xh1 xh1VarC = this.Q.c(motionEventObtain, this);
        xh1VarC.getClass();
        this.R.d(xh1VarC, this, true);
        motionEventObtain.recycle();
    }

    public final void M(Configuration configuration) {
        Configuration configuration2 = getConfiguration();
        if (nt1.g(configuration2, configuration)) {
            return;
        }
        setConfiguration(new Configuration(configuration));
        if (configuration2.fontScale == configuration.fontScale && configuration2.densityDpi == configuration.densityDpi) {
            return;
        }
        setDensity(is0.b(getContext()));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void N() {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q9.N():void");
    }

    public final void O(float f) {
        if (l()) {
            if (f > 0.0f) {
                if (Float.isNaN(this.D0) || f > this.D0) {
                    this.D0 = f;
                    return;
                }
                return;
            }
            if (f < 0.0f) {
                if (Float.isNaN(this.E0) || f < this.E0) {
                    this.E0 = f;
                }
            }
        }
    }

    @Override // defpackage.x91
    public final void a(ka1 ka1Var, ka1 ka1Var2) {
        bo boVar;
        boolean z;
        bo boVar2;
        boolean z2;
        if (ka1Var != null) {
            ka1 ka1Var3 = ka1Var;
            if (!ka1Var3.n.A) {
                ar1.b("visitAncestors called on an unattached node");
            }
            md2 md2Var = ka1Var3.n;
            xy1 xy1VarR = w80.R(ka1Var);
            lg2 lg2Var = null;
            ArrayList arrayList = null;
            while (xy1VarR != null) {
                if ((((md2) xy1VarR.S.g).q & 2097152) != 0) {
                    while (md2Var != null) {
                        if ((md2Var.p & 2097152) != 0) {
                            md2 md2VarG = md2Var;
                            ug2 ug2Var = null;
                            while (md2VarG != null) {
                                if (md2VarG instanceof jq1) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(md2VarG);
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (z2 && (md2VarG.p & 2097152) != 0 && (md2VarG instanceof kr0)) {
                                    int i = 0;
                                    for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                        if ((md2Var2.p & 2097152) != 0) {
                                            i++;
                                            if (i == 1) {
                                                md2VarG = md2Var2;
                                            } else {
                                                if (ug2Var == null) {
                                                    ug2Var = new ug2(new md2[16]);
                                                }
                                                if (md2VarG != null) {
                                                    ug2Var.c(md2VarG);
                                                    md2VarG = null;
                                                }
                                                ug2Var.c(md2Var2);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                md2VarG = w80.g(ug2Var);
                            }
                        }
                        md2Var = md2Var.r;
                    }
                }
                xy1VarR = xy1VarR.u();
                md2Var = (xy1VarR == null || (boVar2 = xy1VarR.S) == null) ? null : (gw3) boVar2.f;
            }
            if (arrayList == null) {
                return;
            }
            if (ka1Var2 != null) {
                if (!ka1Var2.n.A) {
                    ar1.b("visitAncestors called on an unattached node");
                }
                md2 md2Var3 = ka1Var2.n;
                xy1 xy1VarR2 = w80.R(ka1Var2);
                lg2 lg2Var2 = null;
                while (xy1VarR2 != null) {
                    if ((((md2) xy1VarR2.S.g).q & 2097152) != 0) {
                        while (md2Var3 != null) {
                            if ((md2Var3.p & 2097152) != 0) {
                                md2 md2VarG2 = md2Var3;
                                ug2 ug2Var2 = null;
                                while (md2VarG2 != null) {
                                    if (md2VarG2 instanceof jq1) {
                                        if (lg2Var2 == null) {
                                            lg2 lg2Var3 = ud3.a;
                                            lg2Var2 = new lg2();
                                        }
                                        lg2Var2.a(md2VarG2);
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    if (z && (md2VarG2.p & 2097152) != 0 && (md2VarG2 instanceof kr0)) {
                                        int i2 = 0;
                                        for (md2 md2Var4 = ((kr0) md2VarG2).C; md2Var4 != null; md2Var4 = md2Var4.s) {
                                            if ((md2Var4.p & 2097152) != 0) {
                                                i2++;
                                                if (i2 == 1) {
                                                    md2VarG2 = md2Var4;
                                                } else {
                                                    if (ug2Var2 == null) {
                                                        ug2Var2 = new ug2(new md2[16]);
                                                    }
                                                    if (md2VarG2 != null) {
                                                        ug2Var2.c(md2VarG2);
                                                        md2VarG2 = null;
                                                    }
                                                    ug2Var2.c(md2Var4);
                                                }
                                            }
                                        }
                                        if (i2 == 1) {
                                        }
                                    }
                                    md2VarG2 = w80.g(ug2Var2);
                                }
                            }
                            md2Var3 = md2Var3.r;
                        }
                    }
                    xy1VarR2 = xy1VarR2.u();
                    md2Var3 = (xy1VarR2 == null || (boVar = xy1VarR2.S) == null) ? null : (gw3) boVar.f;
                }
                lg2Var = lg2Var2;
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                jq1 jq1Var = (jq1) arrayList.get(i3);
                if (!(lg2Var != null ? lg2Var.c(jq1Var) : false)) {
                    jq1Var.x();
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        ka1 ka1Var = (ka1) ((dh) getFocusOwner()).c;
        if (!ka1Var.A) {
            return;
        }
        if (!ka1Var.n.A) {
            ar1.b("visitSubtreeIf called on an unattached node");
        }
        ug2 ug2Var = new ug2(new md2[16]);
        md2 md2Var = ka1Var.n;
        md2 md2Var2 = md2Var.s;
        if (md2Var2 == null) {
            w80.c(ug2Var, md2Var);
        } else {
            ug2Var.c(md2Var2);
        }
        while (true) {
            int i3 = ug2Var.p;
            if (i3 == 0) {
                return;
            }
            md2 md2Var3 = (md2) ug2Var.l(i3 - 1);
            if ((md2Var3.q & 1024) != 0) {
                for (md2 md2Var4 = md2Var3; md2Var4 != null && md2Var4.A; md2Var4 = md2Var4.s) {
                    if ((md2Var4.p & 1024) != 0) {
                        md2 md2VarG = md2Var4;
                        ug2 ug2Var2 = null;
                        while (md2VarG != null) {
                            int i4 = 0;
                            if (md2VarG instanceof ka1) {
                                ka1 ka1Var2 = (ka1) md2VarG;
                                if (ka1Var2.A && ka1Var2.I0().a) {
                                    super.addFocusables(arrayList, i, i2);
                                    ka1 ka1Var3 = (ka1) ((dh) getFocusOwner()).c;
                                    if (ka1Var3.A) {
                                        if (!ka1Var3.n.A) {
                                            ar1.b("visitSubtreeIf called on an unattached node");
                                        }
                                        ug2 ug2Var3 = new ug2(new md2[16]);
                                        md2 md2Var5 = ka1Var3.n;
                                        md2 md2Var6 = md2Var5.s;
                                        if (md2Var6 == null) {
                                            w80.c(ug2Var3, md2Var5);
                                        } else {
                                            ug2Var3.c(md2Var6);
                                        }
                                        while (true) {
                                            int i5 = ug2Var3.p;
                                            if (i5 == 0) {
                                                break;
                                            }
                                            md2 md2Var7 = (md2) ug2Var3.l(i5 - 1);
                                            if ((md2Var7.q & 1024) != 0) {
                                                for (md2 md2Var8 = md2Var7; md2Var8 != null && md2Var8.A; md2Var8 = md2Var8.s) {
                                                    if ((md2Var8.p & 1024) != 0) {
                                                        md2 md2VarG2 = md2Var8;
                                                        ug2 ug2Var4 = null;
                                                        while (md2VarG2 != null) {
                                                            if (md2VarG2 instanceof ka1) {
                                                                ka1 ka1Var4 = (ka1) md2VarG2;
                                                                if (ka1Var4.A) {
                                                                    ca1 ca1VarI0 = ka1Var4.I0();
                                                                    if (ka1Var4.A && !ka1Var4.B && ca1VarI0.a) {
                                                                        return;
                                                                    }
                                                                }
                                                            } else if ((md2VarG2.p & 1024) != 0 && (md2VarG2 instanceof kr0)) {
                                                                int i6 = 0;
                                                                for (md2 md2Var9 = ((kr0) md2VarG2).C; md2Var9 != null; md2Var9 = md2Var9.s) {
                                                                    if ((md2Var9.p & 1024) != 0) {
                                                                        i6++;
                                                                        if (i6 == 1) {
                                                                            md2VarG2 = md2Var9;
                                                                        } else {
                                                                            if (ug2Var4 == null) {
                                                                                ug2Var4 = new ug2(new md2[16]);
                                                                            }
                                                                            if (md2VarG2 != null) {
                                                                                ug2Var4.c(md2VarG2);
                                                                                md2VarG2 = null;
                                                                            }
                                                                            ug2Var4.c(md2Var9);
                                                                        }
                                                                    }
                                                                }
                                                                if (i6 == 1) {
                                                                }
                                                            }
                                                            md2VarG2 = w80.g(ug2Var4);
                                                        }
                                                    }
                                                }
                                            }
                                            w80.c(ug2Var3, md2Var7);
                                        }
                                    }
                                    if (arrayList != null) {
                                        arrayList.remove(this);
                                        return;
                                    }
                                    return;
                                }
                            } else if ((md2VarG.p & 1024) != 0 && (md2VarG instanceof kr0)) {
                                for (md2 md2Var10 = ((kr0) md2VarG).C; md2Var10 != null; md2Var10 = md2Var10.s) {
                                    if ((md2Var10.p & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            md2VarG = md2Var10;
                                        } else {
                                            if (ug2Var2 == null) {
                                                ug2Var2 = new ug2(new md2[16]);
                                            }
                                            if (md2VarG != null) {
                                                ug2Var2.c(md2VarG);
                                                md2VarG = null;
                                            }
                                            ug2Var2.c(md2Var10);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            md2VarG = w80.g(ug2Var2);
                        }
                    }
                }
            }
            w80.c(ug2Var, md2Var3);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, i, layoutParams, true);
    }

    @Override // android.view.View
    public final void autofill(SparseArray sparseArray) {
        bh3 bh3VarX;
        pe1 pe1Var;
        pe1 pe1Var2;
        if (d()) {
            w8 autofillManager = getAutofillManager();
            if (autofillManager != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int iKeyAt = sparseArray.keyAt(i);
                    AutofillValue autofillValueH = y2.h(sparseArray.get(iKeyAt));
                    xy1 xy1Var = (xy1) autofillManager.o.c.b(iKeyAt);
                    if (xy1Var != null && (bh3VarX = xy1Var.x()) != null) {
                        kg2 kg2Var = bh3VarX.n;
                        Object objG = kg2Var.g(ah3.g);
                        if (objG == null) {
                            objG = null;
                        }
                        o2 o2Var = (o2) objG;
                        if (o2Var != null && (pe1Var2 = (pe1) o2Var.b) != null) {
                        }
                        Object objG2 = kg2Var.g(ah3.h);
                        o2 o2Var2 = (o2) (objG2 != null ? objG2 : null);
                        if (o2Var2 != null && (pe1Var = (pe1) o2Var2.b) != null) {
                        }
                    }
                }
            }
            v8 autofill = getAutofill();
            if (autofill != null) {
                lp lpVar = autofill.b;
                if (lpVar.a.isEmpty()) {
                    return;
                }
                int size2 = sparseArray.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int iKeyAt2 = sparseArray.keyAt(i2);
                    AutofillValue autofillValueH2 = y2.h(sparseArray.get(iKeyAt2));
                    if (autofillValueH2.isText()) {
                        autofillValueH2.getTextValue().toString();
                        if (lpVar.a.get(Integer.valueOf(iKeyAt2)) != null) {
                            mk0.b();
                            return;
                        }
                    } else {
                        if (autofillValueH2.isDate()) {
                            throw new an2("An operation is not implemented: b/138604541: Add onFill() callback for date");
                        }
                        if (autofillValueH2.isList()) {
                            throw new an2("An operation is not implemented: b/138604541: Add onFill() callback for list");
                        }
                        if (autofillValueH2.isToggle()) {
                            throw new an2("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.I.g(false, i, this.o);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.I.g(true, i, this.o);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        dg2 dg2Var = this.M;
        if (!isAttachedToWindow()) {
            i(getRoot());
        }
        q(true);
        wo3.j().m();
        this.O = true;
        Trace.beginSection("AndroidOwner:draw");
        try {
            y20 canvasHolder = getCanvasHolder();
            y8 y8Var = canvasHolder.a;
            Canvas canvas2 = y8Var.a;
            y8Var.a = canvas;
            getRoot().i(y8Var, null);
            canvasHolder.a.a = canvas2;
            if (dg2Var.i()) {
                int i = dg2Var.b;
                for (int i2 = 0; i2 < i; i2++) {
                    ((ci1) ((rr2) dg2Var.f(i2))).g();
                }
            }
            int i3 = sb4.n;
            dg2Var.d();
            this.O = false;
            Trace.endSection();
            dg2 dg2Var2 = this.N;
            if (dg2Var2 != null) {
                dg2Var.b(dg2Var2);
                dg2Var2.d();
            }
            if (l()) {
                if (Float.compare(this.D0, this.F0) != 0) {
                    float f = this.D0;
                    this.F0 = f;
                    ag.a(this, f);
                }
                View view = this.x;
                if (view != null) {
                    if (Float.compare(this.E0, this.G0) != 0) {
                        float f2 = this.E0;
                        this.G0 = f2;
                        ag.a(view, f2);
                    }
                    if (!Float.isNaN(this.E0)) {
                        view.invalidate();
                        drawChild(canvas, view, getDrawingTime());
                    }
                }
                this.D0 = Float.NaN;
                this.E0 = Float.NaN;
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:329:0x04f6 A[PHI: r5
  0x04f6: PHI (r5v66 ??) = (r5v87 ??), (r5v88 ??), (r5v89 ??) binds: [B:310:0x04b8, B:312:0x04bc, B:327:0x04ef] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:466:0x06d4 A[PHI: r4
  0x06d4: PHI (r4v28 ??) = (r4v67 ??), (r4v68 ??), (r4v69 ??) binds: [B:447:0x069a, B:449:0x069e, B:464:0x06cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r38v0 */
    /* JADX WARN: Type inference failed for: r38v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r38v2 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41, types: [md2] */
    /* JADX WARN: Type inference failed for: r3v42, types: [md2] */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v46 */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r3v82 */
    /* JADX WARN: Type inference failed for: r3v83 */
    /* JADX WARN: Type inference failed for: r3v84 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32, types: [ug2] */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v49 */
    /* JADX WARN: Type inference failed for: r4v50, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v51, types: [md2] */
    /* JADX WARN: Type inference failed for: r4v52 */
    /* JADX WARN: Type inference failed for: r4v53, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r4v55 */
    /* JADX WARN: Type inference failed for: r4v56 */
    /* JADX WARN: Type inference failed for: r4v57 */
    /* JADX WARN: Type inference failed for: r4v59 */
    /* JADX WARN: Type inference failed for: r4v60 */
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v63 */
    /* JADX WARN: Type inference failed for: r4v64 */
    /* JADX WARN: Type inference failed for: r4v65 */
    /* JADX WARN: Type inference failed for: r4v66 */
    /* JADX WARN: Type inference failed for: r4v67 */
    /* JADX WARN: Type inference failed for: r4v68 */
    /* JADX WARN: Type inference failed for: r4v69 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v64 */
    /* JADX WARN: Type inference failed for: r5v65 */
    /* JADX WARN: Type inference failed for: r5v66, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v67 */
    /* JADX WARN: Type inference failed for: r5v68 */
    /* JADX WARN: Type inference failed for: r5v69 */
    /* JADX WARN: Type inference failed for: r5v70, types: [ug2] */
    /* JADX WARN: Type inference failed for: r5v82 */
    /* JADX WARN: Type inference failed for: r5v83 */
    /* JADX WARN: Type inference failed for: r5v84 */
    /* JADX WARN: Type inference failed for: r5v85 */
    /* JADX WARN: Type inference failed for: r5v86 */
    /* JADX WARN: Type inference failed for: r5v87 */
    /* JADX WARN: Type inference failed for: r5v88 */
    /* JADX WARN: Type inference failed for: r5v89 */
    /* JADX WARN: Type inference failed for: r6v48 */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchGenericMotionEvent(android.view.MotionEvent r43) {
        /*
            Method dump skipped, instruction units count: 2005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q9.dispatchGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e0, code lost:
    
        r10 = Integer.MIN_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0175, code lost:
    
        if (o(r25) == false) goto L79;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchHoverEvent(android.view.MotionEvent r25) {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q9.dispatchHoverEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i = 0;
        if (!isFocused()) {
            return ((dh) getFocusOwner()).d(keyEvent, new j9(i, this, keyEvent));
        }
        dh1 dh1Var = this.n.t;
        int metaState = keyEvent.getMetaState();
        dh1Var.getClass();
        gd4.n.setValue(new gw2(metaState));
        return ((dh) getFocusOwner()).d(keyEvent, ic0.y) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        bo boVar;
        if (isFocused()) {
            dh dhVar = (dh) getFocusOwner();
            if (((w91) dhVar.d).e) {
                System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            } else {
                ka1 ka1VarU = gg4.u((ka1) dhVar.c);
                if (ka1VarU != null) {
                    if (!ka1VarU.n.A) {
                        ar1.b("visitAncestors called on an unattached node");
                    }
                    md2 md2Var = ka1VarU.n;
                    xy1 xy1VarR = w80.R(ka1VarU);
                    while (xy1VarR != null) {
                        if ((((md2) xy1VarR.S.g).q & 131072) != 0) {
                            while (md2Var != null) {
                                if ((md2Var.p & 131072) != 0) {
                                    md2 md2VarG = md2Var;
                                    ug2 ug2Var = null;
                                    while (md2VarG != null) {
                                        if ((md2VarG.p & 131072) != 0 && (md2VarG instanceof kr0)) {
                                            int i = 0;
                                            for (md2 md2Var2 = ((kr0) md2VarG).C; md2Var2 != null; md2Var2 = md2Var2.s) {
                                                if ((md2Var2.p & 131072) != 0) {
                                                    i++;
                                                    if (i == 1) {
                                                        md2VarG = md2Var2;
                                                    } else {
                                                        if (ug2Var == null) {
                                                            ug2Var = new ug2(new md2[16]);
                                                        }
                                                        if (md2VarG != null) {
                                                            ug2Var.c(md2VarG);
                                                            md2VarG = null;
                                                        }
                                                        ug2Var.c(md2Var2);
                                                    }
                                                }
                                            }
                                            if (i == 1) {
                                            }
                                        }
                                        md2VarG = w80.g(ug2Var);
                                    }
                                }
                                md2Var = md2Var.r;
                            }
                        }
                        xy1VarR = xy1VarR.u();
                        md2Var = (xy1VarR == null || (boVar = xy1VarR.S) == null) ? null : (gw3) boVar.f;
                    }
                }
            }
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        if (d()) {
            this.Q0 = true;
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                this.Q0 = false;
                C(viewStructure);
            } catch (Throwable th) {
                this.Q0 = false;
                throw th;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideStructure(ViewStructure viewStructure) {
        if (Build.VERSION.SDK_INT < 28) {
            w9.a.a(viewStructure, getView());
        } else {
            super.dispatchProvideStructure(viewStructure);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) throws Throwable {
        Object pkVar;
        ka1 ka1VarF;
        if (this.J0) {
            c9 c9Var = this.I0;
            removeCallbacks(c9Var);
            MotionEvent motionEvent2 = this.z0;
            motionEvent2.getClass();
            if (motionEvent.getActionMasked() == 0 && motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
                this.J0 = false;
            } else {
                c9Var.run();
            }
        }
        if (!m(motionEvent) && isAttachedToWindow() && (motionEvent.getActionMasked() != 2 || o(motionEvent))) {
            int iH = h(motionEvent);
            int i = 1;
            if ((iH & 2) != 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            boolean z = motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5;
            boolean z2 = motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584);
            if (z && z2) {
                Object parent = getParent();
                View view = parent instanceof View ? (View) parent : null;
                if (view == null || (pkVar = view.getTag(R.id.auto_clear_focus_behavior_tag)) == null) {
                    pkVar = new pk(i);
                }
                if (pkVar.equals(new pk(i)) && (ka1VarF = ((dh) getFocusOwner()).f()) != null) {
                    mm2 mm2VarQ = w80.Q(ka1VarF);
                    l33 l33VarH = zf5.D(mm2VarQ).H(mm2VarQ, true);
                    long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(motionEvent.getX())) << 32) | (((long) Float.floatToRawIntBits(motionEvent.getY())) & 4294967295L);
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L));
                    if (!((fIntBitsToFloat < l33VarH.c) & (fIntBitsToFloat >= l33VarH.a) & (fIntBitsToFloat2 >= l33VarH.b) & (fIntBitsToFloat2 < l33VarH.d))) {
                        ((dh) getFocusOwner()).b(8, false, true);
                    }
                }
            }
            if ((iH & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public final View findViewByAccessibilityIdTraversal(int i) throws IllegalAccessException, InvocationTargetException {
        qv3 qv3Var = U0;
        try {
            if (Build.VERSION.SDK_INT < 29) {
                return qv3.o(this, i);
            }
            Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(qv3Var, Integer.valueOf(i));
            if (objInvoke instanceof View) {
                return (View) objInvoke;
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        l33 l33VarA;
        if (view == null || this.f0.c) {
            return super.focusSearch(view, i);
        }
        View rootView = getRootView();
        rootView.getClass();
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) rootView, view, i);
        if (viewFindNextFocus == null || !ca.c(this, viewFindNextFocus)) {
            viewFindNextFocus = null;
        }
        if (view == this) {
            ka1 ka1VarU = gg4.u((ka1) ((dh) getFocusOwner()).c);
            l33VarA = ka1VarU != null ? gg4.v(ka1VarU) : null;
            if (l33VarA == null) {
                l33VarA = v91.a(view, this);
            }
        } else {
            l33VarA = v91.a(view, this);
        }
        p91 p91VarD = v91.d(i);
        int i2 = p91VarD != null ? p91VarD.a : 6;
        w33 w33Var = new w33();
        if (((dh) getFocusOwner()).e(i2, l33VarA, new k9(0, w33Var)) == null) {
            return view;
        }
        Object obj = w33Var.n;
        if (obj == null) {
            if (viewFindNextFocus == null) {
                return super.focusSearch(view, i);
            }
        } else if (viewFindNextFocus == null || i2 == 1 || i2 == 2 || qn0.y(gg4.v((ka1) obj), v91.a(viewFindNextFocus, this), l33VarA, i2)) {
            return this;
        }
        return viewFindNextFocus;
    }

    public final void g(xy1 xy1Var, boolean z) {
        this.f0.g(xy1Var, z);
    }

    public w2 getAccessibilityManager() {
        return this.n.k;
    }

    public final id getAndroidViewsHandler() {
        return this.c0;
    }

    public lp getAutofillTree() {
        return this.L;
    }

    public p60 getClipboard() {
        return this.n.n;
    }

    public q60 getClipboardManager() {
        return this.n.m;
    }

    public final pb0 getComposeViewContext() {
        return this.n;
    }

    public final boolean getComposeViewContextIncrementedDuringInit$ui() {
        return this.P0;
    }

    public final Configuration getConfiguration() {
        return (Configuration) this.S.getValue();
    }

    public final ha getContentCaptureManager$ui() {
        return this.J;
    }

    public hi0 getCoroutineContext() {
        return this.z;
    }

    public as0 getDensity() {
        return (as0) this.w.getValue();
    }

    public l33 getEmbeddedViewFocusRect() {
        if (isFocused()) {
            ka1 ka1VarU = gg4.u((ka1) ((dh) getFocusOwner()).c);
            if (ka1VarU != null) {
                return gg4.v(ka1VarU);
            }
            return null;
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus != null) {
            return v91.a(viewFindFocus, this);
        }
        return null;
    }

    public y91 getFocusOwner() {
        return this.y;
    }

    @Override // android.view.View
    public final void getFocusedRect(Rect rect) {
        l33 embeddedViewFocusRect = getEmbeddedViewFocusRect();
        if (embeddedViewFocusRect != null) {
            rect.left = Math.round(embeddedViewFocusRect.a);
            rect.top = Math.round(embeddedViewFocusRect.b);
            rect.right = Math.round(embeddedViewFocusRect.c);
            rect.bottom = Math.round(embeddedViewFocusRect.d);
            return;
        }
        if (nt1.g(((dh) getFocusOwner()).e(6, null, l9.p), Boolean.TRUE)) {
            super.getFocusedRect(rect);
        } else {
            rect.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        }
    }

    public qa1 getFontFamilyResolver() {
        return (qa1) this.u0.getValue();
    }

    public pa1 getFontLoader() {
        return this.n.o;
    }

    public final t22 getFrameEndScheduler$ui() {
        return this.r;
    }

    public yh1 getGraphicsContext() {
        return this.K;
    }

    public bj1 getHapticFeedBack() {
        return this.n.q;
    }

    public boolean getHasPendingMeasureOrLayout() {
        return this.f0.b.C() || !this.f275u.isEmpty();
    }

    @Override // android.view.View
    public int getImportantForAutofill() {
        return 1;
    }

    public lr1 getInputModeManager() {
        lr1 lr1Var = this.w0;
        if (lr1Var == null) {
            lr1Var = new lr1(isInTouchMode() ? 1 : 2);
            this.w0 = lr1Var;
        }
        return lr1Var;
    }

    public final xe4 getInsetsWatcher() {
        return this.D;
    }

    public final long getLastMatrixRecalculationAnimationTime$ui() {
        return this.m0;
    }

    @Override // android.view.View, android.view.ViewParent
    public hy1 getLayoutDirection() {
        return (hy1) this.v0.getValue();
    }

    public e72 getLocaleList() {
        return (e72) this.T.getValue();
    }

    public long getMeasureIteration() {
        ab2 ab2Var = this.f0;
        if (!ab2Var.c) {
            ar1.a("measureIteration should be only used during the measure/layout pass");
        }
        return ab2Var.g;
    }

    public od2 getModifierLocalManager() {
        return this.x0;
    }

    public q9 getOutOfFrameExecutor() {
        if (isAttachedToWindow()) {
            return this;
        }
        return null;
    }

    public cv2 getPlacementScope() {
        int i = ev2.b;
        return new l82(1, this);
    }

    public final df1 getPlayNavigationSoundEffect$ui() {
        return this.K0;
    }

    public yv2 getPointerIconService() {
        return this.T0;
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui, reason: not valid java name */
    public final aq1 m9getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui() {
        return this.q;
    }

    public n33 getRectManager() {
        return this.G;
    }

    public l83 getRetainedValuesStore() {
        return this.t;
    }

    public xy1 getRoot() {
        return this.E;
    }

    public final boolean getScrollCaptureInProgress$ui() {
        dd1 dd1Var;
        if (Build.VERSION.SDK_INT < 31 || (dd1Var = this.R0) == null) {
            return false;
        }
        return ((Boolean) ((ws2) dd1Var.o).getValue()).booleanValue();
    }

    public jh3 getSemanticsOwner() {
        return this.H;
    }

    public zy1 getSharedDrawScope() {
        return this.n.s;
    }

    public boolean getShowLayoutBounds() {
        return Build.VERSION.SDK_INT >= 30 ? xf.a.a(this) : this.b0;
    }

    public ur2 getSnapshotObserver() {
        return this.a0;
    }

    public rp3 getSoftwareKeyboardController() {
        bx3 bx3Var = this.t0;
        if (bx3Var != null) {
            return bx3Var;
        }
        getTextInputService();
        bx3 bx3Var2 = new bx3(27);
        this.t0 = bx3Var2;
        return bx3Var2;
    }

    public hx3 getTextInputService() {
        hx3 hx3Var = this.r0;
        if (hx3Var != null) {
            return hx3Var;
        }
        getLegacyTextInputServiceAndroid();
        hx3 hx3Var2 = new hx3();
        new AtomicReference(null);
        this.r0 = hx3Var2;
        return hx3Var2;
    }

    public by3 getTextToolbar() {
        bx3 bx3Var = this.y0;
        if (bx3Var != null) {
            return bx3Var;
        }
        bx3 bx3Var2 = new bx3(10);
        this.y0 = bx3Var2;
        return bx3Var2;
    }

    public final ha3 getUncaughtExceptionHandler$ui() {
        return null;
    }

    public nb4 getViewConfiguration() {
        return this.n.r;
    }

    public fd4 getWindowInfo() {
        return this.n.t;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0152 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x016a A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x017c A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x017f A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x018e A[Catch: all -> 0x0076, TRY_ENTER, TryCatch #0 {all -> 0x0076, blocks: (B:14:0x0034, B:16:0x003e, B:22:0x004e, B:38:0x007d, B:40:0x0081, B:42:0x0090, B:43:0x0096, B:44:0x00a1, B:53:0x00b4, B:55:0x00ba, B:123:0x018e, B:124:0x019a, B:25:0x0056, B:31:0x0062, B:34:0x006a), top: B:147:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01b2 A[Catch: all -> 0x01cd, TryCatch #3 {all -> 0x01cd, blocks: (B:125:0x019e, B:129:0x01aa, B:131:0x01b2, B:133:0x01bc, B:132:0x01b5), top: B:152:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01b5 A[Catch: all -> 0x01cd, TryCatch #3 {all -> 0x01cd, blocks: (B:125:0x019e, B:129:0x01aa, B:131:0x01b2, B:133:0x01bc, B:132:0x01b5), top: B:152:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e8 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00f9 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011b A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x012d A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0137 A[Catch: all -> 0x002b, TryCatch #1 {all -> 0x002b, blocks: (B:4:0x0018, B:6:0x0021, B:57:0x00c4, B:59:0x00ca, B:67:0x00db, B:72:0x00e8, B:73:0x00eb, B:75:0x00ef, B:77:0x00f5, B:79:0x00f9, B:81:0x00ff, B:84:0x0107, B:87:0x010f, B:88:0x011b, B:90:0x0121, B:92:0x0127, B:94:0x012d, B:96:0x0133, B:98:0x0137, B:99:0x013b, B:105:0x014e, B:107:0x0152, B:109:0x0159, B:116:0x016a, B:117:0x0174, B:119:0x017c, B:120:0x017f, B:121:0x0186), top: B:149:0x0018 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int h(android.view.MotionEvent r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q9.h(android.view.MotionEvent):int");
    }

    @Override // defpackage.op0
    public final void j(p22 p22Var) {
        u22 u22Var = this.s;
        if (u22Var != null) {
            x92 x92Var = (x92) u22Var.a.o;
            if (x92Var.n && !x92Var.p) {
                q20 q20Var = u22Var.d;
                if (q20Var != null) {
                    q20Var.cancel();
                }
                u22Var.d = null;
                return;
            }
            if (x92Var.o) {
                return;
            }
            if (!x92Var.p) {
                jx2.a("ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?");
            }
            if (!x92Var.q.i()) {
                jx2.a("Attempted to start retaining exited values with pending exited values");
            }
            x92Var.p = false;
        }
    }

    public final void k(xy1 xy1Var) {
        this.f0.r(xy1Var, false);
        ug2 ug2VarZ = xy1Var.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            k((xy1) objArr[i2]);
        }
    }

    public final boolean n(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        return 0.0f <= x && x <= ((float) getWidth()) && 0.0f <= y && y <= ((float) getHeight());
    }

    public final boolean o(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        return (motionEvent.getPointerCount() == 1 && (motionEvent2 = this.z0) != null && motionEvent2.getPointerCount() == motionEvent.getPointerCount() && motionEvent.getRawX() == motionEvent2.getRawX() && motionEvent.getRawY() == motionEvent2.getRawY()) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        l83 l83Var;
        Object obj;
        super.onAttachedToWindow();
        if (!getRoot().H()) {
            getRoot().b(this);
        }
        setAttached(true);
        if (Build.VERSION.SDK_INT < 30) {
            setShowLayoutBounds(qv3.p());
        }
        this.D.onViewAttachedToWindow(this);
        if (!this.P0) {
            this.n.d();
        }
        int i = 0;
        this.P0 = false;
        k(getRoot());
        i(getRoot());
        getSnapshotObserver().a.d();
        q9 outOfFrameExecutor = getOutOfFrameExecutor();
        if (outOfFrameExecutor == null) {
            k21.n("Expected the view to be attached to window.");
            return;
        }
        outOfFrameExecutor.H(new i9(this, 3));
        this.n.c();
        pb0 pb0Var = this.n;
        pb0Var.f();
        cc4 cc4Var = pb0Var.f;
        t22 t22Var = this.r;
        if (cc4Var == null || t22Var == null) {
            l83Var = null;
        } else {
            bc4 viewModelStore = cc4Var.getViewModelStore();
            ac4 ac4Var = new ac4();
            tk0 tk0Var = tk0.b;
            viewModelStore.getClass();
            tk0Var.getClass();
            qd1 qd1Var = new qd1(viewModelStore, ac4Var, tk0Var);
            i50 i50VarA = y33.a(v22.class);
            String strB = i50VarA.b();
            if (strB == null) {
                k21.f("Local and anonymous classes can not be ViewModels");
                return;
            }
            v22 v22Var = (v22) qd1Var.B(i50VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
            Object parent = getParent();
            parent.getClass();
            int id = ((View) parent).getId();
            tf2 tf2Var = v22Var.b;
            Object objB = tf2Var.b(id);
            if (objB == null) {
                objB = new dg2(1);
                tf2Var.h(id, objB);
            }
            dg2 dg2Var = (dg2) objB;
            Object[] objArr = dg2Var.a;
            int i2 = dg2Var.b;
            while (true) {
                if (i >= i2) {
                    obj = null;
                    break;
                }
                obj = objArr[i];
                if (!((u22) obj).c) {
                    break;
                } else {
                    i++;
                }
            }
            u22 u22Var = (u22) obj;
            if (u22Var == null) {
                u22Var = new u22();
                dg2Var.a(u22Var);
            }
            u22Var.c = true;
            this.s = u22Var;
            l83Var = u22Var.b;
        }
        if (l83Var == null) {
            l83Var = w13.E;
        }
        this.t = l83Var;
        pe1 pe1Var = this.p0;
        if (pe1Var != null) {
            pe1Var.k(this.n);
            this.p0 = null;
        }
        h22 lifecycle = this.n.c().getLifecycle();
        lifecycle.a(this);
        lifecycle.a(this.J);
        getInputModeManager().a.setValue(new jr1(isInTouchMode() ? 1 : 2));
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        getViewTreeObserver().addOnScrollChangedListener(this);
        getViewTreeObserver().addOnTouchModeChangeListener(this);
        if (Build.VERSION.SDK_INT >= 31) {
            aa.a.b(this);
        }
        w8 autofillManager = getAutofillManager();
        if (autofillManager != null) {
            ((dg2) ((dh) getFocusOwner()).g).a(autofillManager);
            getSemanticsOwner().d.a(autofillManager);
        }
        ((dg2) ((dh) getFocusOwner()).g).a(this);
    }

    @Override // android.view.View
    public final boolean onCheckIsTextEditor() {
        if (this.s0.get() == null) {
            getLegacyTextInputServiceAndroid().getClass();
            return false;
        }
        mk0.b();
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        M(configuration);
    }

    @Override // android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        if (this.s0.get() == null) {
            getLegacyTextInputServiceAndroid().getClass();
            return null;
        }
        mk0.b();
        return null;
    }

    @Override // android.view.View
    public final void onCreateVirtualViewTranslationRequests(long[] jArr, int[] iArr, Consumer consumer) {
        gh3 gh3Var;
        ha haVar = this.J;
        haVar.getClass();
        for (long j : jArr) {
            ih3 ih3Var = (ih3) haVar.b().b((int) j);
            if (ih3Var != null && (gh3Var = ih3Var.a) != null) {
                z9.q();
                ViewTranslationRequest.Builder builderK = z9.k(haVar.n.getAutofillId(), gh3Var.f);
                Object objG = gh3Var.d.n.g(lh3.B);
                if (objG == null) {
                    objG = null;
                }
                List list = (List) objG;
                if (list != null) {
                    builderK.setValue("android:text", TranslationRequestValue.forText(new ff(n42.a(list, "\n", null, 62))));
                    consumer.accept(builderK.build());
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setAttached(false);
        this.D.onViewDetachedFromWindow(this);
        View view = this.x;
        if (l() && view != null) {
            removeView(view);
        }
        int i = Build.VERSION.SDK_INT;
        if (i > 28) {
            dg2 dg2Var = Y0;
            synchronized (dg2Var) {
                dg2Var.j(this);
            }
        }
        this.n.b();
        ip3 ip3Var = getSnapshotObserver().a;
        r6 r6Var = ip3Var.h;
        if (r6Var != null) {
            r6Var.g();
        }
        synchronized (ip3Var.g) {
            ug2 ug2Var = ip3Var.f;
            Object[] objArr = ug2Var.n;
            int i2 = ug2Var.p;
            for (int i3 = 0; i3 < i2; i3++) {
                hp3 hp3Var = (hp3) objArr[i3];
                hp3Var.e.a();
                hp3Var.f.a();
                hp3Var.l.a();
                hp3Var.m.clear();
            }
        }
        h22 lifecycle = this.n.c().getLifecycle();
        lifecycle.b(this.J);
        lifecycle.b(this);
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        getViewTreeObserver().removeOnScrollChangedListener(this);
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        u22 u22Var = this.s;
        if (u22Var != null) {
            u22Var.c = false;
        }
        this.s = null;
        if (i >= 31) {
            aa.a.a(this);
        }
        w8 autofillManager = getAutofillManager();
        if (autofillManager != null) {
            getSemanticsOwner().d.j(autofillManager);
            ((dg2) ((dh) getFocusOwner()).g).j(autofillManager);
        }
        n33 rectManager = getRectManager();
        rectManager.g = rectManager.d.c(0L, 0L, null, 0, 0);
        getRectManager().a();
        n33 rectManager2 = getRectManager();
        d9 d9Var = rectManager2.i;
        if (d9Var != null) {
            rectManager2.b.removeCallbacks(d9Var);
            rectManager2.i = null;
        }
        ((dg2) ((dh) getFocusOwner()).g).j(this);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z || hasFocus()) {
            return;
        }
        dh dhVar = (dh) getFocusOwner();
        n44.F0((ka1) dhVar.c, true);
        if (dhVar.f() != null) {
            ka1 ka1VarF = dhVar.f();
            dhVar.k(null);
            if (ka1VarF != null) {
                ka1VarF.H0(fa1.n, fa1.p);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.m0 = 0L;
        N();
        int i = Build.VERSION.SDK_INT;
        if (32 > i || i >= 34) {
            return;
        }
        M(getResources().getConfiguration());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("AndroidOwner:onLayout");
        try {
            this.m0 = 0L;
            this.f0.l(this.M0);
            this.d0 = null;
            N();
            id idVar = this.c0;
            if (idVar != null) {
                Trace.beginSection("AndroidOwner:viewLayout");
                idVar.layout(0, 0, i3 - i, i4 - i2);
                Trace.endSection();
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        ab2 ab2Var = this.f0;
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!getRoot().H()) {
                getRoot().b(this);
            }
            if (!isAttachedToWindow()) {
                k(getRoot());
            }
            long jF = f(i);
            long jF2 = f(i2);
            long jS = on4.s((int) (jF >>> 32), (int) (jF & 4294967295L), (int) (jF2 >>> 32), (int) (4294967295L & jF2));
            mf0 mf0Var = this.d0;
            if (mf0Var == null) {
                this.d0 = new mf0(jS);
                this.e0 = false;
            } else if (!mf0.b(mf0Var.a, jS)) {
                this.e0 = true;
            }
            ab2Var.s(jS);
            ab2Var.n();
            setMeasuredDimension(getRoot().T.p.n, getRoot().T.p.o);
            id idVar = this.c0;
            if (idVar != null) {
                Trace.beginSection("AndroidOwner:androidViewMeasure");
                idVar.measure(View.MeasureSpec.makeMeasureSpec(getRoot().T.p.n, 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().T.p.o, 1073741824));
                Trace.endSection();
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.view.View
    public final void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        if (!d() || viewStructure == null || this.Q0) {
            return;
        }
        C(viewStructure);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        int toolType = motionEvent.getToolType(i);
        if (!motionEvent.isFromSource(8194) && motionEvent.isFromSource(16386) && (toolType == 2 || toolType == 4)) {
            getPointerIconService().getClass();
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        if (this.p) {
            int[] iArr = v91.a;
            hy1 hy1Var = hy1.n;
            hy1 hy1Var2 = i != 0 ? i != 1 ? null : hy1.o : hy1Var;
            if (hy1Var2 != null) {
                hy1Var = hy1Var2;
            }
            setLayoutDirection(hy1Var);
        }
    }

    @Override // android.view.View
    public final void onScrollCaptureSearch(Rect rect, Point point, Consumer consumer) {
        dd1 dd1Var;
        if (Build.VERSION.SDK_INT < 31 || (dd1Var = this.R0) == null) {
            return;
        }
        jh3 semanticsOwner = getSemanticsOwner();
        hi0 coroutineContext = getCoroutineContext();
        ug2 ug2Var = new ug2(new af3[16]);
        kt4.i0(semanticsOwner.a(), 0, new ze3(1, 8, ug2.class, ug2Var, "add", "add(Ljava/lang/Object;)Z"));
        Arrays.sort(ug2Var.n, 0, ug2Var.p, new y80(0, new pe1[]{do2.z, do2.A}));
        int i = ug2Var.p;
        af3 af3Var = (af3) (i == 0 ? null : ug2Var.n[i - 1]);
        if (af3Var == null) {
            return;
        }
        ns1 ns1Var = af3Var.c;
        fb0 fb0Var = new fb0(af3Var.a, ns1Var, dm0.c(coroutineContext), dd1Var, this);
        mm2 mm2Var = af3Var.d;
        l33 l33VarH = zf5.D(mm2Var).H(mm2Var, true);
        long j = (((long) ns1Var.a) << 32) | (((long) ns1Var.b) & 4294967295L);
        ScrollCaptureTarget scrollCaptureTargetF = z9.f(this, dm0.M(ix.P(l33VarH)), new Point((int) (j >> 32), (int) (j & 4294967295L)), fb0Var);
        scrollCaptureTargetF.setScrollBounds(dm0.M(ns1Var));
        consumer.accept(scrollCaptureTargetF);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        N();
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public final void onTouchModeChanged(boolean z) {
        getInputModeManager().a.setValue(new jr1(z ? 1 : 2));
    }

    @Override // android.view.View
    public final void onVirtualViewTranslationResponses(LongSparseArray longSparseArray) {
        ha haVar = this.J;
        haVar.getClass();
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (nt1.g(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            nt1.t(haVar, longSparseArray);
        } else {
            haVar.n.post(new h7(2, haVar, longSparseArray));
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        boolean zP;
        this.O0 = true;
        super.onWindowFocusChanged(z);
        if (!z || Build.VERSION.SDK_INT >= 30 || getShowLayoutBounds() == (zP = qv3.p())) {
            return;
        }
        setShowLayoutBounds(zP);
        i(getRoot());
    }

    public final long p(long j) {
        D();
        long jB = xa2.b(this.k0, j);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (this.o0 >> 32)) + Float.intBitsToFloat((int) (jB >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (this.o0 & 4294967295L)) + Float.intBitsToFloat((int) (jB & 4294967295L));
        return (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & 4294967295L);
    }

    public final void q(boolean z) {
        ab2 ab2Var = this.f0;
        if (ab2Var.b.C() || ((ug2) ab2Var.e.n).p != 0) {
            Trace.beginSection("AndroidOwner:measureAndLayout");
            try {
                if (ab2Var.l(z ? this.M0 : this.N0)) {
                    requestLayout();
                }
                ab2Var.b(false);
                getRectManager().a();
                if (this.P) {
                    getViewTreeObserver().dispatchOnGlobalLayout();
                    this.P = false;
                }
            } finally {
                Trace.endSection();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        int i2 = 1;
        if (!isFocused()) {
            p91 p91VarD = v91.d(i);
            int i3 = p91VarD != null ? p91VarD.a : 7;
            Boolean boolE = ((dh) getFocusOwner()).e(i3, rect != null ? new l33(rect.left, rect.top, rect.right, rect.bottom) : null, new n9(i3, 0));
            Boolean bool = Boolean.TRUE;
            if (!nt1.g(boolE, bool)) {
                if (!nt1.g(((dh) getFocusOwner()).e(i3, null, new n9(i3, i2)), bool)) {
                    if (hasFocus() && (i3 == 1 || i3 == 2)) {
                        return ((dh) getFocusOwner()).j(i3);
                    }
                    return false;
                }
            }
        }
        return true;
    }

    public final void s(xy1 xy1Var, long j) {
        ab2 ab2Var = this.f0;
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            ab2Var.m(xy1Var, j);
            if (!ab2Var.b.C()) {
                ab2Var.b(false);
                getRectManager().a();
                this.N0.a();
                if (this.P) {
                    getViewTreeObserver().dispatchOnGlobalLayout();
                    this.P = false;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    public void setAccessibilityEventBatchIntervalMillis(long j) {
        this.I.f374u = j;
    }

    public final void setAndroidViewsHandler(id idVar) {
        this.c0 = idVar;
    }

    public final void setComposeViewContext(pb0 pb0Var) {
        pb0 pb0Var2 = this.n;
        if (pb0Var == pb0Var2) {
            return;
        }
        if (isAttachedToWindow()) {
            pb0Var2.b();
            pb0Var.d();
        }
        this.n = pb0Var;
    }

    public final void setComposeViewContextIncrementedDuringInit$ui(boolean z) {
        this.P0 = z;
    }

    public final void setConfiguration(Configuration configuration) {
        this.S.setValue(configuration);
    }

    public void setCoroutineContext(hi0 hi0Var) {
        this.z = hi0Var;
    }

    public final void setFrameEndScheduler$ui(t22 t22Var) {
        this.r = t22Var;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui(long j) {
        this.m0 = j;
    }

    public final void setOnReadyForComposition(pe1 pe1Var) {
        getDerivedIsAttached();
        if (isAttachedToWindow() || this.P0) {
            pe1Var.k(this.n);
        } else {
            this.p0 = pe1Var;
        }
    }

    public final void setPlayNavigationSoundEffect$ui(df1 df1Var) {
        this.K0 = df1Var;
    }

    /* JADX INFO: renamed from: setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui, reason: not valid java name */
    public final void m10setPrimaryDirectionalMotionAxisOverrider2epLt8$ui(aq1 aq1Var) {
        this.q = aq1Var;
    }

    public void setShowLayoutBounds(boolean z) {
        this.b0 = z;
    }

    public void setUncaughtExceptionHandler(ha3 ha3Var) {
        this.f0.getClass();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public final boolean t(int i) {
        if (i != 7 && i != 8) {
            Integer numC = v91.c(i);
            if (numC == null) {
                throw di0.m("Invalid focus direction");
            }
            int iIntValue = numC.intValue();
            ka1 ka1VarF = ((dh) getFocusOwner()).f();
            if (ka1VarF == null) {
                k21.n("findNextViewInEmbeddedView called when owner does not have anything focused.");
                return false;
            }
            Integer numC2 = v91.c(i);
            if (numC2 == null) {
                throw di0.m("Invalid focus direction");
            }
            int iIntValue2 = numC2.intValue();
            pb4 pb4Var = w80.R(ka1VarF).B;
            View interopView = pb4Var != null ? pb4Var.getInteropView() : null;
            View viewFindFocus = findFocus();
            FocusFinder focusFinder = FocusFinder.getInstance();
            View rootView = getRootView();
            rootView.getClass();
            View viewFindNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, viewFindFocus, iIntValue2);
            if (viewFindNextFocus == null || interopView == null || !ca.c(interopView, viewFindNextFocus)) {
                viewFindNextFocus = null;
            }
            if (viewFindNextFocus != null) {
                return v91.b(viewFindNextFocus, Integer.valueOf(iIntValue), null);
            }
        }
        return false;
    }

    public final void u() {
        dg2 dg2Var;
        w8 autofillManager;
        Object[] objArr;
        if (this.W) {
            ip3 ip3Var = getSnapshotObserver().a;
            synchronized (ip3Var.g) {
                try {
                    ug2 ug2Var = ip3Var.f;
                    int i = ug2Var.p;
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        objArr = ug2Var.n;
                        if (i2 >= i) {
                            break;
                        }
                        hp3 hp3Var = (hp3) objArr[i2];
                        hp3Var.d();
                        if (!hp3Var.f.j()) {
                            i3++;
                        } else if (i3 > 0) {
                            Object[] objArr2 = ug2Var.n;
                            objArr2[i2 - i3] = objArr2[i2];
                        }
                        i2++;
                    }
                    int i4 = i - i3;
                    Arrays.fill(objArr, i4, i, (Object) null);
                    ug2Var.p = i4;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.W = false;
        }
        id idVar = this.c0;
        if (idVar != null) {
            e(idVar);
        }
        if (d() && (autofillManager = getAutofillManager()) != null) {
            uf2 uf2Var = autofillManager.t;
            if (uf2Var.d == 0 && autofillManager.f394u) {
                autofillManager.n.r().commit();
                autofillManager.f394u = false;
            }
            if (uf2Var.d != 0) {
                autofillManager.f394u = true;
            }
        }
        while (this.C0.i() && this.C0.f(0) != null) {
            int i5 = this.C0.b;
            int i6 = 0;
            while (true) {
                dg2Var = this.C0;
                if (i6 < i5) {
                    ne1 ne1Var = (ne1) dg2Var.f(i6);
                    this.C0.n(i6, null);
                    if (ne1Var != null) {
                        ne1Var.a();
                    }
                    i6++;
                }
            }
            dg2Var.l(0, i5);
        }
    }

    public final void v(xy1 xy1Var) {
        v9 v9Var = this.I;
        v9Var.L = true;
        if (v9Var.p()) {
            v9Var.q(xy1Var);
        }
        ha haVar = this.J;
        haVar.t = true;
        haVar.d();
    }

    public final void w(xy1 xy1Var, boolean z, boolean z2, boolean z3) {
        xy1 xy1VarU;
        xy1 xy1VarU2;
        ab2 ab2Var = this.f0;
        if (!z) {
            if (ab2Var.r(xy1Var, z2) && z3) {
                I(xy1Var);
                return;
            }
            return;
        }
        eh ehVar = ab2Var.b;
        xy1 xy1Var2 = xy1Var.f415u;
        bz1 bz1Var = xy1Var.T;
        if (xy1Var2 == null) {
            ar1.b("Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope");
        }
        int iOrdinal = bz1Var.d.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                return;
            }
            if (iOrdinal != 2 && iOrdinal != 3) {
                if (iOrdinal != 4) {
                    p61.x();
                    return;
                }
                if (!bz1Var.e || z2) {
                    bz1Var.e = true;
                    bz1Var.p.H = true;
                    if (xy1Var.d0) {
                        return;
                    }
                    if ((nt1.g(xy1Var.J(), Boolean.TRUE) || ab2.i(xy1Var)) && ((xy1VarU = xy1Var.u()) == null || !xy1VarU.T.e)) {
                        ehVar.i(xy1Var, yt1.n);
                    } else if ((xy1Var.I() || ab2.j(xy1Var)) && ((xy1VarU2 = xy1Var.u()) == null || !xy1VarU2.q())) {
                        ehVar.i(xy1Var, yt1.p);
                    }
                    if (ab2Var.d || !z3) {
                        return;
                    }
                    I(xy1Var);
                    return;
                }
                return;
            }
        }
        ab2Var.h.c(new za2(xy1Var, true, z2));
    }

    public final void x(xy1 xy1Var, boolean z, boolean z2) {
        bz1 bz1Var = xy1Var.T;
        yt1 yt1Var = yt1.q;
        ab2 ab2Var = this.f0;
        if (!z) {
            ab2Var.getClass();
            int iOrdinal = bz1Var.d.ordinal();
            if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
                return;
            }
            if (iOrdinal != 4) {
                p61.x();
                return;
            }
            xy1 xy1VarU = xy1Var.u();
            boolean z3 = xy1VarU == null || xy1VarU.I();
            if (!z2) {
                if (xy1Var.q()) {
                    return;
                }
                if (xy1Var.p() && xy1Var.I() == z3 && xy1Var.I() == bz1Var.p.G) {
                    return;
                }
            }
            cb2 cb2Var = bz1Var.p;
            cb2Var.I = true;
            cb2Var.J = true;
            if (!xy1Var.d0 && cb2Var.G && z3) {
                if ((xy1VarU == null || !xy1VarU.p()) && (xy1VarU == null || !xy1VarU.q())) {
                    ab2Var.b.i(xy1Var, yt1Var);
                }
                if (ab2Var.d) {
                    return;
                }
                I(null);
                return;
            }
            return;
        }
        eh ehVar = ab2Var.b;
        int iOrdinal2 = bz1Var.d.ordinal();
        if (iOrdinal2 != 0) {
            if (iOrdinal2 == 1) {
                return;
            }
            if (iOrdinal2 != 2) {
                if (iOrdinal2 == 3) {
                    return;
                }
                if (iOrdinal2 != 4) {
                    p61.x();
                    return;
                }
            }
        }
        if ((bz1Var.e || bz1Var.f) && !z2) {
            return;
        }
        bz1Var.f = true;
        bz1Var.g = true;
        cb2 cb2Var2 = bz1Var.p;
        cb2Var2.I = true;
        cb2Var2.J = true;
        if (xy1Var.d0) {
            return;
        }
        xy1 xy1VarU2 = xy1Var.u();
        if (nt1.g(xy1Var.J(), Boolean.TRUE) && ((xy1VarU2 == null || !xy1VarU2.T.e) && (xy1VarU2 == null || !xy1VarU2.T.f))) {
            ehVar.i(xy1Var, yt1.o);
        } else if (xy1Var.I() && ((xy1VarU2 == null || !xy1VarU2.p()) && (xy1VarU2 == null || !xy1VarU2.q()))) {
            ehVar.i(xy1Var, yt1Var);
        }
        if (ab2Var.d) {
            return;
        }
        I(null);
    }

    public final void y() {
        v9 v9Var = this.I;
        v9Var.L = true;
        Handler handler = v9Var.q.getHandler();
        if (handler != null && v9Var.p() && !v9Var.W) {
            v9Var.W = true;
            handler.post(v9Var.Z);
        }
        ha haVar = this.J;
        haVar.t = true;
        haVar.d();
    }

    public v8 getAutofill() {
        return this.U;
    }

    public w8 getAutofillManager() {
        return this.V;
    }

    public sa getDragAndDropManager() {
        return this.A;
    }

    public tf2 getLayoutNodes() {
        return this.F;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        addView(view, -1);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.width = i;
        layoutParamsGenerateDefaultLayoutParams.height = i2;
        addViewInLayout(view, -1, layoutParamsGenerateDefaultLayoutParams, true);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, i, layoutParams, true);
    }

    @ks0
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui$annotations() {
    }

    public static /* synthetic */ void getPlayNavigationSoundEffect$ui$annotations() {
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations, reason: not valid java name */
    public static /* synthetic */ void m8getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui$annotations() {
    }

    public static /* synthetic */ void getRoot$annotations() {
    }

    @ks0
    public static /* synthetic */ void getTextInputService$annotations() {
    }

    public static /* synthetic */ void getWindowInfo$annotations() {
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, -1, layoutParams, true);
    }

    public ia3 getRootForTest() {
        return this;
    }

    public View getView() {
        return this;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    public final void setUncaughtExceptionHandler$ui(ha3 ha3Var) {
    }
}
