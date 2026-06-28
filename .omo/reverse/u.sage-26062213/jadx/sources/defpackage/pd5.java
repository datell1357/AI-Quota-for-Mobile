package defpackage;

import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pd5 extends rd5 implements nd5 {
    public final File n;

    public pd5(FileInputStream fileInputStream, File file) {
        super(fileInputStream);
        this.n = file;
    }

    @Override // defpackage.nd5
    public final File zza() {
        return this.n;
    }
}
