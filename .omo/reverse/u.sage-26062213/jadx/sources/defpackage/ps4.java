package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ps4 implements Iterator {
    public final /* synthetic */ int n;
    public int o = 0;
    public final /* synthetic */ Object p;

    public /* synthetic */ ps4(int i, Object obj) {
        this.n = i;
        this.p = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.n) {
            case 0:
                if (this.o < ((ss4) this.p).n.length()) {
                }
                break;
            case 1:
                if (this.o < ((ss4) this.p).n.length()) {
                }
                break;
            default:
                if (this.o < ((vn4) this.p).l()) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        int i = this.n;
        Object obj = this.p;
        switch (i) {
            case 0:
                String str = ((ss4) obj).n;
                int i2 = this.o;
                if (i2 >= str.length()) {
                    p61.v();
                } else {
                    this.o = i2 + 1;
                }
                break;
            case 1:
                ss4 ss4Var = (ss4) obj;
                String str2 = ss4Var.n;
                int i3 = this.o;
                if (i3 >= str2.length()) {
                    p61.v();
                } else {
                    this.o = i3 + 1;
                }
                break;
            default:
                vn4 vn4Var = (vn4) obj;
                int i4 = this.o;
                int iL = vn4Var.l();
                int i5 = this.o;
                if (i4 >= iL) {
                    q73.l(di0.r(i5, "Out of bounds index: ", new StringBuilder(String.valueOf(i5).length() + 21)));
                } else {
                    this.o = i5 + 1;
                }
                break;
        }
        return null;
    }
}
