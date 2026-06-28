package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ti2 extends cf0 {
    public final mk2 f;
    public final String g;
    public final ArrayList h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ti2(mk2 mk2Var, String str) {
        super(mk2Var.b(tv4.x(wi2.class)), (String) null);
        mk2Var.getClass();
        str.getClass();
        this.h = new ArrayList();
        this.f = mk2Var;
        this.g = str;
    }

    public final si2 g() {
        int iHashCode;
        si2 si2Var = (si2) super.a();
        ArrayList arrayList = this.h;
        arrayList.getClass();
        vi2 vi2Var = si2Var.s;
        vi2Var.getClass();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            qi2 qi2Var = (qi2) obj;
            if (qi2Var != null) {
                mq3 mq3Var = (mq3) vi2Var.f;
                si2 si2Var2 = (si2) vi2Var.e;
                gg ggVar = si2Var2.o;
                gg ggVar2 = qi2Var.o;
                int i2 = ggVar2.a;
                String str = (String) ggVar2.e;
                if (i2 == 0 && str == null) {
                    k21.f("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
                    return null;
                }
                String str2 = (String) ggVar.e;
                if (str2 != null && nt1.g(str, str2)) {
                    p61.t("Destination ", qi2Var, " cannot have the same route as graph ", si2Var2);
                    return null;
                }
                if (i2 == ggVar.a) {
                    p61.t("Destination ", qi2Var, " cannot have the same id as graph ", si2Var2);
                    return null;
                }
                qi2 qi2Var2 = (qi2) mq3Var.c(i2);
                if (qi2Var2 == qi2Var) {
                    continue;
                } else {
                    if (qi2Var.p != null) {
                        k21.n("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
                        return null;
                    }
                    if (qi2Var2 != null) {
                        qi2Var2.p = null;
                    }
                    qi2Var.p = si2Var2;
                    mq3Var.e(ggVar2.a, qi2Var);
                }
            }
        }
        String str3 = this.g;
        if (str3 == null) {
            if (((String) this.b) != null) {
                k21.n("You must set a start destination route");
                return null;
            }
            k21.n("You must set a start destination id");
            return null;
        }
        si2 si2Var3 = (si2) vi2Var.e;
        if (str3 != null) {
            if (str3.equals((String) si2Var3.o.e)) {
                p61.t("Start destination ", str3, " cannot use the same route as the graph ", si2Var3);
            } else if (zs3.I0(str3)) {
                k21.f("Cannot have an empty start destination route");
            } else {
                int i3 = qi2.r;
                iHashCode = "android-app://androidx.navigation/".concat(str3).hashCode();
            }
            return si2Var;
        }
        iHashCode = 0;
        vi2Var.b = iHashCode;
        vi2Var.d = str3;
        return si2Var;
    }
}
