package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class wt1 extends IOException {
    public boolean n;

    public static wt1 a() {
        return new wt1("Protocol message had invalid UTF-8.");
    }

    public static vt1 b() {
        return new vt1("Protocol message tag had invalid wire type.");
    }

    public static wt1 c() {
        return new wt1("CodedInputStream encountered a malformed varint.");
    }

    public static wt1 d() {
        return new wt1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static wt1 e() {
        return new wt1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
