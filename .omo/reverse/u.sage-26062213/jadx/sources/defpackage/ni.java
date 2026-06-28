package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ni implements y41 {
    public final /* synthetic */ int a;

    public /* synthetic */ ni(int i) {
        this.a = i;
    }

    @Override // defpackage.y41
    public final z41 a(Object obj, er2 er2Var, o23 o23Var) {
        int i = 0;
        int i2 = 1;
        int i3 = 2;
        switch (this.a) {
            case 0:
                a84 a84Var = (a84) obj;
                Bitmap.Config[] configArr = o94.a;
                if (nt1.g(a84Var.c, "file") && nt1.g(o70.i0(kt4.M(a84Var)), "android_asset")) {
                    return new oi(a84Var, er2Var, i);
                }
                return null;
            case 1:
                return new jw((Bitmap) obj);
            case 2:
                return new wz((byte[]) obj, er2Var, i);
            case 3:
                return new wz((ByteBuffer) obj, er2Var, i2);
            case 4:
                a84 a84Var2 = (a84) obj;
                if (nt1.g(a84Var2.c, "content")) {
                    return new oi(a84Var2, er2Var, i2);
                }
                return null;
            case 5:
                a84 a84Var3 = (a84) obj;
                if (nt1.g(a84Var3.c, "data")) {
                    return new oi(a84Var3, er2Var, i3);
                }
                return null;
            case 6:
                return new wz((Drawable) obj, er2Var, i3);
            case 7:
                a84 a84Var4 = (a84) obj;
                String str = a84Var4.c;
                if ((str != null && !str.equals("file")) || a84Var4.e == null) {
                    return null;
                }
                Bitmap.Config[] configArr2 = o94.a;
                if (nt1.g(a84Var4.c, "file") && nt1.g(o70.i0(kt4.M(a84Var4)), "android_asset")) {
                    return null;
                }
                return new oi(a84Var4, er2Var, 3);
            case 8:
                a84 a84Var5 = (a84) obj;
                if (nt1.g(a84Var5.c, "jar:file")) {
                    return new oi(a84Var5, er2Var, 4);
                }
                return null;
            default:
                a84 a84Var6 = (a84) obj;
                if (nt1.g(a84Var6.c, "android.resource")) {
                    return new oi(a84Var6, er2Var, 5);
                }
                return null;
        }
    }
}
