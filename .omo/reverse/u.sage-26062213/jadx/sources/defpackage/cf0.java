package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cf0 {
    public final Object a;
    public final Object b;
    public final Object c;
    public Object d;
    public final Object e;

    public cf0(Context context, qd1 qd1Var) {
        this.a = qd1Var;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.b = applicationContext;
        this.c = new Object();
        this.e = new LinkedHashSet();
    }

    public qi2 a() {
        qi2 qi2VarB = b();
        qi2VarB.getClass();
        gg ggVar = qi2VarB.o;
        for (Map.Entry entry : ((LinkedHashMap) this.c).entrySet()) {
            String str = (String) entry.getKey();
            wh2 wh2Var = (wh2) entry.getValue();
            str.getClass();
            wh2Var.getClass();
            ggVar.getClass();
            ((LinkedHashMap) ggVar.d).put(str, wh2Var);
        }
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        final int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            final oi2 oi2Var = (oi2) obj;
            oi2Var.getClass();
            ggVar.getClass();
            ArrayList arrayListB = se0.B((LinkedHashMap) ggVar.d, new pe1() { // from class: ri2
                @Override // defpackage.pe1
                public final Object k(Object obj2) {
                    boolean zContains;
                    int i3 = i;
                    oi2 oi2Var2 = oi2Var;
                    String str2 = (String) obj2;
                    switch (i3) {
                        case 0:
                            str2.getClass();
                            zContains = oi2Var2.c().contains(str2);
                            break;
                        default:
                            str2.getClass();
                            zContains = oi2Var2.c().contains(str2);
                            break;
                    }
                    return Boolean.valueOf(!zContains);
                }
            });
            if (!arrayListB.isEmpty()) {
                throw new IllegalArgumentException(("Deep link " + oi2Var.a + " can't be used to open destination " + ((qi2) ggVar.b) + ".\nFollowing required arguments are missing: " + arrayListB).toString());
            }
            ((ArrayList) ggVar.c).add(oi2Var);
        }
        Iterator it = ((LinkedHashMap) this.e).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            ((Number) entry2.getKey()).intValue();
            entry2.getValue().getClass();
            mk0.b();
            return null;
        }
        String str2 = (String) this.b;
        if (str2 != null) {
            ggVar.getClass();
            if (zs3.I0(str2)) {
                k21.f("Cannot have an empty route");
                return null;
            }
            String strConcat = "android-app://androidx.navigation/".concat(str2);
            final oi2 oi2Var2 = new oi2(strConcat);
            final int i3 = 1;
            ArrayList arrayListB2 = se0.B((LinkedHashMap) ggVar.d, new pe1() { // from class: ri2
                @Override // defpackage.pe1
                public final Object k(Object obj2) {
                    boolean zContains;
                    int i32 = i3;
                    oi2 oi2Var22 = oi2Var2;
                    String str22 = (String) obj2;
                    switch (i32) {
                        case 0:
                            str22.getClass();
                            zContains = oi2Var22.c().contains(str22);
                            break;
                        default:
                            str22.getClass();
                            zContains = oi2Var22.c().contains(str22);
                            break;
                    }
                    return Boolean.valueOf(!zContains);
                }
            });
            if (!arrayListB2.isEmpty()) {
                StringBuilder sbA = di0.A("Cannot set route \"", str2, "\" for destination ");
                sbA.append((qi2) ggVar.b);
                sbA.append(". Following required arguments are missing: ");
                sbA.append(arrayListB2);
                throw new IllegalArgumentException(sbA.toString().toString());
            }
            ggVar.f = new nv3(new cc(21, strConcat));
            ggVar.a = strConcat.hashCode();
            ggVar.e = str2;
        }
        return qi2VarB;
    }

    public qi2 b() {
        return ((lk2) this.a).a();
    }

    public abstract Object c();

    public void d(Object obj) {
        synchronized (this.c) {
            Object obj2 = this.d;
            if (obj2 == null || !obj2.equals(obj)) {
                this.d = obj;
                ((c73) ((qd1) this.a).r).execute(new h7(8, o70.C0((LinkedHashSet) this.e), this));
            }
        }
    }

    public abstract void e();

    public abstract void f();

    public cf0(lk2 lk2Var, String str) {
        this.a = lk2Var;
        this.b = str;
        this.c = new LinkedHashMap();
        this.d = new ArrayList();
        this.e = new LinkedHashMap();
    }
}
