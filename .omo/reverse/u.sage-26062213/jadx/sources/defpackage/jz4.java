package defpackage;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jz4 extends yx4 implements RandomAccess, lz4 {
    public final List o;

    static {
        new jz4();
    }

    public jz4(int i) {
        ArrayList arrayList = new ArrayList(i);
        super(true);
        this.o = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        a();
        this.o.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.yx4, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        a();
        if (collection instanceof lz4) {
            collection = ((lz4) collection).zzg();
        }
        boolean zAddAll = this.o.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // defpackage.vy4
    public final vy4 b(int i) {
        List list = this.o;
        if (i < list.size()) {
            q73.d();
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(list);
        return new jz4(arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        List list = this.o;
        Object obj = list.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof iy4) {
            iy4 iy4Var = (iy4) obj;
            String str = iy4Var.d() == 0 ? "" : new String(iy4Var.o, 0, iy4Var.d(), dz4.a);
            byte[] bArr = iy4Var.o;
            int iD = iy4Var.d();
            n35.a.getClass();
            if (ny4.c(bArr, 0, iD)) {
                list.set(i, str);
            }
            return str;
        }
        byte[] bArr2 = (byte[]) obj;
        String str2 = new String(bArr2, dz4.a);
        ny4 ny4Var = n35.a;
        int length = bArr2.length;
        ny4Var.getClass();
        if (ny4.c(bArr2, 0, length)) {
            list.set(i, str2);
        }
        return str2;
    }

    @Override // defpackage.yx4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.o.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.yx4, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        Object objRemove = this.o.remove(i);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof iy4)) {
            return new String((byte[]) objRemove, dz4.a);
        }
        iy4 iy4Var = (iy4) objRemove;
        return iy4Var.d() == 0 ? "" : new String(iy4Var.o, 0, iy4Var.d(), dz4.a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        Object obj2 = this.o.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof iy4)) {
            return new String((byte[]) obj2, dz4.a);
        }
        iy4 iy4Var = (iy4) obj2;
        return iy4Var.d() == 0 ? "" : new String(iy4Var.o, 0, iy4Var.d(), dz4.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.o.size();
    }

    @Override // defpackage.lz4
    public final lz4 zze() {
        return this.n ? new z25(this) : this;
    }

    @Override // defpackage.lz4
    public final List zzg() {
        return Collections.unmodifiableList(this.o);
    }

    public jz4(ArrayList arrayList) {
        super(true);
        this.o = arrayList;
    }

    public jz4() {
        super(false);
        this.o = Collections.EMPTY_LIST;
    }

    @Override // defpackage.yx4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.o.size(), collection);
    }
}
