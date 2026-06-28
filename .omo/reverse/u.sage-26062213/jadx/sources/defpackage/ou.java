package defpackage;

import java.util.Locale;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ou implements u80 {
    public final /* synthetic */ int a;

    public static boolean e(String str, String str2) {
        if (nq1.a.matcher(str2).matches() || nq1.a(str2)) {
            return false;
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        if (!str2.endsWith(str)) {
            return false;
        }
        int length = str2.length() - str.length();
        return length == 0 || (length > 1 && str2.charAt(length - 1) == '.');
    }

    @Override // defpackage.ih0
    public void a(ku kuVar, jh0 jh0Var) throws mh0 {
        switch (this.a) {
            case 0:
                w80.L(kuVar, "Cookie");
                String str = jh0Var.a;
                String str2 = kuVar.q;
                if (str2 == null) {
                    throw new mh0(cm1.a("Cookie 'domain' may not be null"));
                }
                if (str.equals(str2) || e(str2, str)) {
                    return;
                }
                throw new mh0(cm1.a("Illegal 'domain' attribute \"" + str2 + "\". Domain of origin: \"" + str + "\""));
            case 1:
                return;
            case 2:
                w80.L(kuVar, "Cookie");
                String str3 = jh0Var.a;
                String str4 = kuVar.q;
                if (str4 == null) {
                    throw new mh0(cm1.a("Cookie domain may not be null"));
                }
                if (str4.equals(str3)) {
                    return;
                }
                if (str4.indexOf(46) == -1) {
                    throw new mh0(cm1.a("Domain attribute \"" + str4 + "\" does not match the host \"" + str3 + "\""));
                }
                if (!str4.startsWith(".")) {
                    throw new mh0(cm1.a("Domain attribute \"" + str4 + "\" violates RFC 2109: domain must start with a dot"));
                }
                int iIndexOf = str4.indexOf(46, 1);
                if (iIndexOf < 0 || iIndexOf == str4.length() - 1) {
                    throw new mh0(cm1.a("Domain attribute \"" + str4 + "\" violates RFC 2109: domain must contain an embedded dot"));
                }
                String lowerCase = str3.toLowerCase(Locale.ROOT);
                if (lowerCase.endsWith(str4)) {
                    if (lowerCase.substring(0, lowerCase.length() - str4.length()).indexOf(46) == -1) {
                        return;
                    }
                    throw new mh0(cm1.a("Domain attribute \"" + str4 + "\" violates RFC 2109: host minus domain may not contain any dots"));
                }
                throw new mh0(cm1.a("Illegal domain attribute \"" + str4 + "\". Domain of origin: \"" + lowerCase + "\""));
            case 3:
            case 4:
                return;
            case 5:
                w80.L(kuVar, "Cookie");
                String str5 = jh0Var.a;
                Locale locale = Locale.ROOT;
                String lowerCase2 = str5.toLowerCase(locale);
                String str6 = kuVar.q;
                if (str6 == null) {
                    throw new mh0(cm1.a("Invalid cookie state: domain not specified"));
                }
                String lowerCase3 = str6.toLowerCase(locale);
                if (!(kuVar instanceof ku) || !kuVar.o.containsKey("domain")) {
                    if (kuVar.q.equals(lowerCase2)) {
                        return;
                    }
                    throw new mh0(cm1.a("Illegal domain attribute: \"" + kuVar.q + "\".Domain of origin: \"" + lowerCase2 + "\""));
                }
                if (!lowerCase3.startsWith(".")) {
                    throw new mh0(cm1.a("Domain attribute \"" + kuVar.q + "\" violates RFC 2109: domain must start with a dot"));
                }
                int iIndexOf2 = lowerCase3.indexOf(46, 1);
                if ((iIndexOf2 < 0 || iIndexOf2 == lowerCase3.length() - 1) && !lowerCase3.equals(".local")) {
                    throw new mh0(cm1.a("Domain attribute \"" + kuVar.q + "\" violates RFC 2965: the value contains no embedded dots and the value is not .local"));
                }
                if (!lowerCase2.equals(lowerCase3) && (!lowerCase3.startsWith(".") || !lowerCase2.endsWith(lowerCase3))) {
                    throw new mh0(cm1.a("Domain attribute \"" + kuVar.q + "\" violates RFC 2965: effective host name does not domain-match domain attribute."));
                }
                if (lowerCase2.substring(0, lowerCase2.length() - lowerCase3.length()).indexOf(46) == -1) {
                    return;
                }
                throw new mh0(cm1.a("Domain attribute \"" + kuVar.q + "\" violates RFC 2965: effective host minus domain may not contain any dots"));
            case 6:
                w80.L(kuVar, "Cookie");
                int i = jh0Var.b;
                if ((kuVar instanceof ku) && kuVar.o.containsKey("port")) {
                    for (int i2 : kuVar.a()) {
                        if (i == i2) {
                            return;
                        }
                    }
                    throw new mh0(cm1.a("Port attribute violates RFC 2965: Request port not found in cookie's port list."));
                }
                return;
            default:
                w80.L(kuVar, "Cookie");
                if ((kuVar instanceof ju) && !kuVar.o.containsKey("version")) {
                    throw new mh0(cm1.a("Violates RFC 2965. Version attribute is required."));
                }
                return;
        }
    }

    @Override // defpackage.ih0
    public boolean b(ku kuVar, jh0 jh0Var) {
        switch (this.a) {
            case 0:
                String str = jh0Var.a;
                String strSubstring = kuVar.q;
                if (strSubstring != null) {
                    if (strSubstring.startsWith(".")) {
                        strSubstring = strSubstring.substring(1);
                    }
                    String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
                    if (str.equals(lowerCase)) {
                        break;
                    } else if ((kuVar instanceof ku) && kuVar.o.containsKey("domain")) {
                        break;
                    }
                }
                break;
            case 1:
                w80.L(kuVar, "Cookie");
                String str2 = jh0Var.c;
                String strSubstring2 = kuVar.s;
                if (strSubstring2 == null) {
                    strSubstring2 = "/";
                }
                if (strSubstring2.length() > 1 && strSubstring2.endsWith("/")) {
                    strSubstring2 = strSubstring2.substring(0, strSubstring2.length() - 1);
                }
                if (str2.startsWith(strSubstring2)) {
                    if (strSubstring2.equals("/") || str2.length() == strSubstring2.length() || str2.charAt(strSubstring2.length()) == '/') {
                        break;
                    }
                }
                break;
            case 2:
                String str3 = jh0Var.a;
                String str4 = kuVar.q;
                if (str4 != null) {
                    if (str3.equals(str4) || (str4.startsWith(".") && str3.endsWith(str4))) {
                    }
                    break;
                }
                break;
            case 5:
                String lowerCase2 = jh0Var.a.toLowerCase(Locale.ROOT);
                String str5 = kuVar.q;
                if ((lowerCase2.equals(str5) || (str5.startsWith(".") && lowerCase2.endsWith(str5))) && lowerCase2.substring(0, lowerCase2.length() - str5.length()).indexOf(46) == -1) {
                }
                break;
            case 6:
                int i = jh0Var.b;
                if ((kuVar instanceof ku) && kuVar.o.containsKey("port")) {
                    if (kuVar.a() != null) {
                        for (int i2 : kuVar.a()) {
                            if (i != i2) {
                            }
                        }
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // defpackage.ih0
    public void c(ku kuVar, String str) throws q92 {
        int i;
        switch (this.a) {
            case 0:
                if (ht4.v(str)) {
                    throw new q92(cm1.a("Blank or null value for domain attribute"));
                }
                if (str.endsWith(".")) {
                    return;
                }
                if (str.startsWith(".")) {
                    str = str.substring(1);
                }
                kuVar.c(str.toLowerCase(Locale.ROOT));
                return;
            case 1:
                if (ht4.v(str)) {
                    str = "/";
                }
                kuVar.s = str;
                return;
            case 2:
                if (str == null) {
                    throw new q92(cm1.a("Missing value for domain attribute"));
                }
                if (str.trim().isEmpty()) {
                    throw new q92(cm1.a("Blank value for domain attribute"));
                }
                kuVar.c(str);
                return;
            case 3:
                return;
            case 4:
                if (kuVar instanceof ju) {
                    ((ju) kuVar).x = true;
                    return;
                }
                return;
            case 5:
                if (str == null) {
                    throw new q92(cm1.a("Missing value for domain attribute"));
                }
                if (str.trim().isEmpty()) {
                    throw new q92(cm1.a("Blank value for domain attribute"));
                }
                String lowerCase = str.toLowerCase(Locale.ROOT);
                if (!str.startsWith(".")) {
                    lowerCase = di0.u(".", lowerCase);
                }
                kuVar.c(lowerCase);
                return;
            case 6:
                if (kuVar instanceof ju) {
                    ju juVar = (ju) kuVar;
                    if (str == null || str.trim().isEmpty()) {
                        return;
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
                    int[] iArr = new int[stringTokenizer.countTokens()];
                    int i2 = 0;
                    while (stringTokenizer.hasMoreTokens()) {
                        try {
                            int i3 = Integer.parseInt(stringTokenizer.nextToken().trim());
                            iArr[i2] = i3;
                            if (i3 < 0) {
                                throw new q92(cm1.a("Invalid Port attribute."));
                            }
                            i2++;
                        } catch (NumberFormatException e) {
                            throw new q92(cm1.a("Invalid Port attribute: " + e.getMessage()));
                        }
                    }
                    juVar.w = iArr;
                    return;
                }
                return;
            default:
                if (str == null) {
                    throw new q92(cm1.a("Missing value for version attribute"));
                }
                try {
                    i = Integer.parseInt(str);
                    break;
                } catch (NumberFormatException unused) {
                    i = -1;
                }
                if (i < 0) {
                    throw new q92(cm1.a("Invalid cookie version."));
                }
                kuVar.f173u = i;
                return;
        }
    }

    @Override // defpackage.u80
    public String d() {
        switch (this.a) {
            case 0:
                return "domain";
            case 1:
                return "path";
            case 2:
                return "domain";
            case 3:
                return "commenturl";
            case 4:
                return "discard";
            case 5:
                return "domain";
            case 6:
                return "port";
            default:
                return "version";
        }
    }

    private final void f(ku kuVar, String str) {
    }

    private void g(ku kuVar, jh0 jh0Var) {
    }

    private final void h(ku kuVar, jh0 jh0Var) {
    }

    private final void i(ku kuVar, jh0 jh0Var) {
    }
}
