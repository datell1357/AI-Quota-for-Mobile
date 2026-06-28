package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class jt0 {
    public static final String a = t72.i("DiagnosticsWrkr");

    public static final String a(ig4 ig4Var, tg4 tg4Var, xv3 xv3Var, List list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            og4 og4Var = (og4) it.next();
            bg4 bg4VarA = rg4.a(og4Var);
            String str = og4Var.a;
            xv3Var.getClass();
            String str2 = bg4VarA.a;
            int i = bg4VarA.b;
            str2.getClass();
            vv3 vv3Var = (vv3) gg4.N(xv3Var.a, true, false, new wv3(i, str2, 0));
            Integer numValueOf = vv3Var != null ? Integer.valueOf(vv3Var.c) : null;
            ig4Var.getClass();
            str.getClass();
            String strN0 = o70.n0((List) gg4.N(ig4Var.a, true, false, new ao0(str, 12)), ",", null, null, null, 62);
            tg4Var.getClass();
            String strN02 = o70.n0((List) gg4.N(tg4Var.a, true, false, new ao0(str, 24)), ",", null, null, null, 62);
            StringBuilder sbA = di0.A("\n", str, "\t ");
            sbA.append(og4Var.c);
            sbA.append("\t ");
            sbA.append(numValueOf);
            sbA.append("\t ");
            sbA.append(og4Var.b.name());
            sbA.append("\t ");
            sbA.append(strN0);
            sbA.append("\t ");
            sbA.append(strN02);
            sbA.append('\t');
            sb.append(sbA.toString());
        }
        return sb.toString();
    }
}
