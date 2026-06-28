package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fz4 extends IOException {
    public static fz4 a() {
        return new fz4("Protocol message had invalid UTF-8.");
    }

    public static fz4 b() {
        return new fz4("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static fz4 c() {
        return new fz4("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
