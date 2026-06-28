package defpackage;

import android.os.StatFs;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jx3 implements ne1 {
    public final /* synthetic */ int n;

    @Override // defpackage.ne1
    public final Object a() {
        switch (this.n) {
            case 0:
                return h54.a;
            case 1:
                return sq0.a;
            case 2:
                long j = t70.f;
                return new n50(j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j, j);
            case 3:
                return Boolean.TRUE;
            case 4:
                return new e54();
            case 5:
                dx1 dx1Var = r51.n;
                bt2 bt2VarE = r51.o.e("coil3_disk_cache");
                long jL = 10485760;
                try {
                    File file = bt2VarE.toFile();
                    file.mkdir();
                    StatFs statFs = new StatFs(file.getAbsolutePath());
                    jL = ix.l((long) (0.02d * statFs.getBlockSizeLong() * statFs.getBlockCountLong()), 10485760L, 262144000L);
                    break;
                } catch (Exception unused) {
                }
                return new l23(jL, dx1Var, bt2VarE);
            case 6:
                return new w13(0);
            default:
                throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
        }
    }
}
