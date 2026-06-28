package defpackage;

import android.content.Intent;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sx implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Serializable s;
    public final /* synthetic */ Object t;

    public /* synthetic */ sx(Object obj, Object obj2, Object obj3, Object obj4, Serializable serializable, Object obj5, int i) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
        this.q = obj3;
        this.r = obj4;
        this.s = serializable;
        this.t = obj5;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        int i2 = 0;
        Object obj2 = this.t;
        Serializable serializable = this.s;
        Object obj3 = this.r;
        Object obj4 = this.q;
        Object obj5 = this.p;
        Object obj6 = this.o;
        switch (i) {
            case 0:
                dv2[] dv2VarArr = (dv2[]) obj6;
                List list = (List) obj5;
                gb2 gb2Var = (gb2) obj4;
                u33 u33Var = (u33) obj3;
                u33 u33Var2 = (u33) serializable;
                tx txVar = (tx) obj2;
                cv2 cv2Var = (cv2) obj;
                int length = dv2VarArr.length;
                int i3 = 0;
                while (i2 < length) {
                    dv2 dv2Var = dv2VarArr[i2];
                    dv2Var.getClass();
                    qx.b(cv2Var, dv2Var, (ya2) list.get(i3), gb2Var.getLayoutDirection(), u33Var.n, u33Var2.n, txVar.a);
                    i2++;
                    i3++;
                }
                break;
            default:
                wh1 wh1Var = (wh1) obj6;
                s92 s92Var = (s92) obj5;
                qi0 qi0Var = (qi0) obj4;
                n8 n8Var = (n8) obj3;
                y84 y84Var = (y84) serializable;
                m10 m10Var = (m10) obj2;
                if (!((Boolean) obj).booleanValue()) {
                    ca.y(qi0Var, null, null, new cl3(m10Var, wh1Var, null, 1), 3);
                    n8Var.i(y84Var, "calendar_sync_enabled", "false");
                } else {
                    ez3.a.getClass();
                    ra3.c(new Object[0]);
                    Intent signInIntent = wh1Var.f().getSignInIntent();
                    signInIntent.getClass();
                    Objects.toString(signInIntent.getComponent());
                    ra3.c(new Object[0]);
                    s92Var.a(signInIntent);
                    ra3.c(new Object[0]);
                }
                break;
        }
        return t64Var;
    }
}
