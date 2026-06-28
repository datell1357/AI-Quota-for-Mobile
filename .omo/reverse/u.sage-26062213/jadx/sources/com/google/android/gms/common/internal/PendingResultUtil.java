package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import defpackage.ow3;
import defpackage.pw3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class PendingResultUtil {
    private static final zas zaa = new zao();

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public interface ResultConverter<R extends Result, T> {
        T convert(R r);
    }

    public static <R extends Result, T extends Response<R>> ow3 toResponseTask(PendingResult<R> pendingResult, T t) {
        return toTask(pendingResult, new zaq(t));
    }

    public static <R extends Result, T> ow3 toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        zas zasVar = zaa;
        pw3 pw3Var = new pw3();
        pendingResult.addStatusListener(new zap(pendingResult, pw3Var, resultConverter, zasVar));
        return pw3Var.a;
    }

    public static <R extends Result> ow3 toVoidTask(PendingResult<R> pendingResult) {
        return toTask(pendingResult, new zar());
    }
}
