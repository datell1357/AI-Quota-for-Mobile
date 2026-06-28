package defpackage;

import java.nio.channels.WritableByteChannel;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ez extends kn3, WritableByteChannel {
    ez e0(String str);

    @Override // defpackage.kn3, java.io.Flushable
    void flush();

    ez m(g00 g00Var);

    ez write(byte[] bArr);

    ez writeByte(int i);

    ez writeInt(int i);

    ez writeShort(int i);
}
