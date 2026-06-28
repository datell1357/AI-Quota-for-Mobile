package defpackage;

import java.util.Locale;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uj3 {
    public final iz3 a;
    public final q94 b;

    public uj3(iz3 iz3Var, q94 q94Var) {
        iz3Var.getClass();
        q94Var.getClass();
        this.a = iz3Var;
        this.b = q94Var;
    }

    public final lj3 a(lj3 lj3Var) {
        String str;
        this.b.getClass();
        UUID uuidRandomUUID = UUID.randomUUID();
        uuidRandomUUID.getClass();
        String string = uuidRandomUUID.toString();
        string.getClass();
        String lowerCase = gt3.w0(string, "-", "").toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String str2 = (lj3Var == null || (str = lj3Var.b) == null) ? lowerCase : str;
        int i = lj3Var != null ? lj3Var.c + 1 : 0;
        this.a.getClass();
        return new lj3(lowerCase, str2, i, iz3.a().b);
    }
}
