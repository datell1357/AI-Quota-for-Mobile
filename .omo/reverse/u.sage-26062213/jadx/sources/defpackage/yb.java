package defpackage;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yb implements Comparator {
    public final /* synthetic */ int n;

    public /* synthetic */ yb(int i) {
        this.n = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.n) {
            case 0:
                return nt1.l(((ty2) obj2).a, ((ty2) obj).a);
            case 1:
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
            case 2:
                return ((File) obj2).getName().compareTo(((File) obj).getName());
            case 3:
                String name = ((File) obj).getName();
                int i = ok0.f;
                return name.substring(0, i).compareTo(((File) obj2).getName().substring(0, i));
            case 4:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    byte b = bArr[i2];
                    byte b2 = bArr2[i2];
                    if (b != b2) {
                        return b - b2;
                    }
                }
                return 0;
            case 5:
                return nt1.l(((zt1) obj).b, ((zt1) obj2).b);
            case 6:
                ms1 ms1Var = (ms1) obj;
                ms1 ms1Var2 = (ms1) obj2;
                return (ms1Var.o - ms1Var.n) - (ms1Var2.o - ms1Var2.n);
            case 7:
                xy1 xy1Var = (xy1) obj;
                xy1 xy1Var2 = (xy1) obj2;
                float f = xy1Var.T.p.R;
                float f2 = xy1Var2.T.p.R;
                return f == f2 ? nt1.l(xy1Var.v(), xy1Var2.v()) : Float.compare(f, f2);
            case 8:
                return nt1.l(((g12) obj).a, ((g12) obj2).a);
            default:
                return ((tm) ((nj0) obj)).a.compareTo(((tm) ((nj0) obj2)).a);
        }
    }
}
