package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wz implements z41 {
    public final /* synthetic */ int a;
    public final er2 b;
    public final Object c;

    public /* synthetic */ wz(Object obj, er2 er2Var, int i) {
        this.a = i;
        this.c = obj;
        this.b = er2Var;
    }

    @Override // defpackage.z41
    public final Object a(v01 v01Var) {
        int i = this.a;
        km0 km0Var = km0.o;
        Object obj = this.c;
        er2 er2Var = this.b;
        switch (i) {
            case 0:
                sy syVar = new sy();
                byte[] bArr = (byte[]) obj;
                bArr.getClass();
                syVar.i0(bArr.length, bArr);
                return new zp3(new aq3(syVar, er2Var.f, null), null, km0Var);
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                return new zp3(new aq3(new d23(new yz(byteBuffer)), er2Var.f, new zz(byteBuffer)), null, km0Var);
            default:
                Drawable bitmapDrawable = (Drawable) obj;
                Bitmap.Config[] configArr = o94.a;
                boolean z = bitmapDrawable instanceof VectorDrawable;
                if (z) {
                    bitmapDrawable = new BitmapDrawable(er2Var.a.getResources(), k30.l(bitmapDrawable, no1.a(er2Var), er2Var.b, er2Var.c, (ln3) k30.x(er2Var, lo1.b), er2Var.d == cx2.o));
                }
                return new co1(ht4.d(bitmapDrawable), z, km0Var);
        }
    }
}
