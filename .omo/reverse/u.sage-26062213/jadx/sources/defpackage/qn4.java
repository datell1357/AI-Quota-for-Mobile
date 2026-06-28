package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qn4 implements xo4 {
    public final rn4 a;

    static {
        kn4 kn4Var = kn4.a;
        int i = um4.a;
    }

    public qn4(rn4 rn4Var) {
        this.a = rn4Var;
    }

    public final rn4 a(InputStream inputStream, kn4 kn4Var) throws fo4 {
        cn4 cn4VarH = cn4.h(inputStream, BlockstoreClient.MAX_SIZE);
        int i = rn4.zzd;
        rn4 rn4VarI = this.a.i();
        try {
            cp4 cp4VarA = zo4.c.a(rn4VarI.getClass());
            e50 e50Var = cn4VarH.c;
            if (e50Var == null) {
                e50Var = new e50(cn4VarH);
            }
            cp4VarA.f(rn4VarI, e50Var, kn4Var);
            cp4VarA.h(rn4VarI);
            cn4VarH.m(0);
            if (rn4.q(rn4VarI, true)) {
                return rn4VarI;
            }
            throw new hp4().a();
        } catch (fo4 e) {
            if (e.n) {
                throw new fo4(e.getMessage(), e);
            }
            throw e;
        } catch (hp4 e2) {
            throw e2.a();
        } catch (IOException e3) {
            if (e3.getCause() instanceof fo4) {
                throw ((fo4) e3.getCause());
            }
            throw new fo4(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof fo4) {
                throw ((fo4) e4.getCause());
            }
            throw e4;
        }
    }
}
