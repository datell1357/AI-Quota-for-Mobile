package defpackage;

import android.view.DragEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sa implements View.OnDragListener, fw0 {
    public final gw0 a;
    public final fi b;
    public final ra c;

    public sa() {
        gw0 gw0Var = new gw0();
        gw0Var.D = 0L;
        this.a = gw0Var;
        this.b = new fi(0);
        this.c = new ra(this);
    }

    @Override // android.view.View.OnDragListener
    public final boolean onDrag(View view, DragEvent dragEvent) {
        wu4 wu4Var = new wu4(26, dragEvent);
        int action = dragEvent.getAction();
        a24 a24Var = a24.n;
        fi fiVar = this.b;
        gw0 gw0Var = this.a;
        switch (action) {
            case 1:
                s33 s33Var = new s33();
                c8 c8Var = new c8(wu4Var, gw0Var, s33Var);
                if (c8Var.k(gw0Var) == a24Var) {
                    qj0.e0(gw0Var, c8Var);
                }
                boolean z = s33Var.n;
                fiVar.getClass();
                zh zhVar = new zh(fiVar);
                while (zhVar.hasNext()) {
                    ((gw0) zhVar.next()).K0();
                }
                break;
            case 2:
                gw0Var.J0(wu4Var);
                break;
            case 4:
                c8 c8Var2 = new c8(12, wu4Var);
                if (c8Var2.k(gw0Var) == a24Var) {
                    qj0.e0(gw0Var, c8Var2);
                }
                fiVar.clear();
                break;
            case 5:
                gw0Var.H0();
                break;
            case 6:
                gw0Var.I0();
                break;
        }
        return false;
    }
}
