package defpackage;

import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qd5 extends sd5 implements nd5 {
    public final FileOutputStream n;
    public final File o;

    public qd5(FileOutputStream fileOutputStream, File file) {
        super(fileOutputStream);
        this.n = fileOutputStream;
        this.o = file;
    }

    @Override // defpackage.nd5
    public final File zza() {
        return this.o;
    }
}
