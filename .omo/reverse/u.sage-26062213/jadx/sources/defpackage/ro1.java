package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ro1 {
    public final String a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final long f;
    public final int g;
    public final boolean h;
    public final ArrayList i;
    public final qo1 j;
    public boolean k;

    public ro1(String str, float f, float f2, float f3, float f4, long j, int i, boolean z, int i2) {
        str = (i2 & 1) != 0 ? "" : str;
        long j2 = (i2 & 32) != 0 ? t70.f : j;
        int i3 = (i2 & 64) != 0 ? 5 : i;
        boolean z2 = (i2 & 128) != 0 ? false : z;
        this.a = str;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = j2;
        this.g = i3;
        this.h = z2;
        ArrayList arrayList = new ArrayList();
        this.i = arrayList;
        qo1 qo1Var = new qo1(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, 1023);
        this.j = qo1Var;
        arrayList.add(qo1Var);
    }

    public static void a(ro1 ro1Var, ArrayList arrayList, sp3 sp3Var) {
        if (ro1Var.k) {
            ar1.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
        }
        ((qo1) ro1Var.i.get(r0.size() - 1)).j.add(new ha4("", arrayList, 0, sp3Var, 1.0f, null, 1.0f, 1.0f, 0, 2, 1.0f, 0.0f, 1.0f, 0.0f));
    }

    public final so1 b() {
        if (this.k) {
            ar1.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
        }
        while (true) {
            ArrayList arrayList = this.i;
            if (arrayList.size() <= 1) {
                qo1 qo1Var = this.j;
                so1 so1Var = new so1(this.a, this.b, this.c, this.d, this.e, new da4(qo1Var.a, qo1Var.b, qo1Var.c, qo1Var.d, qo1Var.e, qo1Var.f, qo1Var.g, qo1Var.h, qo1Var.i, qo1Var.j), this.f, this.g, this.h);
                this.k = true;
                return so1Var;
            }
            if (this.k) {
                ar1.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            qo1 qo1Var2 = (qo1) arrayList.remove(arrayList.size() - 1);
            ((qo1) arrayList.get(arrayList.size() - 1)).j.add(new da4(qo1Var2.a, qo1Var2.b, qo1Var2.c, qo1Var2.d, qo1Var2.e, qo1Var2.f, qo1Var2.g, qo1Var2.h, qo1Var2.i, qo1Var2.j));
        }
    }
}
