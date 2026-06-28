package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fs3 implements un0 {
    public final vh3 a;

    public fs3(vh3 vh3Var) {
        this.a = vh3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
    @Override // defpackage.un0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.iw a(defpackage.zp3 r7, defpackage.er2 r8) {
        /*
            r6 = this;
            android.graphics.Bitmap$Config r0 = defpackage.no1.a(r8)
            android.content.Context r1 = r8.a
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
            r3 = 0
            if (r0 == r2) goto L11
            android.graphics.Bitmap$Config r2 = defpackage.y2.y()
            if (r0 != r2) goto L93
        L11:
            po1 r0 = r7.a
            r51 r2 = r0.getFileSystem()
            dx1 r4 = defpackage.r51.n
            if (r2 != r4) goto L2a
            bt2 r2 = r0.I()
            if (r2 == 0) goto L2a
            java.io.File r0 = r2.toFile()
            android.graphics.ImageDecoder$Source r0 = defpackage.fx2.d(r0)
            goto L91
        L2a:
            fl4 r0 = r0.getMetadata()
            boolean r2 = r0 instanceof defpackage.mi
            if (r2 == 0) goto L3f
            android.content.res.AssetManager r1 = r1.getAssets()
            mi r0 = (defpackage.mi) r0
            java.lang.String r0 = r0.x
            android.graphics.ImageDecoder$Source r0 = defpackage.fx2.b(r1, r0)
            goto L91
        L3f:
            boolean r2 = r0 instanceof defpackage.ig0
            if (r2 == 0) goto L65
            int r2 = android.os.Build.VERSION.SDK_INT
            r4 = 29
            if (r2 < r4) goto L65
            ig0 r0 = (defpackage.ig0) r0     // Catch: android.system.ErrnoException -> L90
            android.content.res.AssetFileDescriptor r0 = r0.x     // Catch: android.system.ErrnoException -> L90
            java.io.FileDescriptor r1 = r0.getFileDescriptor()     // Catch: android.system.ErrnoException -> L90
            long r4 = r0.getStartOffset()     // Catch: android.system.ErrnoException -> L90
            int r2 = android.system.OsConstants.SEEK_SET     // Catch: android.system.ErrnoException -> L90
            android.system.Os.lseek(r1, r4, r2)     // Catch: android.system.ErrnoException -> L90
            vc0 r1 = new vc0     // Catch: android.system.ErrnoException -> L90
            r2 = 4
            r1.<init>(r2, r0)     // Catch: android.system.ErrnoException -> L90
            android.graphics.ImageDecoder$Source r0 = defpackage.fi1.e(r1)     // Catch: android.system.ErrnoException -> L90
            goto L91
        L65:
            boolean r2 = r0 instanceof defpackage.p73
            if (r2 == 0) goto L83
            r2 = r0
            p73 r2 = (defpackage.p73) r2
            java.lang.String r4 = r2.x
            java.lang.String r5 = r1.getPackageName()
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L83
            android.content.res.Resources r0 = r1.getResources()
            int r1 = r2.y
            android.graphics.ImageDecoder$Source r0 = defpackage.fx2.c(r0, r1)
            goto L91
        L83:
            boolean r1 = r0 instanceof defpackage.zz
            if (r1 == 0) goto L90
            zz r0 = (defpackage.zz) r0
            java.nio.ByteBuffer r0 = r0.x
            android.graphics.ImageDecoder$Source r0 = defpackage.fx2.e(r0)
            goto L91
        L90:
            r0 = r3
        L91:
            if (r0 != 0) goto L94
        L93:
            return r3
        L94:
            iw r1 = new iw
            po1 r7 = r7.a
            vh3 r6 = r6.a
            r1.<init>(r0, r7, r8, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fs3.a(zp3, er2):iw");
    }
}
