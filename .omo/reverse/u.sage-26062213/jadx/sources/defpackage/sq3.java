package defpackage;

import android.content.res.Resources;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import u.sage.MainActivity;
import u.sage.R;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sq3 extends xh1 {
    public qq3 p;
    public final rq3 q;

    public sq3(MainActivity mainActivity) {
        super(mainActivity);
        this.q = new rq3(this, mainActivity);
    }

    @Override // defpackage.xh1
    public final void t() {
        int i;
        MainActivity mainActivity = (MainActivity) this.n;
        Resources.Theme theme = mainActivity.getTheme();
        theme.getClass();
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(R.attr.postSplashScreenTheme, typedValue, true) && (i = typedValue.resourceId) != 0) {
            mainActivity.setTheme(i);
        }
        if (Build.VERSION.SDK_INT < 33) {
            View decorView = mainActivity.getWindow().getDecorView();
            decorView.getClass();
            ((ViewGroup) decorView).setOnHierarchyChangeListener(this.q);
        }
    }

    @Override // defpackage.xh1
    public final void x(r6 r6Var) {
        this.o = r6Var;
        View viewFindViewById = ((MainActivity) this.n).findViewById(android.R.id.content);
        ViewTreeObserver viewTreeObserver = viewFindViewById.getViewTreeObserver();
        if (this.p != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.p);
        }
        qq3 qq3Var = new qq3(this, viewFindViewById, 1);
        this.p = qq3Var;
        viewTreeObserver.addOnPreDrawListener(qq3Var);
    }
}
