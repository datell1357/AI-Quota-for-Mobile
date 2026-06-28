package defpackage;

import java.nio.charset.CharacterCodingException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mc2 extends CharacterCodingException {
    public final String n;

    public mc2(String str) {
        this.n = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.n;
    }
}
