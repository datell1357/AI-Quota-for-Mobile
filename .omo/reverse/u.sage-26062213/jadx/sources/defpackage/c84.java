package defpackage;

import com.google.api.client.http.UrlEncodedParser;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c84 extends d1 implements Cloneable {
    public final byte[] n;

    public c84(ArrayList arrayList, Charset charset) {
        String strA = a64.a(arrayList, charset != null ? charset : vi1.a);
        pg0 pg0VarA = pg0.a(UrlEncodedParser.CONTENT_TYPE, charset);
        Charset charset2 = pg0VarA.o;
        this.n = strA.getBytes(charset2 == null ? vi1.a : charset2);
        setContentType(pg0VarA.toString());
    }

    public final Object clone() {
        return super.clone();
    }

    @Override // defpackage.xl1
    public final InputStream getContent() {
        return new ByteArrayInputStream(this.n);
    }

    @Override // defpackage.xl1
    public final long getContentLength() {
        return this.n.length;
    }

    @Override // defpackage.xl1
    public final boolean isRepeatable() {
        return true;
    }

    @Override // defpackage.xl1
    public final boolean isStreaming() {
        return false;
    }

    @Override // defpackage.xl1
    public final void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this.n);
        outputStream.flush();
    }
}
