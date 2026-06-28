package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f72 {
    public final g72 a;

    static {
        new LocaleList(new Locale[0]);
    }

    public f72(g72 g72Var) {
        this.a = g72Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f72) {
            return this.a.equals(((f72) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.a.hashCode();
    }

    public final String toString() {
        return this.a.a.toString();
    }
}
