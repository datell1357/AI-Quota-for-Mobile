package defpackage;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class oa2 extends nt1 {
    public static Object Z(Object obj, Map map) {
        map.getClass();
        if (map instanceof ka2) {
            return ((ka2) map).c();
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static int a0(int i) {
        return i < 0 ? i : i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static Map b0(js2... js2VarArr) {
        if (js2VarArr.length <= 0) {
            return h01.n;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(a0(js2VarArr.length));
        c0(linkedHashMap, js2VarArr);
        return linkedHashMap;
    }

    public static final void c0(HashMap map, js2[] js2VarArr) {
        for (js2 js2Var : js2VarArr) {
            map.put(js2Var.n, js2Var.o);
        }
    }

    public static Map d0(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return h01.n;
        }
        int i = 0;
        if (size == 1) {
            js2 js2Var = (js2) arrayList.get(0);
            js2Var.getClass();
            Map mapSingletonMap = Collections.singletonMap(js2Var.n, js2Var.o);
            mapSingletonMap.getClass();
            return mapSingletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(a0(arrayList.size()));
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj = arrayList.get(i);
            i++;
            js2 js2Var2 = (js2) obj;
            linkedHashMap.put(js2Var2.n, js2Var2.o);
        }
        return linkedHashMap;
    }

    public static Map e0(Map map) {
        map.getClass();
        int size = map.size();
        if (size == 0) {
            return h01.n;
        }
        if (size != 1) {
            return new LinkedHashMap(map);
        }
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }
}
