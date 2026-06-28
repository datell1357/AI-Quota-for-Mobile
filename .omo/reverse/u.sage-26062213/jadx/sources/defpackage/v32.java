package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v32 extends AbstractSet {
    public final /* synthetic */ int n;
    public final /* synthetic */ x32 o;

    public /* synthetic */ v32(x32 x32Var, int i) {
        this.n = i;
        this.o = x32Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.n;
        x32 x32Var = this.o;
        switch (i) {
            case 0:
                x32Var.clear();
                break;
            default:
                x32Var.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        w32 w32VarA;
        int i = this.n;
        x32 x32Var = this.o;
        switch (i) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                w32 w32Var = null;
                if (key != null) {
                    try {
                        w32VarA = x32Var.a(key, false);
                    } catch (ClassCastException unused) {
                        w32VarA = null;
                    }
                    break;
                } else {
                    w32VarA = null;
                }
                if (w32VarA != null && Objects.equals(w32VarA.f390u, entry.getValue())) {
                    w32Var = w32VarA;
                }
                return w32Var != null;
            default:
                return x32Var.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.n;
        x32 x32Var = this.o;
        switch (i) {
            case 0:
                return new u32(x32Var, 0);
            default:
                return new u32(x32Var, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        w32 w32VarA;
        int i = this.n;
        w32 w32VarA2 = null;
        x32 x32Var = this.o;
        switch (i) {
            case 0:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    if (key != null) {
                        try {
                            w32VarA = x32Var.a(key, false);
                        } catch (ClassCastException unused) {
                            w32VarA = null;
                        }
                    } else {
                        w32VarA = null;
                    }
                    if (w32VarA != null && Objects.equals(w32VarA.f390u, entry.getValue())) {
                        w32VarA2 = w32VarA;
                    }
                    if (w32VarA2 != null) {
                        x32Var.d(w32VarA2, true);
                        break;
                    }
                    break;
                }
                break;
            default:
                if (obj != null) {
                    try {
                        w32VarA2 = x32Var.a(obj, false);
                        break;
                    } catch (ClassCastException unused2) {
                    }
                }
                if (w32VarA2 != null) {
                    x32Var.d(w32VarA2, true);
                }
                if (w32VarA2 != null) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i = this.n;
        x32 x32Var = this.o;
        switch (i) {
        }
        return x32Var.q;
    }
}
