package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ns4 implements ls4 {
    public final String n;
    public final ArrayList o;

    public ns4(String str, ArrayList arrayList) {
        this.n = str;
        ArrayList arrayList2 = new ArrayList();
        this.o = arrayList2;
        arrayList2.addAll(arrayList);
    }

    @Override // defpackage.ls4
    public final Iterator a() {
        return null;
    }

    @Override // defpackage.ls4
    public final ls4 c(String str, qd1 qd1Var, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ns4)) {
            return false;
        }
        ns4 ns4Var = (ns4) obj;
        String str = ns4Var.n;
        String str2 = this.n;
        if (str2 == null ? str == null : str2.equals(str)) {
            return this.o.equals(ns4Var.o);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.n;
        return this.o.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    @Override // defpackage.ls4
    public final String zzc() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // defpackage.ls4
    public final Double zzd() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // defpackage.ls4
    public final Boolean zze() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // defpackage.ls4
    public final ls4 h() {
        return this;
    }
}
