package defpackage;

import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lu extends f0 implements u80 {
    public final /* synthetic */ int a;

    public /* synthetic */ lu(int i) {
        this.a = i;
    }

    @Override // defpackage.f0, defpackage.ih0
    public void a(ku kuVar, jh0 jh0Var) throws mh0 {
        switch (this.a) {
            case 4:
                w80.L(kuVar, "Cookie");
                if (kuVar.f173u < 0) {
                    throw new mh0(cm1.a("Cookie version may not be negative"));
                }
                return;
            default:
                return;
        }
    }

    @Override // defpackage.f0, defpackage.ih0
    public boolean b(ku kuVar, jh0 jh0Var) {
        switch (this.a) {
            case 2:
                return !kuVar.t || jh0Var.d;
            default:
                return super.b(kuVar, jh0Var);
        }
    }

    @Override // defpackage.ih0
    public final void c(ku kuVar, String str) throws q92 {
        int i;
        switch (this.a) {
            case 0:
                return;
            case 1:
                if (str == null) {
                    throw new q92(cm1.a("Missing value for 'max-age' attribute"));
                }
                try {
                    int i2 = Integer.parseInt(str);
                    if (i2 < 0) {
                        throw new q92(cm1.a("Negative 'max-age' attribute: ".concat(str)));
                    }
                    kuVar.r = new Date((((long) i2) * 1000) + System.currentTimeMillis());
                    return;
                } catch (NumberFormatException unused) {
                    throw new q92(cm1.a("Invalid 'max-age' attribute: ".concat(str)));
                }
            case 2:
                kuVar.t = true;
                return;
            case 3:
                if (str == null) {
                    throw new q92(cm1.a("Missing value for version attribute"));
                }
                try {
                    i = Integer.parseInt(str);
                    break;
                } catch (NumberFormatException unused2) {
                    i = 0;
                }
                kuVar.f173u = i;
                return;
            default:
                if (str == null) {
                    throw new q92(cm1.a("Missing value for version attribute"));
                }
                if (str.trim().isEmpty()) {
                    throw new q92(cm1.a("Blank value for version attribute"));
                }
                try {
                    kuVar.f173u = Integer.parseInt(str);
                    return;
                } catch (NumberFormatException e) {
                    throw new q92(cm1.a("Invalid version: " + e.getMessage()));
                }
        }
    }

    @Override // defpackage.u80
    public final String d() {
        switch (this.a) {
        }
        return "version";
    }

    private final void e(ku kuVar, String str) {
    }
}
