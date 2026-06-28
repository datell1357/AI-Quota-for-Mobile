package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class m42 implements tm3 {
    public static final Method J;
    public static final Method K;
    public final Handler E;
    public Rect G;
    public boolean H;
    public final mg I;
    public final Context n;
    public ListAdapter o;
    public fc2 p;
    public int r;
    public int s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f201u;
    public boolean v;
    public j42 x;
    public View y;
    public ac2 z;
    public int q = -2;
    public int w = 0;
    public final i42 A = new i42(this, 1);
    public final l42 B = new l42(this);
    public final k42 C = new k42(this);
    public final i42 D = new i42(this, 0);
    public final Rect F = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                J = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                K = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public m42(Context context, int i) {
        int resourceId;
        this.n = context;
        this.E = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, i13.k, i, 0);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.s = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.t = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        mg mgVar = new mg(context, null, i, 0);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(null, i13.o, i, 0);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            mgVar.setOverlapAnchor(typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        mgVar.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : zf5.H(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.I = mgVar;
        mgVar.setInputMethodMode(1);
    }

    @Override // defpackage.tm3
    public final void a() {
        int i;
        fc2 fc2Var;
        fc2 fc2Var2 = this.p;
        Context context = this.n;
        mg mgVar = this.I;
        if (fc2Var2 == null) {
            fc2 fc2Var3 = new fc2(context, !this.H);
            fc2Var3.setHoverListener((gc2) this);
            this.p = fc2Var3;
            fc2Var3.setAdapter(this.o);
            this.p.setOnItemClickListener(this.z);
            this.p.setFocusable(true);
            this.p.setFocusableInTouchMode(true);
            this.p.setOnItemSelectedListener(new f42(this));
            this.p.setOnScrollListener(this.C);
            mgVar.setContentView(this.p);
        }
        Drawable background = mgVar.getBackground();
        Rect rect = this.F;
        if (background != null) {
            background.getPadding(rect);
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.t) {
                this.s = -i2;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        int iA = g42.a(mgVar, this.y, this.s, mgVar.getInputMethodMode() == 2);
        int i3 = this.q;
        int iA2 = this.p.a(i3 != -2 ? i3 != -1 ? View.MeasureSpec.makeMeasureSpec(i3, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), iA);
        int paddingBottom = iA2 + (iA2 > 0 ? this.p.getPaddingBottom() + this.p.getPaddingTop() + i : 0);
        mgVar.getInputMethodMode();
        mgVar.setWindowLayoutType(1002);
        if (mgVar.isShowing()) {
            if (this.y.isAttachedToWindow()) {
                int width = this.q;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.y.getWidth();
                }
                mgVar.setOutsideTouchable(true);
                mgVar.update(this.y, this.r, this.s, width < 0 ? -1 : width, paddingBottom < 0 ? -1 : paddingBottom);
                return;
            }
            return;
        }
        int width2 = this.q;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.y.getWidth();
        }
        mgVar.setWidth(width2);
        mgVar.setHeight(paddingBottom);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = J;
            if (method != null) {
                try {
                    method.invoke(mgVar, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            h42.b(mgVar, true);
        }
        mgVar.setOutsideTouchable(true);
        mgVar.setTouchInterceptor(this.B);
        if (this.v) {
            mgVar.setOverlapAnchor(this.f201u);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = K;
            if (method2 != null) {
                try {
                    method2.invoke(mgVar, this.G);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            h42.a(mgVar, this.G);
        }
        mgVar.showAsDropDown(this.y, this.r, this.s, this.w);
        this.p.setSelection(-1);
        if ((!this.H || this.p.isInTouchMode()) && (fc2Var = this.p) != null) {
            fc2Var.setListSelectionHidden(true);
            fc2Var.requestLayout();
        }
        if (this.H) {
            return;
        }
        this.E.post(this.D);
    }

    public final void c(ListAdapter listAdapter) {
        j42 j42Var = this.x;
        if (j42Var == null) {
            this.x = new j42(this);
        } else {
            ListAdapter listAdapter2 = this.o;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(j42Var);
            }
        }
        this.o = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.x);
        }
        fc2 fc2Var = this.p;
        if (fc2Var != null) {
            fc2Var.setAdapter(this.o);
        }
    }

    @Override // defpackage.tm3
    public final void dismiss() {
        mg mgVar = this.I;
        mgVar.dismiss();
        mgVar.setContentView(null);
        this.p = null;
        this.E.removeCallbacks(this.A);
    }

    @Override // defpackage.tm3
    public final ListView g() {
        return this.p;
    }

    @Override // defpackage.tm3
    public final boolean k() {
        return this.I.isShowing();
    }
}
