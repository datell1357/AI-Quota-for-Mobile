package defpackage;

import com.google.api.client.http.UrlEncodedParser;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pg0 implements Serializable {
    public static final pg0 q;
    public final String n;
    public final Charset o;
    public final sh2[] p;

    static {
        Charset charset = uf0.c;
        pg0 pg0VarA = a("application/atom+xml", charset);
        pg0 pg0VarA2 = a(UrlEncodedParser.CONTENT_TYPE, charset);
        q = pg0VarA2;
        Charset charset2 = uf0.a;
        pg0 pg0VarA3 = a("application/json", charset2);
        a("application/octet-stream", null);
        a("application/soap+xml", charset2);
        pg0 pg0VarA4 = a("application/svg+xml", charset);
        pg0 pg0VarA5 = a("application/xhtml+xml", charset);
        pg0 pg0VarA6 = a("application/xml", charset);
        pg0 pg0VarA7 = a("image/bmp", null);
        pg0 pg0VarA8 = a("image/gif", null);
        pg0 pg0VarA9 = a("image/jpeg", null);
        pg0 pg0VarA10 = a("image/png", null);
        pg0 pg0VarA11 = a("image/svg+xml", null);
        pg0 pg0VarA12 = a("image/tiff", null);
        pg0 pg0VarA13 = a("image/webp", null);
        pg0 pg0VarA14 = a("multipart/form-data", charset);
        pg0 pg0VarA15 = a("text/html", charset);
        pg0 pg0VarA16 = a("text/plain", charset);
        pg0 pg0VarA17 = a("text/xml", charset);
        a("*/*", null);
        pg0[] pg0VarArr = {pg0VarA, pg0VarA2, pg0VarA3, pg0VarA4, pg0VarA5, pg0VarA6, pg0VarA7, pg0VarA8, pg0VarA9, pg0VarA10, pg0VarA11, pg0VarA12, pg0VarA13, pg0VarA14, pg0VarA15, pg0VarA16, pg0VarA17};
        HashMap map = new HashMap();
        for (int i = 0; i < 17; i++) {
            pg0 pg0Var = pg0VarArr[i];
            map.put(pg0Var.n, pg0Var);
        }
        Collections.unmodifiableMap(map);
    }

    public pg0(String str, Charset charset) {
        this.n = str;
        this.o = charset;
        this.p = null;
    }

    public static pg0 a(String str, Charset charset) {
        w80.G(str, "MIME type");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= lowerCase.length()) {
                z = true;
                break;
            }
            char cCharAt = lowerCase.charAt(i);
            if (cCharAt == '\"' || cCharAt == ',' || cCharAt == ';') {
                break;
            }
            i++;
        }
        w80.l("MIME type may not contain reserved characters", z);
        return new pg0(lowerCase, charset);
    }

    public static pg0 b(xl1 xl1Var) {
        gj1 contentType;
        Charset charsetForName;
        if (xl1Var != null && (contentType = xl1Var.getContentType()) != null) {
            ru[] ruVarArrA = contentType.a();
            if (ruVarArrA.length > 0) {
                int i = 0;
                ru ruVar = ruVarArrA[0];
                String str = ruVar.n;
                sh2[] sh2VarArr = (sh2[]) ruVar.p.clone();
                int length = sh2VarArr.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    sh2 sh2Var = sh2VarArr[i];
                    if (sh2Var.getName().equalsIgnoreCase("charset")) {
                        String value = sh2Var.getValue();
                        if (!ht4.v(value)) {
                            charsetForName = Charset.forName(value);
                        }
                    } else {
                        i++;
                    }
                }
                charsetForName = null;
                return new pg0(str, charsetForName, sh2VarArr.length > 0 ? sh2VarArr : null);
            }
        }
        return null;
    }

    public final String toString() {
        int length;
        b40 b40Var = new b40(64);
        b40Var.b(this.n);
        sh2[] sh2VarArr = this.p;
        if (sh2VarArr != null) {
            b40Var.b("; ");
            if (sh2VarArr.length < 1) {
                length = 0;
            } else {
                length = (sh2VarArr.length - 1) * 2;
                for (sh2 sh2Var : sh2VarArr) {
                    length += bi4.q(sh2Var);
                }
            }
            b40Var.e(length);
            for (int i = 0; i < sh2VarArr.length; i++) {
                if (i > 0) {
                    b40Var.b("; ");
                }
                bi4.r(b40Var, sh2VarArr[i], false);
            }
        } else {
            Charset charset = this.o;
            if (charset != null) {
                b40Var.b("; charset=");
                b40Var.b(charset.name());
            }
        }
        return b40Var.toString();
    }

    public pg0(String str, Charset charset, sh2[] sh2VarArr) {
        this.n = str;
        this.o = charset;
        this.p = sh2VarArr;
    }
}
