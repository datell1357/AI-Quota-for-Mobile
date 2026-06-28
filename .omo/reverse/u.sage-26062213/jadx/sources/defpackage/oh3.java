package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oh3 {
    public final String a;
    public final df1 b;
    public final boolean c;

    public oh3(String str, df1 df1Var) {
        this.a = str;
        this.b = df1Var;
    }

    public final String toString() {
        return di0.u("AccessibilityKey: ", this.a);
    }

    public /* synthetic */ oh3(String str) {
        this(str, kh3.w);
    }

    public oh3(String str, int i) {
        this(str);
        this.c = true;
    }

    public oh3(String str, boolean z, df1 df1Var) {
        this(str, df1Var);
        this.c = z;
    }
}
