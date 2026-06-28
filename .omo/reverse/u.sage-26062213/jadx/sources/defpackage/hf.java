package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hf {
    public static final hf n;
    public static final hf o;
    public static final hf p;
    public static final hf q;
    public static final hf r;
    public static final hf s;
    public static final hf t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ hf[] f127u;

    static {
        hf hfVar = new hf("Paragraph", 0);
        n = hfVar;
        hf hfVar2 = new hf("Span", 1);
        o = hfVar2;
        hf hfVar3 = new hf("VerbatimTts", 2);
        p = hfVar3;
        hf hfVar4 = new hf("Url", 3);
        q = hfVar4;
        hf hfVar5 = new hf("Link", 4);
        r = hfVar5;
        hf hfVar6 = new hf("Clickable", 5);
        s = hfVar6;
        hf hfVar7 = new hf("String", 6);
        t = hfVar7;
        f127u = new hf[]{hfVar, hfVar2, hfVar3, hfVar4, hfVar5, hfVar6, hfVar7};
    }

    public static hf valueOf(String str) {
        return (hf) Enum.valueOf(hf.class, str);
    }

    public static hf[] values() {
        return (hf[]) f127u.clone();
    }
}
