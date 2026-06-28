package defpackage;

import java.io.Serializable;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g62 implements n52, Serializable {
    public final v62 n;

    public g62(o00 o00Var, x00 x00Var) {
        this.n = new v62(o00Var, x00Var);
    }

    public final Object a(Object obj) {
        x33 x33VarI;
        v62 v62Var = this.n;
        x00 x00Var = v62Var.B;
        obj.getClass();
        int iD = v62Var.d(obj);
        i62 i62VarF = v62Var.f(iD);
        i62VarF.getClass();
        x00Var.getClass();
        try {
            try {
                if (i62VarF.o != 0 && (x33VarI = i62VarF.i(iD, obj)) != null) {
                    long jA = i62VarF.n.z.a();
                    Object objJ = i62VarF.j(x33VarI, jA);
                    if (objJ != null) {
                        i62VarF.o(x33VarI, jA);
                        i62VarF.A.getClass();
                        i62VarF.n.getClass();
                        return objJ;
                    }
                    o62 o62VarD = x33VarI.d();
                    if (o62VarD.a()) {
                        return i62VarF.y(x33VarI, obj, o62VarD);
                    }
                }
                return i62VarF.k(obj, iD, x00Var);
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause instanceof Error) {
                    throw new wi0((Error) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw new k64(cause);
                }
                throw e;
            }
        } finally {
            i62VarF.l();
        }
    }

    @Override // defpackage.ze1
    public final Object apply(Object obj) {
        try {
            return a(obj);
        } catch (ExecutionException e) {
            throw new k64(e.getCause());
        }
    }
}
