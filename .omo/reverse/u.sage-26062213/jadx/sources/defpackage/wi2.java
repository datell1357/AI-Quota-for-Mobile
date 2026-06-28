package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@kk2("navigation")
public class wi2 extends lk2 {
    public final mk2 c;

    public wi2(mk2 mk2Var) {
        mk2Var.getClass();
        this.c = mk2Var;
    }

    @Override // defpackage.lk2
    public final void d(List list, jj2 jj2Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yh2 yh2Var = (yh2) it.next();
            qi2 qi2Var = yh2Var.o;
            qi2Var.getClass();
            si2 si2Var = (si2) qi2Var;
            gg ggVar = si2Var.o;
            w33 w33Var = new w33();
            w33Var.n = yh2Var.f421u.a();
            vi2 vi2Var = si2Var.s;
            int i = vi2Var.b;
            String str = vi2Var.d;
            if (i == 0 && str == null) {
                ggVar.getClass();
                String strValueOf = String.valueOf(ggVar.a);
                strValueOf.getClass();
                if (((si2) vi2Var.e).o.a == 0) {
                    strValueOf = "the root navigation";
                }
                p61.e("no start destination defined via app:startDestination for ".concat(strValueOf));
                return;
            }
            qi2 qi2VarO = str != null ? vi2Var.o(str, false) : (qi2) ((mq3) vi2Var.f).c(i);
            if (qi2VarO == null) {
                if (vi2Var.c == null) {
                    String strValueOf2 = vi2Var.d;
                    if (strValueOf2 == null) {
                        strValueOf2 = String.valueOf(vi2Var.b);
                    }
                    vi2Var.c = strValueOf2;
                }
                String str2 = vi2Var.c;
                str2.getClass();
                k21.f(di0.v("navigation destination ", str2, " is not a direct child of this NavGraph"));
                return;
            }
            gg ggVar2 = qi2VarO.o;
            if (str != null) {
                if (!str.equals((String) ggVar2.e)) {
                    pi2 pi2VarC = ggVar2.c(str);
                    Bundle bundle = pi2VarC != null ? pi2VarC.o : null;
                    if (bundle != null && !bundle.isEmpty()) {
                        Bundle bundleX = qj0.x((js2[]) Arrays.copyOf(new js2[0], 0));
                        bundleX.putAll(bundle);
                        Bundle bundle2 = (Bundle) w33Var.n;
                        if (bundle2 != null) {
                            bundleX.putAll(bundle2);
                        }
                        w33Var.n = bundleX;
                    }
                }
                if (qi2VarO.d().isEmpty()) {
                    continue;
                } else {
                    ArrayList arrayListB = se0.B(qi2VarO.d(), new c60(1, w33Var));
                    if (!arrayListB.isEmpty()) {
                        p61.n("Cannot navigate to startDestination ", qi2VarO, ". Missing required arguments [", arrayListB, 93);
                        return;
                    }
                }
            }
            this.c.b(qi2VarO.n).d(tv4.E(b().b(qi2VarO, qi2VarO.a((Bundle) w33Var.n))), jj2Var);
        }
    }

    @Override // defpackage.lk2
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public si2 a() {
        return new si2(this);
    }
}
