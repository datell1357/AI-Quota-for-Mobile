package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kh3 extends xx1 implements df1 {
    public static final kh3 p;
    public static final kh3 q;
    public static final kh3 r;
    public static final kh3 s;
    public static final kh3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final kh3 f166u;
    public static final kh3 v;
    public static final kh3 w;
    public static final kh3 x;
    public final /* synthetic */ int o;

    static {
        int i = 2;
        p = new kh3(i, 0);
        q = new kh3(i, 1);
        r = new kh3(i, 2);
        s = new kh3(i, 3);
        t = new kh3(i, 4);
        f166u = new kh3(i, 5);
        v = new kh3(i, 6);
        w = new kh3(i, 7);
        x = new kh3(i, 8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kh3(int i, int i2) {
        super(i);
        this.o = i2;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        String str;
        ef1 ef1Var;
        switch (this.o) {
            case 0:
                return (String) obj;
            case 1:
                List list = (List) obj;
                List list2 = (List) obj2;
                if (list == null) {
                    return list2;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.addAll(list2);
                return arrayList;
            case 2:
                Float f = (Float) obj;
                ((Number) obj2).floatValue();
                return f;
            case 3:
                return (String) obj;
            case 4:
                if (obj == null && obj2 == null) {
                    return null;
                }
                mk0.b();
                return null;
            case 5:
                Boolean bool = (Boolean) obj;
                ((Boolean) obj2).booleanValue();
                return bool;
            case 6:
                o2 o2Var = (o2) obj;
                o2 o2Var2 = (o2) obj2;
                if (o2Var == null || (str = o2Var.a) == null) {
                    str = o2Var2.a;
                }
                if (o2Var == null || (ef1Var = o2Var.b) == null) {
                    ef1Var = o2Var2.b;
                }
                return new o2(str, ef1Var);
            case 7:
                return obj == null ? obj2 : obj;
            default:
                gh3 gh3Var = (gh3) obj2;
                Object objValueOf = Float.valueOf(0.0f);
                bh3 bh3Var = ((gh3) obj).d;
                oh3 oh3Var = lh3.f186u;
                Object objG = bh3Var.n.g(oh3Var);
                if (objG == null) {
                    objG = objValueOf;
                }
                float fFloatValue = ((Number) objG).floatValue();
                Object objG2 = gh3Var.d.n.g(oh3Var);
                if (objG2 != null) {
                    objValueOf = objG2;
                }
                return Integer.valueOf(Float.compare(fFloatValue, ((Number) objValueOf).floatValue()));
        }
    }
}
