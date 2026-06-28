package defpackage;

import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class md5 implements wd5 {
    @Override // defpackage.wd5
    public final pd5 a(Uri uri) throws c70 {
        File fileA = bt4.a(uri);
        return new pd5(new FileInputStream(fileA), fileA);
    }

    @Override // defpackage.wd5
    public final boolean b(Uri uri) {
        return bt4.a(uri).exists();
    }

    @Override // defpackage.wd5
    public final OutputStream c(Uri uri) throws IOException {
        File fileA = bt4.a(uri);
        ca.k(fileA);
        return new qd5(new FileOutputStream(fileA), fileA);
    }

    @Override // defpackage.wd5
    public final void d(Uri uri) {
        File fileA = bt4.a(uri);
        if (fileA.isDirectory()) {
            throw new FileNotFoundException(String.format("%s is a directory", uri));
        }
        if (fileA.delete()) {
            return;
        }
        if (!fileA.exists()) {
            throw new FileNotFoundException(String.format("%s does not exist", uri));
        }
        throw new IOException(String.format("%s could not be deleted", uri));
    }

    @Override // defpackage.wd5
    public final void e(Uri uri, Uri uri2) {
        File fileA = bt4.a(uri);
        File fileA2 = bt4.a(uri2);
        ca.k(fileA2);
        if (!fileA.renameTo(fileA2)) {
            throw new IOException(String.format("%s could not be renamed to %s", uri, uri2));
        }
    }

    @Override // defpackage.wd5
    public final File f(Uri uri) {
        return bt4.a(uri);
    }

    @Override // defpackage.wd5
    public final String zzc() {
        return "file";
    }
}
