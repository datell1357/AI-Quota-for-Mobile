package com.google.api.client.util;

import defpackage.xy3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class Throwables {
    private Throwables() {
    }

    public static RuntimeException propagate(Throwable th) {
        xy3.a(th);
        throw new RuntimeException(th);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <X extends Throwable> void propagateIfPossible(Throwable th, Class<X> cls) throws X {
        Object obj = xy3.a;
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
        if (th != null) {
            xy3.a(th);
        }
    }

    public static void propagateIfPossible(Throwable th) {
        if (th != null) {
            xy3.a(th);
        }
    }
}
