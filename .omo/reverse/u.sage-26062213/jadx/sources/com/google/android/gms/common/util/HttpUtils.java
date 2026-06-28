package com.google.android.gms.common.util;

import defpackage.c85;
import defpackage.jd5;
import defpackage.k21;
import defpackage.ra3;
import defpackage.sb0;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class HttpUtils {
    private static final Pattern zza = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    private static final Pattern zzb = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
    private static final Pattern zzc = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    private HttpUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap] */
    public static Map<String, String> parse(URI uri, String str) {
        ?? map = Collections.EMPTY_MAP;
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            map = new HashMap();
            sb0 sb0Var = new sb0(new ra3(28, new c85('=')), false);
            sb0 sb0Var2 = new sb0(new ra3(28, new c85('&')), true);
            jd5 jd5Var = new jd5(sb0Var2, rawQuery, (c85) ((ra3) sb0Var2.o).o);
            while (jd5Var.hasNext()) {
                String str2 = (String) jd5Var.next();
                str2.getClass();
                jd5 jd5Var2 = new jd5(sb0Var, str2, (c85) ((ra3) sb0Var.o).o);
                ArrayList arrayList = new ArrayList();
                while (jd5Var2.hasNext()) {
                    arrayList.add((String) jd5Var2.next());
                }
                List listUnmodifiableList = Collections.unmodifiableList(arrayList);
                String strZza = null;
                if (listUnmodifiableList.isEmpty() || listUnmodifiableList.size() > 2) {
                    k21.f("bad parameter");
                    return null;
                }
                String strZza2 = zza((String) listUnmodifiableList.get(0), str);
                if (listUnmodifiableList.size() == 2) {
                    strZza = zza((String) listUnmodifiableList.get(1), str);
                }
                map.put(strZza2, strZza);
            }
        }
        return map;
    }

    private static String zza(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
