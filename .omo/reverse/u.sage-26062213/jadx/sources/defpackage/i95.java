package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i95 {
    public static final i95 c = new i95(b95.b, z85.A());
    public final b95 a;
    public final z85 b;

    public i95(b95 b95Var, z85 z85Var) {
        b95Var.getClass();
        this.a = b95Var;
        this.b = z85Var;
    }

    public static i95 a(cn4 cn4Var, boolean z) throws fo4 {
        b95 b95VarA;
        int iC = cn4Var.C();
        if (iC > 1) {
            StringBuilder sb = new StringBuilder(String.valueOf(iC).length() + 44);
            sb.append("Unsupported version: ");
            sb.append(iC);
            sb.append(". Current version is: 1");
            throw new fo4(sb.toString());
        }
        cn4Var.C();
        int iA = cn4Var.a(cn4Var.A());
        kn4 kn4Var = kn4.a;
        int i = um4.a;
        z85 z85VarZ = z85.z(cn4Var, kn4.b);
        cn4Var.b(iA);
        el0 el0Var = new el0();
        Inflater inflater = (Inflater) el0Var.o;
        try {
            if (z) {
                int iA2 = cn4Var.a(cn4Var.A());
                int iC2 = cn4Var.c();
                try {
                    b95VarA = b95.a(cn4.h(new InflaterInputStream(new fr0(el0Var, cn4Var), inflater, iC2 < 0 ? 4096 : Math.min(iC2, BlockstoreClient.MAX_SIZE)), BlockstoreClient.MAX_SIZE));
                    inflater.reset();
                    if (cn4Var.c() != 0) {
                        throw new fo4("Unexpected bytes remaining after FlagsBlob parsing.");
                    }
                    cn4Var.b(iA2);
                } finally {
                }
            } else {
                inflater.setInput(cn4Var.z());
                try {
                    b95VarA = b95.a(cn4.h(new fr0(el0Var, 2), BlockstoreClient.MAX_SIZE));
                } finally {
                }
            }
            el0Var.close();
            return new i95(b95VarA, z85VarZ);
        } finally {
            try {
                el0Var.close();
            } catch (Throwable th) {
                th.addSuppressed(th);
            }
        }
    }
}
