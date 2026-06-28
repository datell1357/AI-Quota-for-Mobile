package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wu extends d1 {
    public InputStream n;
    public long o = -1;

    @Override // defpackage.xl1
    public final InputStream getContent() {
        mt1.n("Content has not been provided", this.n != null);
        return this.n;
    }

    @Override // defpackage.xl1
    public final long getContentLength() {
        return this.o;
    }

    @Override // defpackage.xl1
    public final boolean isRepeatable() {
        return false;
    }

    @Override // defpackage.xl1
    public final boolean isStreaming() {
        InputStream inputStream = this.n;
        return (inputStream == null || inputStream == e01.n) ? false : true;
    }

    @Override // defpackage.xl1
    public final void writeTo(OutputStream outputStream) throws IOException {
        InputStream content = getContent();
        try {
            byte[] bArr = new byte[BlockstoreClient.MAX_SIZE];
            while (true) {
                int i = content.read(bArr);
                if (i == -1) {
                    return;
                } else {
                    outputStream.write(bArr, 0, i);
                }
            }
        } finally {
            content.close();
        }
    }
}
