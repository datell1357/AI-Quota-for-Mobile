package defpackage;

import android.os.Build;
import android.os.LocaleList;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i9 extends xx1 implements ne1 {
    public final /* synthetic */ int o;
    public final /* synthetic */ q9 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i9(q9 q9Var, int i) {
        super(0);
        this.o = i;
        this.p = q9Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = 0;
        switch (this.o) {
            case 0:
                Boolean bool = (Boolean) this.p.B.getValue();
                bool.getClass();
                return bool;
            case 1:
                id androidViewsHandler = this.p.getAndroidViewsHandler();
                if (androidViewsHandler != null) {
                    int childCount = androidViewsHandler.getChildCount();
                    while (i < childCount) {
                        View childAt = androidViewsHandler.getChildAt(i);
                        bd bdVar = childAt instanceof bd ? (bd) childAt : null;
                        if (bdVar != null && bdVar.isLayoutRequested()) {
                            bdVar.layout(bdVar.getLeft(), bdVar.getTop(), bdVar.getRight(), bdVar.getBottom());
                        }
                        i++;
                    }
                }
                return t64.a;
            case 2:
                LocaleList locales = this.p.getConfiguration().getLocales();
                f72 f72Var = new f72(new g72(locales));
                if (locales.isEmpty()) {
                    f72Var = new f72(new g72(LocaleList.getDefault()));
                }
                g72 g72Var = f72Var.a;
                int size = g72Var.a.size();
                ArrayList arrayList = new ArrayList(size);
                while (i < size) {
                    Locale locale = g72Var.a.get(i);
                    locale.getClass();
                    arrayList.add(new d72(locale));
                    i++;
                }
                return new e72(arrayList);
            case 3:
                qv3 qv3Var = q9.U0;
                q9 q9Var = this.p;
                if (Build.VERSION.SDK_INT > 28 && q9Var.isAttachedToWindow()) {
                    if (q9.Z0 == null) {
                        l7 l7Var = new l7(1);
                        q9.Z0 = l7Var;
                        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
                        try {
                            if (q9.V0 == null) {
                                q9.V0 = Class.forName("android.os.SystemProperties");
                            }
                            if (q9.X0 == null) {
                                StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                                Class cls = q9.V0;
                                q9.X0 = cls != null ? cls.getDeclaredMethod("addChangeCallback", Runnable.class) : null;
                            }
                            Method method = q9.X0;
                            if (method != null) {
                                method.invoke(null, l7Var);
                            }
                            break;
                        } catch (Throwable unused) {
                        }
                        StrictMode.setVmPolicy(vmPolicy);
                    }
                    dg2 dg2Var = q9.Y0;
                    synchronized (dg2Var) {
                        dg2Var.a(q9Var);
                    }
                }
                return t64.a;
            default:
                q9 q9Var2 = this.p;
                MotionEvent motionEvent = q9Var2.z0;
                if (motionEvent != null) {
                    boolean zContains = tv4.F(9, 7, 8).contains(Integer.valueOf(motionEvent.getActionMasked()));
                    MotionEvent motionEvent2 = q9Var2.z0;
                    if (motionEvent2 != null && motionEvent2.getButtonState() == 0) {
                        i = 1;
                    }
                    if (zContains && i != 0) {
                        q9Var2.A0 = SystemClock.uptimeMillis();
                        q9Var2.post(q9Var2.H0);
                    }
                }
                q9Var2.N0.a();
                return t64.a;
        }
    }
}
