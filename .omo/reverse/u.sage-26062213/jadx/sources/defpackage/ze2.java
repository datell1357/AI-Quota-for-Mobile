package defpackage;

import android.os.ParcelFileDescriptor;
import androidx.datastore.core.NativeSharedCounter;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ze2 implements vs1 {
    public final hi0 a;
    public final File b;
    public final q30 c;
    public final String d;
    public final String e;
    public final String f;
    public final hh2 g;
    public final nv3 h;
    public final nv3 i;

    public ze2(hi0 hi0Var, File file) {
        hi0Var.getClass();
        file.getClass();
        this.a = hi0Var;
        this.b = file;
        Object obj = gf2.b;
        this.c = new q30(new p(file, null, 18), d01.n, -2, vy.n, 0);
        this.d = ".lock";
        this.e = ".version";
        this.f = "fcntl failed: EAGAIN";
        this.g = new hh2();
        final int i = 0;
        this.h = new nv3(new ne1(this) { // from class: ue2
            public final /* synthetic */ ze2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() throws Throwable {
                Throwable th;
                ParcelFileDescriptor parcelFileDescriptorOpen;
                int i2 = i;
                ze2 ze2Var = this.o;
                switch (i2) {
                    case 0:
                        File file2 = new File(ze2Var.b.getAbsolutePath() + ze2Var.d);
                        ze2.f(file2);
                        return file2;
                    default:
                        rl3.a.getClass();
                        File file3 = new File(ze2Var.b.getAbsolutePath() + ze2Var.e);
                        ze2.f(file3);
                        ql3 ql3Var = null;
                        try {
                            parcelFileDescriptorOpen = ParcelFileDescriptor.open(file3, 939524096);
                            try {
                                parcelFileDescriptorOpen.getClass();
                                NativeSharedCounter nativeSharedCounter = pl3.b;
                                if (nativeSharedCounter != null) {
                                    int fd = parcelFileDescriptorOpen.getFd();
                                    if (nativeSharedCounter.nativeTruncateFile(fd) == 0) {
                                        long jNativeCreateSharedCounter = nativeSharedCounter.nativeCreateSharedCounter(fd);
                                        if (jNativeCreateSharedCounter >= 0) {
                                            ql3Var = new ql3(nativeSharedCounter, jNativeCreateSharedCounter);
                                        } else {
                                            p61.k("Failed to mmap counter file");
                                        }
                                    } else {
                                        p61.k("Failed to truncate counter file");
                                    }
                                } else {
                                    k21.n("DataStore failed to load the native library to create SharedCounter.");
                                }
                                parcelFileDescriptorOpen.close();
                                return ql3Var;
                            } catch (Throwable th2) {
                                th = th2;
                                if (parcelFileDescriptorOpen != null) {
                                    parcelFileDescriptorOpen.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            parcelFileDescriptorOpen = null;
                        }
                        break;
                }
            }
        });
        final int i2 = 1;
        this.i = new nv3(new ne1(this) { // from class: ue2
            public final /* synthetic */ ze2 o;

            {
                this.o = this;
            }

            @Override // defpackage.ne1
            public final Object a() throws Throwable {
                Throwable th;
                ParcelFileDescriptor parcelFileDescriptorOpen;
                int i22 = i2;
                ze2 ze2Var = this.o;
                switch (i22) {
                    case 0:
                        File file2 = new File(ze2Var.b.getAbsolutePath() + ze2Var.d);
                        ze2.f(file2);
                        return file2;
                    default:
                        rl3.a.getClass();
                        File file3 = new File(ze2Var.b.getAbsolutePath() + ze2Var.e);
                        ze2.f(file3);
                        ql3 ql3Var = null;
                        try {
                            parcelFileDescriptorOpen = ParcelFileDescriptor.open(file3, 939524096);
                            try {
                                parcelFileDescriptorOpen.getClass();
                                NativeSharedCounter nativeSharedCounter = pl3.b;
                                if (nativeSharedCounter != null) {
                                    int fd = parcelFileDescriptorOpen.getFd();
                                    if (nativeSharedCounter.nativeTruncateFile(fd) == 0) {
                                        long jNativeCreateSharedCounter = nativeSharedCounter.nativeCreateSharedCounter(fd);
                                        if (jNativeCreateSharedCounter >= 0) {
                                            ql3Var = new ql3(nativeSharedCounter, jNativeCreateSharedCounter);
                                        } else {
                                            p61.k("Failed to mmap counter file");
                                        }
                                    } else {
                                        p61.k("Failed to truncate counter file");
                                    }
                                } else {
                                    k21.n("DataStore failed to load the native library to create SharedCounter.");
                                }
                                parcelFileDescriptorOpen.close();
                                return ql3Var;
                            } catch (Throwable th2) {
                                th = th2;
                                if (parcelFileDescriptorOpen != null) {
                                    parcelFileDescriptorOpen.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            parcelFileDescriptorOpen = null;
                        }
                        break;
                }
            }
        });
    }

    public static void f(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                q73.q(file, "Unable to create parent directories of ");
                return;
            }
        }
        if (file.exists()) {
            return;
        }
        file.createNewFile();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3 A[Catch: all -> 0x00b7, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00b7, blocks: (B:41:0x00b3, B:55:0x00d1, B:56:0x00d4), top: B:72:0x0022, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1 A[Catch: all -> 0x00b7, TRY_ENTER, TryCatch #4 {all -> 0x00b7, blocks: (B:41:0x00b3, B:55:0x00d1, B:56:0x00d4), top: B:72:0x0022, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v10, types: [fh2] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [fh2] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [pe1] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v20, types: [fh2] */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.io.Closeable, java.lang.Object, pe1] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v8 */
    @Override // defpackage.vs1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.pe1 r9, defpackage.fh0 r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ze2.a(pe1, fh0):java.lang.Object");
    }

    @Override // defpackage.vs1
    public final Object b(fh0 fh0Var) {
        nv3 nv3Var = this.i;
        if (nv3Var.a()) {
            ql3 ql3Var = (ql3) ((rl3) nv3Var.getValue());
            return new Integer(ql3Var.b.nativeGetCounterValue(ql3Var.c));
        }
        return ca.O(this.a, new we2(this, null, 0), fh0Var);
    }

    @Override // defpackage.vs1
    public final Object c(en0 en0Var) {
        nv3 nv3Var = this.i;
        if (nv3Var.a()) {
            ql3 ql3Var = (ql3) ((rl3) nv3Var.getValue());
            return new Integer(ql3Var.b.nativeIncrementAndGetCounterValue(ql3Var.c));
        }
        return ca.O(this.a, new we2(this, null, 1), en0Var);
    }

    @Override // defpackage.vs1
    public final a81 d() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00dc A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e0, blocks: (B:61:0x00dc, B:75:0x00f7, B:76:0x00fa), top: B:88:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f7 A[Catch: all -> 0x00e0, TRY_ENTER, TryCatch #1 {all -> 0x00e0, blocks: (B:61:0x00dc, B:75:0x00f7, B:76:0x00fa), top: B:88:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r19v0, types: [df1] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v10, types: [fh2] */
    /* JADX WARN: Type inference failed for: r2v13, types: [hh2] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2, types: [fh2] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, ye2] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [fh2] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int, java.io.Closeable] */
    @Override // defpackage.vs1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(defpackage.df1 r19, defpackage.fh0 r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ze2.e(df1, fh0):java.lang.Object");
    }
}
