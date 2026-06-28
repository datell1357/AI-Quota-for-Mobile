package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.ef5;
import defpackage.ow3;
import defpackage.pw3;
import defpackage.qw3;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class TaskUtil {
    public static <ResultT> void setResultOrApiException(Status status, ResultT resultt, pw3 pw3Var) {
        if (status.isSuccess()) {
            pw3Var.b(resultt);
        } else {
            pw3Var.a(ApiExceptionUtil.fromStatus(status));
        }
    }

    @Deprecated
    public static ow3 toVoidTaskThatFailsOnFalse(ow3 ow3Var) {
        zacx zacxVar = new zacx();
        ef5 ef5Var = (ef5) ow3Var;
        ef5Var.getClass();
        return ef5Var.d(qw3.a, zacxVar);
    }

    @ResultIgnorabilityUnspecified
    public static <ResultT> boolean trySetResultOrApiException(Status status, ResultT resultt, pw3 pw3Var) {
        return status.isSuccess() ? pw3Var.a.o(resultt) : pw3Var.c(ApiExceptionUtil.fromStatus(status));
    }

    public static void setResultOrApiException(Status status, pw3 pw3Var) {
        setResultOrApiException(status, null, pw3Var);
    }
}
