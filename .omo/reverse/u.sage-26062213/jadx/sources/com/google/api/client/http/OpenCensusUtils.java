package com.google.api.client.http;

import com.google.api.client.util.Preconditions;
import defpackage.dc3;
import defpackage.dx3;
import defpackage.ex3;
import defpackage.fq3;
import defpackage.hp1;
import defpackage.ks3;
import defpackage.lp1;
import defpackage.nw;
import defpackage.oc2;
import defpackage.q01;
import defpackage.se0;
import defpackage.u04;
import defpackage.w04;
import defpackage.w80;
import defpackage.y60;
import defpackage.z43;
import defpackage.zn;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class OpenCensusUtils {
    private static final AtomicLong idGenerator;
    private static volatile boolean isRecordEvent;
    static volatile ex3 propagationTextFormat;
    static volatile dx3 propagationTextFormatSetter;
    private static final u04 tracer;
    private static final Logger logger = Logger.getLogger(OpenCensusUtils.class.getName());
    public static final String SPAN_NAME_HTTP_REQUEST_EXECUTE = "Sent." + HttpRequest.class.getName() + ".execute";

    static {
        w04.a.getClass();
        tracer = u04.a;
        idGenerator = new AtomicLong();
        isRecordEvent = true;
        propagationTextFormat = null;
        propagationTextFormatSetter = null;
        try {
            propagationTextFormat = new y60();
            propagationTextFormatSetter = new dx3() { // from class: com.google.api.client.http.OpenCensusUtils.1
                @Override // defpackage.dx3
                public void put(HttpHeaders httpHeaders, String str, String str2) {
                    httpHeaders.set(str, (Object) str2);
                }
            };
        } catch (Exception e) {
            logger.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e);
        }
        try {
            dc3 dc3Var = (dc3) w04.a.a.o;
            String str = SPAN_NAME_HTTP_REQUEST_EXECUTE;
            hp1 hp1Var = lp1.o;
            Object[] objArr = {str};
            w80.m(1, objArr);
            z43 z43VarI = lp1.i(1, objArr);
            dc3Var.getClass();
            se0.g(z43VarI, "spanNames");
            synchronized (dc3Var.a) {
                dc3Var.a.addAll(z43VarI);
            }
        } catch (Exception e2) {
            logger.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e2);
        }
    }

    private OpenCensusUtils() {
    }

    public static q01 getEndSpanOptions(Integer num) {
        ks3 ks3Var;
        if (num == null) {
            ks3Var = ks3.d;
        } else if (HttpStatusCodes.isSuccess(num.intValue())) {
            ks3Var = ks3.c;
        } else {
            int iIntValue = num.intValue();
            ks3Var = iIntValue != 400 ? iIntValue != 401 ? iIntValue != 403 ? iIntValue != 404 ? iIntValue != 412 ? iIntValue != 500 ? ks3.d : ks3.j : ks3.i : ks3.f : ks3.g : ks3.h : ks3.e;
        }
        return new zn(false, ks3Var);
    }

    public static u04 getTracer() {
        return tracer;
    }

    public static boolean isRecordEvent() {
        return isRecordEvent;
    }

    public static void propagateTracingContext(fq3 fq3Var, HttpHeaders httpHeaders) {
        Preconditions.checkArgument(fq3Var != null, "span should not be null.");
        Preconditions.checkArgument(httpHeaders != null, "headers should not be null.");
        if (propagationTextFormat == null || propagationTextFormatSetter == null || fq3Var.equals(nw.c)) {
            return;
        }
        propagationTextFormat.a(fq3Var.a, httpHeaders, propagationTextFormatSetter);
    }

    public static void recordMessageEvent(fq3 fq3Var, long j, oc2 oc2Var) {
        Preconditions.checkArgument(fq3Var != null, "span should not be null.");
        idGenerator.getAndIncrement();
        se0.g(oc2Var, "type");
        ((nw) fq3Var).getClass();
    }

    public static void recordReceivedMessageEvent(fq3 fq3Var, long j) {
        recordMessageEvent(fq3Var, j, oc2.o);
    }

    public static void recordSentMessageEvent(fq3 fq3Var, long j) {
        recordMessageEvent(fq3Var, j, oc2.n);
    }

    public static void setIsRecordEvent(boolean z) {
        isRecordEvent = z;
    }

    public static void setPropagationTextFormat(ex3 ex3Var) {
        propagationTextFormat = ex3Var;
    }

    public static void setPropagationTextFormatSetter(dx3 dx3Var) {
        propagationTextFormatSetter = dx3Var;
    }
}
