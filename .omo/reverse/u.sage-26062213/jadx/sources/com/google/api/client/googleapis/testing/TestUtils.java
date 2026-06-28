package com.google.api.client.googleapis.testing;

import defpackage.lq1;
import defpackage.p61;
import defpackage.r6;
import defpackage.vq3;
import defpackage.wq3;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class TestUtils {
    private static final String UTF_8 = "UTF-8";

    private TestUtils() {
    }

    public static Map<String, String> parseQuery(String str) throws IOException {
        ArrayList arrayList;
        HashMap map = new HashMap();
        lq1 lq1VarA = lq1.a('&');
        str.getClass();
        Iterator itI = ((r6) lq1VarA.d).i(lq1VarA, str);
        while (true) {
            vq3 vq3Var = (vq3) itI;
            if (!vq3Var.hasNext()) {
                return map;
            }
            String str2 = (String) vq3Var.next();
            lq1 lq1VarA2 = lq1.a('=');
            str2.getClass();
            Iterable wq3Var = new wq3(lq1VarA2, str2);
            if (wq3Var instanceof Collection) {
                arrayList = new ArrayList((Collection) wq3Var);
            } else {
                Iterator it = wq3Var.iterator();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    vq3 vq3Var2 = (vq3) it;
                    if (!vq3Var2.hasNext()) {
                        break;
                    }
                    arrayList2.add(vq3Var2.next());
                }
                arrayList = arrayList2;
            }
            if (arrayList.size() != 2) {
                p61.k("Invalid Query String");
                return null;
            }
            map.put(URLDecoder.decode((String) arrayList.get(0), UTF_8), URLDecoder.decode((String) arrayList.get(1), UTF_8));
        }
    }
}
