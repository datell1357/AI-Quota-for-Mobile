package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ep1 implements cj1, fd5 {
    public boolean n;

    public /* synthetic */ ep1(boolean z) {
        this.n = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.fd5
    public /* bridge */ /* synthetic */ Object a(ed5 ed5Var) {
        i95 i95VarA;
        InputStream inputStreamC = hu4.c(ed5Var);
        try {
            boolean z = this.n;
            int i = BlockstoreClient.MAX_SIZE;
            if (z) {
                if (inputStreamC instanceof nd5) {
                    long length = ((nd5) inputStreamC).zza().length();
                    if (length == 0) {
                        i = 512;
                    } else if (length < 4096) {
                        i = (int) length;
                    }
                }
                i95VarA = i95.a(cn4.h(inputStreamC, i), true);
            } else {
                i95VarA = i95.a(cn4.h(inputStreamC, BlockstoreClient.MAX_SIZE), false);
            }
            fl4.j(inputStreamC, null);
            return i95VarA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                fl4.j(inputStreamC, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.cj1
    public boolean i() {
        return this.n;
    }

    @Override // defpackage.cj1
    public boolean k(ln3 ln3Var) {
        return this.n;
    }
}
