package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.widget.NestedScrollView;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bd extends ViewGroup implements dl2, ya0, tr2, lo2 {
    public final int[] A;
    public long B;
    public ke4 C;
    public pe1 D;
    public final ad E;
    public final ad F;
    public pe1 G;
    public final int[] H;
    public int I;
    public int J;
    public final a13 K;
    public boolean L;
    public final xy1 M;
    public final tk2 n;
    public final View o;
    public final sr2 p;
    public ne1 q;
    public boolean r;
    public ne1 s;
    public ne1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public nd2 f29u;
    public pe1 v;
    public as0 w;
    public pe1 x;
    public p22 y;
    public yc3 z;

    public bd(Context context, yf1 yf1Var, int i, tk2 tk2Var, View view, sr2 sr2Var) {
        super(context);
        this.n = tk2Var;
        this.o = view;
        this.p = sr2Var;
        kg2 kg2Var = jf4.a;
        setTag(R.id.androidx_compose_ui_view_composition_context, yf1Var);
        int i2 = 0;
        setSaveFromParentEnabled(false);
        addView(view);
        pb4 pb4Var = (pb4) this;
        lb4.g(this, new uc(pb4Var, i2));
        fb4.c(this, this);
        this.q = da.A;
        this.s = da.z;
        this.t = da.y;
        this.f29u = kd2.b;
        this.w = se0.a();
        int i3 = 2;
        this.A = new int[2];
        this.B = 0L;
        int i4 = 1;
        this.E = new ad(pb4Var, i4);
        this.F = new ad(pb4Var, i2);
        this.H = new int[2];
        this.I = Integer.MIN_VALUE;
        this.J = Integer.MIN_VALUE;
        this.K = new a13();
        xy1 xy1Var = new xy1(3);
        xy1Var.B = pb4Var;
        nd2 nd2VarC = qj0.R(tk2Var).c(new gh(l9.w, true));
        fw2 fw2Var = new fw2();
        fw2Var.b = new wc(pb4Var, i3);
        ly lyVar = new ly();
        ly lyVar2 = fw2Var.c;
        if (lyVar2 != null) {
            lyVar2.o = null;
        }
        fw2Var.c = lyVar;
        lyVar.o = fw2Var;
        setOnRequestDisallowInterceptTouchEvent$ui(lyVar);
        nd2 nd2VarC2 = qn0.C(k75.u(nd2VarC.c(fw2Var), new yc(pb4Var, xy1Var, pb4Var)), new vc(pb4Var, xy1Var, i3)).c(new wx(new wc(pb4Var, i4)));
        xy1Var.f0(this.f29u.c(nd2VarC2));
        this.v = new oc(i3, xy1Var, nd2VarC2);
        xy1Var.b0(this.w);
        this.x = new c8(5, xy1Var);
        xy1Var.Z = new vc(pb4Var, xy1Var, i2);
        xy1Var.a0 = new wc(pb4Var, i2);
        xy1Var.e0(new xc(pb4Var, xy1Var));
        this.M = xy1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ur2 getSnapshotObserver() {
        if (!isAttachedToWindow()) {
            ar1.b("Expected AndroidViewHolder to be attached when observing reads.");
        }
        return ((q9) this.p).getSnapshotObserver();
    }

    public static final int k(pb4 pb4Var, int i, int i2, int i3) {
        return (i3 >= 0 || i == i2) ? View.MeasureSpec.makeMeasureSpec(ix.k(i3, i, i2), 1073741824) : (i3 != -2 || i2 == Integer.MAX_VALUE) ? (i3 != -1 || i2 == Integer.MAX_VALUE) ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(i2, 1073741824) : View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE);
    }

    public static nr1 l(nr1 nr1Var, int i, int i2, int i3, int i4) {
        int i5 = nr1Var.a - i;
        if (i5 < 0) {
            i5 = 0;
        }
        int i6 = nr1Var.b - i2;
        if (i6 < 0) {
            i6 = 0;
        }
        int i7 = nr1Var.c - i3;
        if (i7 < 0) {
            i7 = 0;
        }
        int i8 = nr1Var.d - i4;
        return nr1.b(i5, i6, i7, i8 >= 0 ? i8 : 0);
    }

    @Override // defpackage.cl2
    public final void a(View view, View view2, int i, int i2) {
        a13 a13Var = this.K;
        if (i2 == 1) {
            a13Var.c = i;
        } else {
            a13Var.b = i;
        }
    }

    @Override // defpackage.cl2
    public final void b(View view, int i) {
        a13 a13Var = this.K;
        if (i == 1) {
            a13Var.c = 0;
        } else {
            a13Var.b = 0;
        }
    }

    @Override // defpackage.dl2
    public final void c(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.o.isNestedScrollingEnabled()) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(i * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i2 * (-1.0f))) & 4294967295L);
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(i3 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i4 * (-1.0f))) & 4294967295L);
            int i6 = i5 == 0 ? 1 : 2;
            xk2 xk2Var = this.n.a;
            xk2 xk2VarH0 = xk2Var != null ? xk2Var.H0() : null;
            long J = xk2VarH0 != null ? xk2VarH0.J(i6, jFloatToRawIntBits, jFloatToRawIntBits2) : 0L;
            iArr[0] = is0.V(Float.intBitsToFloat((int) (J >> 32))) * (-1);
            iArr[1] = is0.V(Float.intBitsToFloat((int) (J & 4294967295L))) * (-1);
        }
    }

    @Override // defpackage.cl2
    public final void d(int i, int i2, int[] iArr, int i3) {
        if (this.o.isNestedScrollingEnabled()) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(i2 * (-1.0f))) & 4294967295L) | (((long) Float.floatToRawIntBits(i * (-1.0f))) << 32);
            int i4 = i3 == 0 ? 1 : 2;
            xk2 xk2Var = this.n.a;
            xk2 xk2VarH0 = xk2Var != null ? xk2Var.H0() : null;
            long jK0 = xk2VarH0 != null ? xk2VarH0.k0(i4, jFloatToRawIntBits) : 0L;
            iArr[0] = is0.V(Float.intBitsToFloat((int) (jK0 >> 32))) * (-1);
            iArr[1] = is0.V(Float.intBitsToFloat((int) (jK0 & 4294967295L))) * (-1);
        }
    }

    @Override // defpackage.cl2
    public final void e(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4, int i5) {
        if (this.o.isNestedScrollingEnabled()) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(i * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i2 * (-1.0f))) & 4294967295L);
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(i3 * (-1.0f))) << 32) | (((long) Float.floatToRawIntBits(i4 * (-1.0f))) & 4294967295L);
            int i6 = i5 == 0 ? 1 : 2;
            xk2 xk2Var = this.n.a;
            xk2 xk2VarH0 = xk2Var != null ? xk2Var.H0() : null;
            if (xk2VarH0 != null) {
                xk2VarH0.J(i6, jFloatToRawIntBits, jFloatToRawIntBits2);
            }
        }
    }

    @Override // defpackage.ya0
    public final void f() {
        this.t.a();
    }

    @Override // defpackage.lo2
    public final ke4 g(View view, ke4 ke4Var) {
        this.C = new ke4(ke4Var);
        return m(ke4Var);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        int[] iArr = this.H;
        getLocationInWindow(iArr);
        int i = iArr[0];
        region.op(i, iArr[1], getWidth() + i, getHeight() + iArr[1], Region.Op.DIFFERENCE);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return getClass().getName();
    }

    public final as0 getDensity() {
        return this.w;
    }

    public final View getInteropView() {
        return this.o;
    }

    public final xy1 getLayoutNode() {
        return this.M;
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.o.getLayoutParams();
        return layoutParams == null ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    public final p22 getLifecycleOwner() {
        return this.y;
    }

    public final nd2 getModifier() {
        return this.f29u;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        a13 a13Var = this.K;
        return a13Var.c | a13Var.b;
    }

    public final pe1 getOnDensityChanged$ui() {
        return this.x;
    }

    public final pe1 getOnModifierChanged$ui() {
        return this.v;
    }

    public final pe1 getOnRequestDisallowInterceptTouchEvent$ui() {
        return this.G;
    }

    public final ne1 getRelease() {
        return this.t;
    }

    public final ne1 getReset() {
        return this.s;
    }

    public final yc3 getSavedStateRegistryOwner() {
        return this.z;
    }

    public final ne1 getUpdate() {
        return this.q;
    }

    public final View getView() {
        return this.o;
    }

    @Override // defpackage.ya0
    public final void h() {
        this.s.a();
        removeAllViewsInLayout();
    }

    @Override // defpackage.cl2
    public final boolean i(View view, View view2, int i, int i2) {
        return ((i & 2) == 0 && (i & 1) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        super.invalidateChildInParent(iArr, rect);
        if (!this.L) {
            this.M.C();
            return null;
        }
        this.o.postOnAnimation(new d9(2, this.F));
        return null;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.o.isNestedScrollingEnabled();
    }

    public final ke4 m(ke4 ke4Var) {
        he4 he4Var = ke4Var.a;
        nr1 nr1VarI = he4Var.i(-1);
        nr1 nr1Var = nr1.e;
        if (!nr1VarI.equals(nr1Var) || !he4Var.j(-9).equals(nr1Var) || he4Var.h() != null) {
            gr1 gr1Var = (gr1) this.M.S.d;
            if (gr1Var.h0.A) {
                long jG = ca.G(gr1Var.J(0L));
                int i = (int) (jG >> 32);
                if (i < 0) {
                    i = 0;
                }
                int i2 = (int) (jG & 4294967295L);
                if (i2 < 0) {
                    i2 = 0;
                }
                long jI = zf5.D(gr1Var).I();
                int i3 = (int) (jI >> 32);
                int i4 = (int) (jI & 4294967295L);
                long j = gr1Var.p;
                long jG2 = ca.G(gr1Var.J((((long) Float.floatToRawIntBits((int) (j >> 32))) << 32) | (((long) Float.floatToRawIntBits((int) (j & 4294967295L))) & 4294967295L)));
                int i5 = i3 - ((int) (jG2 >> 32));
                if (i5 < 0) {
                    i5 = 0;
                }
                int i6 = i4 - ((int) (4294967295L & jG2));
                int i7 = i6 >= 0 ? i6 : 0;
                if (i != 0 || i2 != 0 || i5 != 0 || i7 != 0) {
                    return ke4Var.a.r(i, i2, i5, i7);
                }
            }
        }
        return ke4Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.E.a();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onDescendantInvalidated(View view, View view2) {
        super.onDescendantInvalidated(view, view2);
        if (!this.L) {
            this.M.C();
        } else {
            this.o.postOnAnimation(new d9(2, this.F));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getSnapshotObserver().a.a(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.o.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        View view = this.o;
        if (view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            return;
        }
        if (view.getVisibility() == 8) {
            setMeasuredDimension(0, 0);
            return;
        }
        view.measure(i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        this.I = i;
        this.J = i2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.o.isNestedScrollingEnabled()) {
            return false;
        }
        ca.y(this.n.c(), null, null, new zc(z, this, is0.g(f * (-1.0f), f2 * (-1.0f)), null), 3);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        if (!this.o.isNestedScrollingEnabled()) {
            return false;
        }
        ca.y(this.n.c(), null, null, new uf3(this, is0.g(f * (-1.0f), f2 * (-1.0f)), null, 4), 3);
        return false;
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        pe1 pe1Var = this.D;
        if (pe1Var == null) {
            return true;
        }
        pe1Var.k(rect != null ? new l33(rect.left, rect.top, rect.right, rect.bottom) : null);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        pe1 pe1Var = this.G;
        if (pe1Var != null) {
            pe1Var.k(Boolean.valueOf(z));
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public final void setDensity(as0 as0Var) {
        if (as0Var != this.w) {
            this.w = as0Var;
            pe1 pe1Var = this.x;
            if (pe1Var != null) {
                pe1Var.k(as0Var);
            }
        }
    }

    public final void setLifecycleOwner(p22 p22Var) {
        if (p22Var != this.y) {
            this.y = p22Var;
            setTag(R.id.view_tree_lifecycle_owner, p22Var);
        }
    }

    public final void setModifier(nd2 nd2Var) {
        if (nd2Var != this.f29u) {
            this.f29u = nd2Var;
            pe1 pe1Var = this.v;
            if (pe1Var != null) {
                pe1Var.k(nd2Var);
            }
        }
    }

    public final void setOnDensityChanged$ui(pe1 pe1Var) {
        this.x = pe1Var;
    }

    public final void setOnModifierChanged$ui(pe1 pe1Var) {
        this.v = pe1Var;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui(pe1 pe1Var) {
        this.G = pe1Var;
    }

    public final void setRelease(ne1 ne1Var) {
        this.t = ne1Var;
    }

    public final void setReset(ne1 ne1Var) {
        this.s = ne1Var;
    }

    public final void setSavedStateRegistryOwner(yc3 yc3Var) {
        if (yc3Var != this.z) {
            this.z = yc3Var;
            setTag(R.id.view_tree_saved_state_registry_owner, yc3Var);
        }
    }

    public final void setUpdate(ne1 ne1Var) {
        this.q = ne1Var;
        this.r = true;
        this.E.a();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // defpackage.tr2
    public final boolean w() {
        return isAttachedToWindow();
    }
}
