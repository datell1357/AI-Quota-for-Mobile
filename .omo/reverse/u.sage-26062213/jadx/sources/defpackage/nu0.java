package defpackage;

import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nu0 {
    public final String a;
    public final long[] b = new long[2];
    public final ArrayList c = new ArrayList(2);
    public final ArrayList d = new ArrayList(2);
    public boolean e;
    public boolean f;
    public mu0 g;
    public int h;
    public final /* synthetic */ qu0 i;

    public nu0(qu0 qu0Var, String str) {
        this.i = qu0Var;
        this.a = str;
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i = 0; i < 2; i++) {
            sb.append(i);
            this.c.add(this.i.n.e(sb.toString()));
            sb.append(".tmp");
            this.d.add(this.i.n.e(sb.toString()));
            sb.setLength(length);
        }
    }

    public final ou0 a() {
        if (!this.e || this.g != null || this.f) {
            return null;
        }
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            qu0 qu0Var = this.i;
            if (i >= size) {
                this.h++;
                return new ou0(qu0Var, this);
            }
            if (!qu0Var.D.B((bt2) arrayList.get(i))) {
                try {
                    qu0Var.N(this);
                } catch (IOException unused) {
                }
                return null;
            }
            i++;
        }
    }
}
