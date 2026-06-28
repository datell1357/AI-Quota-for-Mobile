package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vj4 {
    public static String a(String str, Object... objArr) {
        int length;
        int iIndexOf;
        StringBuilder sb = new StringBuilder(str.length() + (objArr.length * 16));
        int i = 0;
        int i2 = 0;
        while (true) {
            length = objArr.length;
            if (i >= length || (iIndexOf = str.indexOf("%s", i2)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i2, iIndexOf);
            sb.append(b(objArr[i]));
            i2 = iIndexOf + 2;
            i++;
        }
        sb.append((CharSequence) str, i2, str.length());
        if (i < length) {
            String str2 = " [";
            while (i < objArr.length) {
                sb.append(str2);
                sb.append(b(objArr[i]));
                i++;
                str2 = ", ";
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static String b(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            String strY = di0.y(new StringBuilder(name.length() + 1 + String.valueOf(hexString).length()), name, "@", hexString);
            Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strY), (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder sb = new StringBuilder(strY.length() + 8 + name2.length() + 1);
            di0.E(sb, "<", strY, " threw ", name2);
            sb.append(">");
            return sb.toString();
        }
    }

    public static ls4 c(Object obj) {
        if (obj == null) {
            return ls4.g;
        }
        if (obj instanceof String) {
            return new ss4((String) obj);
        }
        if (obj instanceof Double) {
            return new eq4((Double) obj);
        }
        if (obj instanceof Long) {
            return new eq4(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new eq4(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new oo4((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                k21.f("Invalid value type");
                return null;
            }
            vn4 vn4Var = new vn4();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                vn4Var.n(vn4Var.l(), c(it.next()));
            }
            return vn4Var;
        }
        cs4 cs4Var = new cs4();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            ls4 ls4VarC = c(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                cs4Var.f((String) string, ls4VarC);
            }
        }
        return cs4Var;
    }

    public static ls4 d(p55 p55Var) {
        if (p55Var == null) {
            return ls4.f;
        }
        int iB = p55Var.B() - 1;
        if (iB == 1) {
            return p55Var.v() ? new ss4(p55Var.w()) : ls4.m;
        }
        if (iB == 2) {
            return p55Var.z() ? new eq4(Double.valueOf(p55Var.A())) : new eq4(null);
        }
        if (iB == 3) {
            return p55Var.x() ? new oo4(Boolean.valueOf(p55Var.y())) : new oo4(null);
        }
        if (iB != 4) {
            k21.f("Unknown type found. Cannot convert entity");
            return null;
        }
        List listT = p55Var.t();
        ArrayList arrayList = new ArrayList();
        Iterator it = listT.iterator();
        while (it.hasNext()) {
            arrayList.add(d((p55) it.next()));
        }
        return new ns4(p55Var.u(), arrayList);
    }
}
