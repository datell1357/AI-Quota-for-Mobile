package defpackage;

import java.io.IOException;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ju3 implements jb3 {
    public final ee1 n;

    public ju3(ee1 ee1Var) {
        ee1Var.getClass();
        this.n = ee1Var;
    }

    @Override // defpackage.jb3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final su3 k0(String str) {
        str.getClass();
        ee1 ee1Var = this.n;
        ee1Var.getClass();
        String string = zs3.Y0(str).toString();
        if (string.length() >= 3) {
            String upperCase = string.substring(0, 3).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            int iHashCode = upperCase.hashCode();
            if (iHashCode == 79487 ? upperCase.equals("PRA") : !(iHashCode == 81978 ? !upperCase.equals("SEL") : !(iHashCode == 85954 && upperCase.equals("WIT")))) {
                qu3 qu3Var = new qu3(ee1Var, str);
                qu3Var.q = new int[0];
                qu3Var.r = new long[0];
                qu3Var.s = new double[0];
                qu3Var.t = new String[0];
                qu3Var.f284u = new byte[0][];
                return qu3Var;
            }
        }
        return new ru3(ee1Var, str);
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.n.close();
    }
}
