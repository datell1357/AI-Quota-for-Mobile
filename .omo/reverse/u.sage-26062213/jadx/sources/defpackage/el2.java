package defpackage;

import java.util.Locale;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class el2 extends ou {
    @Override // defpackage.ou, defpackage.ih0
    public final void a(ku kuVar, jh0 jh0Var) throws mh0 {
        String str = jh0Var.a;
        String str2 = kuVar.q;
        if (!str.equals(str2) && !ou.e(str2, str)) {
            throw new mh0(cm1.a("Illegal domain attribute \"" + str2 + "\". Domain of origin: \"" + str + "\""));
        }
        if (str.contains(".")) {
            int iCountTokens = new StringTokenizer(str2, ".").countTokens();
            String upperCase = str2.toUpperCase(Locale.ROOT);
            if (upperCase.endsWith(".COM") || upperCase.endsWith(".EDU") || upperCase.endsWith(".NET") || upperCase.endsWith(".GOV") || upperCase.endsWith(".MIL") || upperCase.endsWith(".ORG") || upperCase.endsWith(".INT")) {
                if (iCountTokens >= 2) {
                    return;
                }
                throw new mh0(cm1.a("Domain attribute \"" + str2 + "\" violates the Netscape cookie specification for special domains"));
            }
            if (iCountTokens >= 3) {
                return;
            }
            throw new mh0(cm1.a("Domain attribute \"" + str2 + "\" violates the Netscape cookie specification"));
        }
    }

    @Override // defpackage.ou, defpackage.ih0
    public final boolean b(ku kuVar, jh0 jh0Var) {
        String str = jh0Var.a;
        String str2 = kuVar.q;
        if (str2 == null) {
            return false;
        }
        return str.endsWith(str2);
    }

    @Override // defpackage.ou, defpackage.ih0
    public final void c(ku kuVar, String str) throws q92 {
        if (ht4.v(str)) {
            throw new q92(cm1.a("Blank or null value for domain attribute"));
        }
        kuVar.c(str);
    }

    @Override // defpackage.ou, defpackage.u80
    public final String d() {
        return "domain";
    }
}
