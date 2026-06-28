package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class vi2 {
    public final /* synthetic */ int a;
    public int b;
    public String c;
    public String d;
    public final Object e;
    public final Object f;

    /* JADX WARN: Multi-variable type inference failed */
    public vi2(String str) {
        this.a = 1;
        str.getClass();
        hb hbVar = new hb(3, (byte) (0 == true ? 1 : 0));
        hbVar.c = new Object[8];
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        hbVar.d = iArr;
        hbVar.b = -1;
        this.e = hbVar;
        this.f = new StringBuilder();
        this.d = str;
    }

    public static /* synthetic */ void l(vi2 vi2Var, String str, int i, String str2, int i2) {
        if ((i2 & 2) != 0) {
            i = vi2Var.b;
        }
        if ((i2 & 4) != 0) {
            str2 = "";
        }
        vi2Var.k(str, i, str2);
        throw null;
    }

    public int a(int i, CharSequence charSequence) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            ((StringBuilder) this.f).append((char) (q(i + 3, charSequence) + (q(i, charSequence) << 12) + (q(i + 1, charSequence) << 8) + (q(i + 2, charSequence) << 4)));
            return i2;
        }
        this.b = i;
        if (i2 < charSequence.length()) {
            return a(this.b, charSequence);
        }
        l(this, "Unexpected EOF during unicode escape", 0, null, 6);
        throw null;
    }

    public boolean b() {
        int i = this.b;
        if (i == -1) {
            return false;
        }
        String str = this.d;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i;
                return (cCharAt == ',' || cCharAt == ':' || cCharAt == ']' || cCharAt == '}') ? false : true;
            }
            i++;
        }
        this.b = i;
        return false;
    }

    public void c(int i, String str) {
        String str2 = this.d;
        if (str2.length() - i < str.length()) {
            l(this, "Unexpected end of boolean literal", 0, null, 6);
            throw null;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (str2.charAt(i + i2) | ' ')) {
                l(this, "Expected valid boolean literal prefix, but had '" + j() + '\'', 0, null, 6);
                throw null;
            }
        }
        this.b = str.length() + i;
    }

    public String d() {
        String string;
        StringBuilder sb = (StringBuilder) this.f;
        String str = this.d;
        g('\"');
        int i = this.b;
        int iF0 = zs3.F0(str, '\"', i, 4);
        if (iF0 == -1) {
            j();
            m((byte) 1, false);
            throw null;
        }
        int i2 = i;
        while (i2 < iF0) {
            if (str.charAt(i2) == '\\') {
                int iV = this.b;
                char cCharAt = str.charAt(i2);
                boolean z = false;
                while (cCharAt != '\"') {
                    if (cCharAt == '\\') {
                        sb.append((CharSequence) str, iV, i2);
                        int iV2 = v(i2 + 1);
                        if (iV2 == -1) {
                            l(this, "Expected escape sequence to continue, got EOF", 0, null, 6);
                            throw null;
                        }
                        int iA = iV2 + 1;
                        char cCharAt2 = str.charAt(iV2);
                        if (cCharAt2 == 'u') {
                            iA = a(iA, str);
                        } else {
                            char c = cCharAt2 < 'u' ? f40.a[cCharAt2] : (char) 0;
                            if (c == 0) {
                                l(this, "Invalid escaped char '" + cCharAt2 + '\'', 0, null, 6);
                                throw null;
                            }
                            sb.append(c);
                        }
                        iV = v(iA);
                        if (iV == -1) {
                            l(this, "Unexpected EOF", iV, null, 4);
                            throw null;
                        }
                    } else {
                        i2++;
                        if (i2 >= str.length()) {
                            sb.append((CharSequence) str, iV, i2);
                            iV = v(i2);
                            if (iV == -1) {
                                l(this, "Unexpected EOF", iV, null, 4);
                                throw null;
                            }
                        } else {
                            continue;
                            cCharAt = str.charAt(i2);
                        }
                    }
                    i2 = iV;
                    z = true;
                    cCharAt = str.charAt(i2);
                }
                if (z) {
                    sb.append((CharSequence) str, iV, i2);
                    String string2 = sb.toString();
                    sb.setLength(0);
                    string = string2;
                } else {
                    string = str.subSequence(iV, i2).toString();
                }
                this.b = i2 + 1;
                return string;
            }
            i2++;
        }
        this.b = iF0 + 1;
        return str.substring(i, iF0);
    }

    public byte e() {
        String str = this.d;
        int i = this.b;
        while (i != -1 && i < str.length()) {
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i2;
                return fl4.i(cCharAt);
            }
            i = i2;
        }
        this.b = str.length();
        return (byte) 10;
    }

    public byte f(byte b) {
        byte bE = e();
        if (bE == b) {
            return bE;
        }
        m(b, true);
        throw null;
    }

    public void g(char c) {
        int i = this.b;
        if (i == -1) {
            y(c);
            throw null;
        }
        String str = this.d;
        while (i < str.length()) {
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i2;
                if (cCharAt == c) {
                    return;
                }
                y(c);
                throw null;
            }
            i = i2;
        }
        this.b = -1;
        y(c);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017b, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x017c, code lost:
    
        l(r21, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0181, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0182, code lost:
    
        defpackage.p61.x();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0185, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0186, code lost:
    
        r10 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0188, code lost:
    
        if (r14 == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x018a, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x018f, code lost:
    
        if (r10 == Long.MIN_VALUE) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0192, code lost:
    
        return -r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0193, code lost:
    
        l(r21, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0197, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0198, code lost:
    
        l(r21, "Expected numeric literal", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x019d, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e7, code lost:
    
        l(r21, "Unexpected symbol '" + r15 + "' in numeric literal", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ff, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0102, code lost:
    
        if (r12 == r1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0104, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0106, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0107, code lost:
    
        if (r1 == r12) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0109, code lost:
    
        if (r14 == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x010d, code lost:
    
        if (r1 == (r12 - 1)) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0114, code lost:
    
        if (r20 == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0116, code lost:
    
        if (r3 == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x011e, code lost:
    
        if (r2.charAt(r12) != '\"') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0120, code lost:
    
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0123, code lost:
    
        l(r21, "Expected closing quotation mark", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x012a, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012b, code lost:
    
        l(r21, "EOF", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0130, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0131, code lost:
    
        r21.b = r12;
        r1 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0135, code lost:
    
        if (r13 == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0137, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x013a, code lost:
    
        if (r11 != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x013c, code lost:
    
        r3 = java.lang.Math.pow(10.0d, -r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0144, code lost:
    
        if (r11 != true) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0146, code lost:
    
        r3 = java.lang.Math.pow(10.0d, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x014b, code lost:
    
        r1 = r1 * r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0150, code lost:
    
        if (r1 > 9.223372036854776E18d) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0156, code lost:
    
        if (r1 < (-9.223372036854776E18d)) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x015e, code lost:
    
        if (java.lang.Math.floor(r1) != r1) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0160, code lost:
    
        r10 = (long) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0163, code lost:
    
        l(r21, "Can't convert " + r1 + " to Long", 0, null, 6);
     */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long h() {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vi2.h():long");
    }

    public String i() {
        String str = this.c;
        if (str == null) {
            return d();
        }
        str.getClass();
        this.c = null;
        return str;
    }

    public String j() {
        String string;
        StringBuilder sb = (StringBuilder) this.f;
        String str = this.d;
        String str2 = this.c;
        if (str2 != null) {
            str2.getClass();
            this.c = null;
            return str2;
        }
        int iW = w();
        if (iW >= str.length() || iW == -1) {
            l(this, "EOF", iW, null, 4);
            throw null;
        }
        byte bI = fl4.i(str.charAt(iW));
        if (bI == 1) {
            return i();
        }
        if (bI != 0) {
            l(this, "Expected beginning of the string, but got " + str.charAt(iW), 0, null, 6);
            throw null;
        }
        boolean z = false;
        while (fl4.i(str.charAt(iW)) == 0) {
            iW++;
            if (iW >= str.length()) {
                sb.append((CharSequence) str, this.b, iW);
                int iV = v(iW);
                if (iV == -1) {
                    this.b = iW;
                    sb.append((CharSequence) str, 0, 0);
                    String string2 = sb.toString();
                    sb.setLength(0);
                    return string2;
                }
                iW = iV;
                z = true;
            }
        }
        int i = this.b;
        if (z) {
            sb.append((CharSequence) str, i, iW);
            String string3 = sb.toString();
            sb.setLength(0);
            string = string3;
        } else {
            string = str.subSequence(i, iW).toString();
        }
        this.b = iW;
        return string;
    }

    public void k(String str, int i, String str2) {
        str2.getClass();
        throw bi4.f(i, str + " at path: " + ((hb) this.e).e() + (str2.length() == 0 ? "" : "\n".concat(str2)), this.d);
    }

    public void m(byte b, boolean z) {
        String str = this.d;
        String strB = fl4.B(b);
        int i = this.b;
        int i2 = z ? i - 1 : i;
        l(this, xw1.r("Expected ", strB, ", but had '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' instead"), i2, null, 4);
        throw null;
    }

    public qi2 n(int i) {
        return p(i, (si2) this.e, null, false);
    }

    public qi2 o(String str, boolean z) {
        Object next;
        si2 si2Var;
        str.getClass();
        mq3 mq3Var = (mq3) this.f;
        mq3Var.getClass();
        Iterator it = ((af0) ci3.J(new g1(3, mq3Var))).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            qi2 qi2Var = (qi2) next;
            if (gt3.s0((String) qi2Var.o.e, str, false) || qi2Var.o.c(str) != null) {
                break;
            }
        }
        qi2 qi2Var2 = (qi2) next;
        if (qi2Var2 != null) {
            return qi2Var2;
        }
        if (!z || (si2Var = ((si2) this.e).p) == null) {
            return null;
        }
        vi2 vi2Var = si2Var.s;
        vi2Var.getClass();
        if (zs3.I0(str)) {
            return null;
        }
        return vi2Var.o(str, true);
    }

    public qi2 p(int i, qi2 qi2Var, qi2 qi2Var2, boolean z) {
        si2 si2Var = (si2) this.e;
        mq3 mq3Var = (mq3) this.f;
        qi2 qi2VarP = (qi2) mq3Var.c(i);
        if (qi2Var2 != null) {
            if (nt1.g(qi2VarP, qi2Var2) && nt1.g(qi2VarP.p, qi2Var2.p)) {
                return qi2VarP;
            }
            qi2VarP = null;
        } else if (qi2VarP != null) {
            return qi2VarP;
        }
        if (z) {
            Iterator it = ((af0) ci3.J(new g1(3, mq3Var))).iterator();
            while (true) {
                if (!it.hasNext()) {
                    qi2VarP = null;
                    break;
                }
                qi2 qi2Var3 = (qi2) it.next();
                qi2VarP = (!(qi2Var3 instanceof si2) || qi2Var3.equals(qi2Var)) ? null : ((si2) qi2Var3).s.p(i, si2Var, qi2Var2, true);
                if (qi2VarP != null) {
                    break;
                }
            }
        }
        if (qi2VarP != null) {
            return qi2VarP;
        }
        si2 si2Var2 = si2Var.p;
        if (si2Var2 == null || si2Var2.equals(qi2Var)) {
            return null;
        }
        si2 si2Var3 = si2Var.p;
        si2Var3.getClass();
        return si2Var3.s.p(i, si2Var, qi2Var2, z);
    }

    public int q(int i, CharSequence charSequence) {
        char cCharAt = charSequence.charAt(i);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        l(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6);
        throw null;
    }

    public pi2 r(pi2 pi2Var, eh ehVar, boolean z, qi2 qi2Var) {
        pi2 pi2VarF;
        si2 si2Var = (si2) this.e;
        ArrayList arrayList = new ArrayList();
        Iterator it = si2Var.iterator();
        while (true) {
            ui2 ui2Var = (ui2) it;
            if (!ui2Var.hasNext()) {
                break;
            }
            qi2 qi2Var2 = (qi2) ui2Var.next();
            pi2VarF = nt1.g(qi2Var2, qi2Var) ? null : qi2Var2.e(ehVar);
            if (pi2VarF != null) {
                arrayList.add(pi2VarF);
            }
        }
        pi2 pi2Var2 = (pi2) o70.q0(arrayList);
        si2 si2Var2 = si2Var.p;
        if (si2Var2 != null && z && !si2Var2.equals(qi2Var)) {
            pi2VarF = si2Var2.f(ehVar, si2Var);
        }
        return (pi2) o70.q0(ji.X(new pi2[]{pi2Var, pi2Var2, pi2VarF}));
    }

    public String s(String str) {
        str.getClass();
        int i = this.b;
        try {
            if (e() == 6 && nt1.g(u(), str)) {
                this.c = null;
                if (e() == 5) {
                    return u();
                }
            }
            return null;
        } finally {
            this.b = i;
            this.c = null;
        }
    }

    public byte t() {
        String str = this.d;
        int i = this.b;
        while (true) {
            int iV = v(i);
            if (iV == -1) {
                this.b = iV;
                return (byte) 10;
            }
            char cCharAt = str.charAt(iV);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ') {
                this.b = iV;
                return fl4.i(cCharAt);
            }
            i = iV + 1;
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "JsonReader(source='" + ((Object) this.d) + "', currentPosition=" + this.b + ')';
            default:
                return super.toString();
        }
    }

    public String u() {
        if (t() != 1) {
            return null;
        }
        String strI = i();
        this.c = strI;
        return strI;
    }

    public int v(int i) {
        if (i < this.d.length()) {
            return i;
        }
        return -1;
    }

    public int w() {
        char cCharAt;
        int i = this.b;
        if (i == -1) {
            return i;
        }
        String str = this.d;
        while (i < str.length() && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i++;
        }
        this.b = i;
        return i;
    }

    public boolean x() {
        int iW = w();
        String str = this.d;
        if (iW >= str.length() || iW == -1 || str.charAt(iW) != ',') {
            return false;
        }
        this.b++;
        return true;
    }

    public void y(char c) {
        int i = this.b;
        if (i > 0 && c == '\"') {
            try {
                this.b = i - 1;
                String strJ = j();
                this.b = i;
                if (nt1.g(strJ, "null")) {
                    k("Expected string literal but 'null' literal was found", this.b - 1, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.b = i;
                throw th;
            }
        }
        m(fl4.i(c), true);
        throw null;
    }

    public vi2(si2 si2Var) {
        this.a = 0;
        this.e = si2Var;
        this.f = new mq3(0);
    }
}
