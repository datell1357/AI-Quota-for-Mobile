package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s31 extends o31 {
    public s31(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.n.mark(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        } else {
            k21.f("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
            throw null;
        }
    }

    public final void j(long j) throws IOException {
        int i = this.o;
        if (i > j) {
            this.o = 0;
            this.n.reset();
        } else {
            j -= (long) i;
        }
        b((int) j);
    }

    public s31(byte[] bArr) {
        super(bArr);
        this.n.mark(Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }
}
