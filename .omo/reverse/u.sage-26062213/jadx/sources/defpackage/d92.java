package defpackage;

import java.util.Objects;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d92 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ y84 o;
    public final /* synthetic */ MainActivity p;
    public final /* synthetic */ xi2 q;

    public /* synthetic */ d92(y84 y84Var, MainActivity mainActivity, xi2 xi2Var, int i) {
        this.n = i;
        this.o = y84Var;
        this.p = mainActivity;
        this.q = xi2Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i = this.n;
        t64 t64Var = t64.a;
        xi2 xi2Var = this.q;
        MainActivity mainActivity = this.p;
        y84 y84Var = this.o;
        switch (i) {
            case 0:
                int i2 = MainActivity.C;
                we3 we3Var = we3.c;
                String strName = y84Var.name();
                we3Var.getClass();
                strName.getClass();
                String strConcat = "settings/".concat(strName);
                mainActivity.i().g(strConcat, "SettingsScreen");
                xi2.b(xi2Var, strConcat);
                break;
            default:
                int i3 = MainActivity.C;
                ra3 ra3Var = ez3.a;
                Objects.toString(y84Var);
                ra3Var.getClass();
                ra3.c(new Object[0]);
                mainActivity.j(y84Var).n(p43.b);
                ca.y(tv4.w(mainActivity), null, null, new p4(xi2Var, y84Var, null, 7), 3);
                break;
        }
        return t64Var;
    }
}
