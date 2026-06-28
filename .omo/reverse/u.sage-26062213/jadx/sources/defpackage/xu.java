package defpackage;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class xu extends f1 implements Serializable, Cloneable {
    public final ConcurrentHashMap n = new ConcurrentHashMap();

    @Override // defpackage.km1
    public km1 a(Object obj, String str) {
        if (str == null) {
            return this;
        }
        ConcurrentHashMap concurrentHashMap = this.n;
        if (obj != null) {
            concurrentHashMap.put(str, obj);
            return this;
        }
        concurrentHashMap.remove(str);
        return this;
    }

    @Override // defpackage.km1
    public final km1 b() {
        try {
            return (km1) clone();
        } catch (CloneNotSupportedException unused) {
            p61.s("Cloning not supported");
            return null;
        }
    }

    @Override // defpackage.km1
    public Object c(String str) {
        return this.n.get(str);
    }

    public Object clone() {
        xu xuVar = (xu) super.clone();
        for (Map.Entry entry : this.n.entrySet()) {
            xuVar.a(entry.getValue(), (String) entry.getKey());
        }
        return xuVar;
    }

    @Override // defpackage.f1
    public final Set f() {
        return new HashSet(this.n.keySet());
    }

    public final String toString() {
        return "[parameters=" + this.n + "]";
    }
}
