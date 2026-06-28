package com.google.api.client.util;

import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ObjectParser {
    <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls);

    Object parseAndClose(InputStream inputStream, Charset charset, Type type);

    <T> T parseAndClose(Reader reader, Class<T> cls);

    Object parseAndClose(Reader reader, Type type);
}
