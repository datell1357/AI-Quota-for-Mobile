package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jh5 extends al4 {
    public final Map b;

    public jh5(ye4 ye4Var, ye4 ye4Var2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        d(linkedHashMap, ye4Var);
        d(linkedHashMap, ye4Var2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((og5) entry.getKey()).c) {
                entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
            }
        }
        this.b = Collections.unmodifiableMap(linkedHashMap);
    }

    public static void d(LinkedHashMap linkedHashMap, ye4 ye4Var) {
        for (int i = 0; i < ye4Var.b(); i++) {
            og5 og5VarC = ye4Var.c(i);
            Object obj = linkedHashMap.get(og5VarC);
            boolean z = og5VarC.c;
            Class cls = og5VarC.b;
            if (z) {
                List arrayList = (List) obj;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(og5VarC, arrayList);
                }
                arrayList.add(cls.cast(ye4Var.d(i)));
            } else {
                linkedHashMap.put(og5VarC, cls.cast(ye4Var.d(i)));
            }
        }
    }

    @Override // defpackage.al4
    public final void a(fh5 fh5Var, ah5 ah5Var) {
        for (Map.Entry entry : this.b.entrySet()) {
            og5 og5Var = (og5) entry.getKey();
            Object value = entry.getValue();
            if (og5Var.c) {
                fh5Var.b(og5Var, ((List) value).iterator(), ah5Var);
            } else {
                fh5Var.a(og5Var, value, ah5Var);
            }
        }
    }

    @Override // defpackage.al4
    public final int b() {
        return this.b.size();
    }

    @Override // defpackage.al4
    public final Set c() {
        return this.b.keySet();
    }
}
