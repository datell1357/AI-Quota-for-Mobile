package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d30 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ int n;
    public final /* synthetic */ ac2 o;

    public /* synthetic */ d30(ac2 ac2Var, int i) {
        this.n = i;
        this.o = ac2Var;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i = this.n;
        ac2 ac2Var = this.o;
        switch (i) {
            case 0:
                g30 g30Var = (g30) ac2Var;
                ArrayList arrayList = g30Var.f104u;
                if (g30Var.k() && arrayList.size() > 0) {
                    int i2 = 0;
                    if (!((f30) arrayList.get(0)).a.H) {
                        View view = g30Var.B;
                        if (view != null && view.isShown()) {
                            int size = arrayList.size();
                            while (i2 < size) {
                                Object obj = arrayList.get(i2);
                                i2++;
                                ((f30) obj).a.a();
                            }
                        } else {
                            g30Var.dismiss();
                        }
                    }
                    break;
                }
                break;
            default:
                kr3 kr3Var = (kr3) ac2Var;
                gc2 gc2Var = kr3Var.f171u;
                if (kr3Var.k() && !gc2Var.H) {
                    View view2 = kr3Var.z;
                    if (view2 != null && view2.isShown()) {
                        gc2Var.a();
                    } else {
                        kr3Var.dismiss();
                    }
                    break;
                }
                break;
        }
    }
}
