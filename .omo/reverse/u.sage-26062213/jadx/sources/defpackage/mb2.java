package defpackage;

import android.adservices.measurement.MeasurementManager;
import android.net.Uri;
import android.view.InputEvent;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class mb2 {
    public final MeasurementManager a;

    public mb2(MeasurementManager measurementManager) {
        measurementManager.getClass();
        this.a = measurementManager;
    }

    public static Object b(mb2 mb2Var, wr0 wr0Var, dh0 dh0Var) {
        new o20(1, dm0.A(dh0Var)).x();
        MeasurementManager measurementManager = mb2Var.a;
        throw null;
    }

    public static Object d(mb2 mb2Var, dh0 dh0Var) {
        o20 o20Var = new o20(1, dm0.A(dh0Var));
        o20Var.x();
        mb2Var.a.getMeasurementApiStatus(new mh(1), new gh0(o20Var));
        return o20Var.v();
    }

    public static Object g(mb2 mb2Var, cq3 cq3Var, dh0 dh0Var) {
        Object objR = dm0.r(new p4(mb2Var, null, 8), dh0Var);
        return objR == ri0.n ? objR : t64.a;
    }

    public static Object h(mb2 mb2Var, Uri uri, InputEvent inputEvent, dh0 dh0Var) {
        o20 o20Var = new o20(1, dm0.A(dh0Var));
        o20Var.x();
        mb2Var.a.registerSource(uri, inputEvent, new mh(1), new gh0(o20Var));
        Object objV = o20Var.v();
        return objV == ri0.n ? objV : t64.a;
    }

    public static Object j(mb2 mb2Var, Uri uri, dh0 dh0Var) {
        o20 o20Var = new o20(1, dm0.A(dh0Var));
        o20Var.x();
        mb2Var.a.registerTrigger(uri, new mh(1), new gh0(o20Var));
        Object objV = o20Var.v();
        return objV == ri0.n ? objV : t64.a;
    }

    public static Object l(mb2 mb2Var, yc4 yc4Var, dh0 dh0Var) {
        new o20(1, dm0.A(dh0Var)).x();
        MeasurementManager measurementManager = mb2Var.a;
        throw null;
    }

    public static Object n(mb2 mb2Var, zc4 zc4Var, dh0 dh0Var) {
        new o20(1, dm0.A(dh0Var)).x();
        MeasurementManager measurementManager = mb2Var.a;
        throw null;
    }

    public Object a(wr0 wr0Var, dh0 dh0Var) {
        return b(this, wr0Var, dh0Var);
    }

    public Object c(dh0 dh0Var) {
        return d(this, dh0Var);
    }

    public Object e(cq3 cq3Var, dh0 dh0Var) {
        return g(this, cq3Var, dh0Var);
    }

    public Object f(Uri uri, InputEvent inputEvent, dh0 dh0Var) {
        return h(this, uri, inputEvent, dh0Var);
    }

    public Object i(Uri uri, dh0 dh0Var) {
        return j(this, uri, dh0Var);
    }

    public Object k(yc4 yc4Var, dh0 dh0Var) {
        return l(this, yc4Var, dh0Var);
    }

    public Object m(zc4 zc4Var, dh0 dh0Var) {
        return n(this, zc4Var, dh0Var);
    }
}
