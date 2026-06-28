package defpackage;

import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mk1 {
    public static final hj1[] a;
    public static final Map b;

    static {
        hj1 hj1Var = new hj1(hj1.i, "");
        g00 g00Var = hj1.f;
        hj1 hj1Var2 = new hj1(g00Var, HttpMethods.GET);
        hj1 hj1Var3 = new hj1(g00Var, HttpMethods.POST);
        g00 g00Var2 = hj1.g;
        hj1 hj1Var4 = new hj1(g00Var2, "/");
        hj1 hj1Var5 = new hj1(g00Var2, "/index.html");
        g00 g00Var3 = hj1.h;
        hj1 hj1Var6 = new hj1(g00Var3, "http");
        hj1 hj1Var7 = new hj1(g00Var3, "https");
        g00 g00Var4 = hj1.e;
        hj1[] hj1VarArr = {hj1Var, hj1Var2, hj1Var3, hj1Var4, hj1Var5, hj1Var6, hj1Var7, new hj1(g00Var4, "200"), new hj1(g00Var4, "204"), new hj1(g00Var4, "206"), new hj1(g00Var4, "304"), new hj1(g00Var4, "400"), new hj1(g00Var4, "404"), new hj1(g00Var4, "500"), new hj1("accept-charset", ""), new hj1("accept-encoding", "gzip, deflate"), new hj1("accept-language", ""), new hj1("accept-ranges", ""), new hj1("accept", ""), new hj1("access-control-allow-origin", ""), new hj1("age", ""), new hj1("allow", ""), new hj1("authorization", ""), new hj1("cache-control", ""), new hj1("content-disposition", ""), new hj1("content-encoding", ""), new hj1("content-language", ""), new hj1("content-length", ""), new hj1("content-location", ""), new hj1("content-range", ""), new hj1("content-type", ""), new hj1("cookie", ""), new hj1("date", ""), new hj1("etag", ""), new hj1("expect", ""), new hj1("expires", ""), new hj1("from", ""), new hj1("host", ""), new hj1("if-match", ""), new hj1("if-modified-since", ""), new hj1("if-none-match", ""), new hj1("if-range", ""), new hj1("if-unmodified-since", ""), new hj1("last-modified", ""), new hj1("link", ""), new hj1("location", ""), new hj1("max-forwards", ""), new hj1("proxy-authenticate", ""), new hj1("proxy-authorization", ""), new hj1("range", ""), new hj1("referer", ""), new hj1("refresh", ""), new hj1("retry-after", ""), new hj1("server", ""), new hj1("set-cookie", ""), new hj1("strict-transport-security", ""), new hj1("transfer-encoding", ""), new hj1("user-agent", ""), new hj1("vary", ""), new hj1("via", ""), new hj1("www-authenticate", "")};
        a = hj1VarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61, 1.0f);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(hj1VarArr[i].a)) {
                linkedHashMap.put(hj1VarArr[i].a, Integer.valueOf(i));
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        b = mapUnmodifiableMap;
    }

    public static void a(g00 g00Var) throws IOException {
        g00Var.getClass();
        int iC = g00Var.c();
        for (int i = 0; i < iC; i++) {
            byte bH = g00Var.h(i);
            if (65 <= bH && bH < 91) {
                p61.k("PROTOCOL_ERROR response malformed: mixed case name: ".concat(g00Var.q()));
                return;
            }
        }
    }
}
