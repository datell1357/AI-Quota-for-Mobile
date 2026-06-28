package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mk implements pn2 {
    public static final mk a = new mk();
    public static final a51 b = a51.a("eventTimeMs");
    public static final a51 c = a51.a("eventCode");
    public static final a51 d = a51.a("complianceData");
    public static final a51 e = a51.a("eventUptimeMs");
    public static final a51 f = a51.a("sourceExtension");
    public static final a51 g = a51.a("sourceExtensionJsonProto3");
    public static final a51 h = a51.a("timezoneOffsetSeconds");
    public static final a51 i = a51.a("networkConnectionInfo");
    public static final a51 j = a51.a("experimentIds");

    @Override // defpackage.m01
    public final void a(Object obj, Object obj2) {
        n72 n72Var = (n72) obj;
        qn2 qn2Var = (qn2) obj2;
        qn2Var.g(b, ((no) n72Var).a);
        no noVar = (no) n72Var;
        qn2Var.a(c, noVar.b);
        qn2Var.a(d, noVar.c);
        qn2Var.g(e, noVar.d);
        qn2Var.a(f, noVar.e);
        qn2Var.a(g, noVar.f);
        qn2Var.g(h, noVar.g);
        qn2Var.a(i, noVar.h);
        qn2Var.a(j, noVar.i);
    }
}
