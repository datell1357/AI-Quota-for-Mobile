package defpackage;

import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.util.Size;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hs3 implements ImageDecoder$OnHeaderDecodedListener {
    public final /* synthetic */ iw a;
    public final /* synthetic */ s33 b;

    public hs3(iw iwVar, s33 s33Var) {
        this.a = iwVar;
        this.b = s33Var;
    }

    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        Size size = imageInfo.getSize();
        int width = size.getWidth();
        int height = size.getHeight();
        iw iwVar = this.a;
        er2 er2Var = iwVar.b;
        ln3 ln3Var = er2Var.b;
        rd3 rd3Var = er2Var.c;
        i3 i3Var = lo1.b;
        long jR = c75.r(width, height, ln3Var, rd3Var, (ln3) k30.x(er2Var, i3Var));
        int i = (int) (jR >> 32);
        int i2 = (int) (jR & 4294967295L);
        if (width > 0 && height > 0 && (width != i || height != i2)) {
            er2 er2Var2 = iwVar.b;
            double dS = c75.s(width, height, i, i2, er2Var2.c, (ln3) k30.x(er2Var2, i3Var));
            boolean z = dS < 1.0d;
            this.b.n = z;
            if (z || iwVar.b.d == cx2.n) {
                imageDecoder.setTargetSize(is0.U(((double) width) * dS), is0.U(dS * ((double) height)));
            }
        }
        imageDecoder.setOnPartialImageListener(new es3());
        er2 er2Var3 = iwVar.b;
        imageDecoder.setAllocator(tv4.D(no1.a(er2Var3)) ? 3 : 1);
        imageDecoder.setMemorySizePolicy(!((Boolean) k30.x(er2Var3, no1.g)).booleanValue() ? 1 : 0);
        i3 i3Var2 = no1.c;
        if (d51.d(k30.x(er2Var3, i3Var2)) != null) {
            imageDecoder.setTargetColorSpace(d51.d(k30.x(er2Var3, i3Var2)));
        }
        imageDecoder.setUnpremultipliedRequired(!((Boolean) k30.x(er2Var3, no1.d)).booleanValue());
    }
}
