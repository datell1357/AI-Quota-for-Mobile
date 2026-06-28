package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class me0 {
    public boolean a = true;
    public boolean b;
    public Object c;
    public Serializable d;

    public ne0 a() {
        return new ne0(this.a, this.b, (String[]) this.c, (String[]) this.d);
    }

    public void b(d50... d50VarArr) {
        if (!this.a) {
            k21.f("no cipher suites for cleartext connections");
            return;
        }
        ArrayList arrayList = new ArrayList(d50VarArr.length);
        for (d50 d50Var : d50VarArr) {
            arrayList.add(d50Var.a);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (!this.a) {
            k21.f("no cipher suites for cleartext connections");
        } else if (strArr2.length != 0) {
            this.c = (String[]) Arrays.copyOf(strArr2, strArr2.length);
        } else {
            k21.f("At least one cipher suite is required");
        }
    }

    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.Serializable, java.lang.String[]] */
    public void c(sz3... sz3VarArr) {
        if (!this.a) {
            k21.f("no TLS versions for cleartext connections");
            return;
        }
        ArrayList arrayList = new ArrayList(sz3VarArr.length);
        for (sz3 sz3Var : sz3VarArr) {
            arrayList.add(sz3Var.n);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (!this.a) {
            k21.f("no TLS versions for cleartext connections");
        } else if (strArr2.length != 0) {
            this.d = (String[]) Arrays.copyOf(strArr2, strArr2.length);
        } else {
            k21.f("At least one TLS version is required");
        }
    }
}
