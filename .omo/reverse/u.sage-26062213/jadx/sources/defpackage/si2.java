package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class si2 extends qi2 implements Iterable, fx1 {
    public static final /* synthetic */ int t = 0;
    public final vi2 s;

    public si2(wi2 wi2Var) {
        super(wi2Var);
        this.s = new vi2(this);
    }

    @Override // defpackage.qi2
    public final pi2 e(eh ehVar) {
        pi2 pi2VarE = super.e(ehVar);
        vi2 vi2Var = this.s;
        vi2Var.getClass();
        return vi2Var.r(pi2VarE, ehVar, false, (si2) vi2Var.e);
    }

    @Override // defpackage.qi2
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof si2) || !super.equals(obj)) {
            return false;
        }
        vi2 vi2Var = this.s;
        int iF = ((mq3) vi2Var.f).f();
        vi2 vi2Var2 = ((si2) obj).s;
        if (iF != ((mq3) vi2Var2.f).f() || vi2Var.b != vi2Var2.b) {
            return false;
        }
        mq3 mq3Var = (mq3) vi2Var.f;
        mq3Var.getClass();
        for (qi2 qi2Var : (af0) ci3.J(new g1(3, mq3Var))) {
            if (!qi2Var.equals(((mq3) vi2Var2.f).c(qi2Var.o.a))) {
                return false;
            }
        }
        return true;
    }

    public final pi2 f(eh ehVar, qi2 qi2Var) {
        return this.s.r(super.e(ehVar), ehVar, true, qi2Var);
    }

    public final pi2 g(String str, boolean z, qi2 qi2Var) {
        pi2 pi2VarG;
        str.getClass();
        vi2 vi2Var = this.s;
        vi2Var.getClass();
        si2 si2Var = (si2) vi2Var.e;
        pi2 pi2VarC = si2Var.o.c(str);
        ArrayList arrayList = new ArrayList();
        Iterator it = si2Var.iterator();
        while (true) {
            ui2 ui2Var = (ui2) it;
            pi2VarG = null;
            if (!ui2Var.hasNext()) {
                break;
            }
            qi2 qi2Var2 = (qi2) ui2Var.next();
            if (!nt1.g(qi2Var2, qi2Var)) {
                if (qi2Var2 instanceof si2) {
                    pi2VarG = ((si2) qi2Var2).g(str, false, si2Var);
                } else {
                    qi2Var2.getClass();
                    pi2VarG = qi2Var2.o.c(str);
                }
            }
            if (pi2VarG != null) {
                arrayList.add(pi2VarG);
            }
        }
        pi2 pi2Var = (pi2) o70.q0(arrayList);
        si2 si2Var2 = si2Var.p;
        if (si2Var2 != null && z && !si2Var2.equals(qi2Var)) {
            pi2VarG = si2Var2.g(str, true, si2Var);
        }
        return (pi2) o70.q0(ji.X(new pi2[]{pi2VarC, pi2Var, pi2VarG}));
    }

    @Override // defpackage.qi2
    public final int hashCode() {
        vi2 vi2Var = this.s;
        int iD = vi2Var.b;
        mq3 mq3Var = (mq3) vi2Var.f;
        int iF = mq3Var.f();
        for (int i = 0; i < iF; i++) {
            iD = (((iD * 31) + mq3Var.d(i)) * 31) + ((qi2) mq3Var.g(i)).hashCode();
        }
        return iD;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        vi2 vi2Var = this.s;
        vi2Var.getClass();
        return new ui2(vi2Var);
    }

    @Override // defpackage.qi2
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        vi2 vi2Var = this.s;
        String str = vi2Var.d;
        vi2Var.getClass();
        qi2 qi2VarO = (str == null || zs3.I0(str)) ? null : vi2Var.o(str, true);
        if (qi2VarO == null) {
            qi2VarO = vi2Var.n(vi2Var.b);
        }
        sb.append(" startDestination=");
        if (qi2VarO == null) {
            String str2 = vi2Var.d;
            if (str2 != null) {
                sb.append(str2);
            } else {
                String str3 = vi2Var.c;
                if (str3 != null) {
                    sb.append(str3);
                } else {
                    sb.append("0x" + Integer.toHexString(vi2Var.b));
                }
            }
        } else {
            sb.append("{");
            sb.append(qi2VarO.toString());
            sb.append("}");
        }
        return sb.toString();
    }
}
