package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yb1 {
    public static final yb1 d = new yb1("", "", false);
    public static final yb1 e = new yb1("\n", "  ", true);
    public final String a;
    public final String b;
    public final boolean c;

    public yb1(String str, String str2, boolean z) {
        Objects.requireNonNull(str, "newline == null");
        if (!str.matches("[\r\n]*")) {
            k21.f("Only combinations of \\n and \\r are allowed in newline.");
            throw null;
        }
        if (!str2.matches("[ \t]*")) {
            k21.f("Only combinations of spaces and tabs are allowed in indent.");
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = z;
    }
}
