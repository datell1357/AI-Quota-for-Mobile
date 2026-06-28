package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f35 extends q55 {
    public static final Pair z = new Pair("", 0L);
    public SharedPreferences c;
    public SharedPreferences d;
    public q41 e;
    public final y25 f;
    public final mu0 g;
    public String h;
    public boolean i;
    public long j;
    public final y25 k;
    public final u25 l;
    public final mu0 m;
    public final qd1 n;
    public final u25 o;
    public final y25 p;
    public final y25 q;
    public boolean r;
    public final u25 s;
    public final u25 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final y25 f91u;
    public final mu0 v;
    public final mu0 w;
    public final y25 x;
    public final qd1 y;

    public f35(r45 r45Var) {
        super(r45Var);
        this.k = new y25(this, "session_timeout", 1800000L);
        this.l = new u25(this, "start_new_session", true);
        this.p = new y25(this, "last_pause_time", 0L);
        this.q = new y25(this, "session_id", 0L);
        this.m = new mu0(this, "non_personalized_ads");
        this.n = new qd1(this, "last_received_uri_timestamps_by_source");
        this.o = new u25(this, "allow_remote_dynamite", false);
        this.f = new y25(this, "first_open_time", 0L);
        Preconditions.checkNotEmpty("app_install_time");
        this.g = new mu0(this, "app_instance_id");
        this.s = new u25(this, "app_backgrounded", false);
        this.t = new u25(this, "deep_link_retrieval_complete", false);
        this.f91u = new y25(this, "deep_link_retrieval_attempts", 0L);
        this.v = new mu0(this, "firebase_feature_rollouts");
        this.w = new mu0(this, "deferred_attribution_cache");
        this.x = new y25(this, "deferred_attribution_cache_timestamp", 0L);
        this.y = new qd1(this, "default_event_parameters");
    }

    public final SharedPreferences A() {
        v();
        x();
        if (this.d == null) {
            r45 r45Var = (r45) this.a;
            String strValueOf = String.valueOf(r45Var.a.getPackageName());
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            x15 x15Var = a25Var.n;
            String strConcat = strValueOf.concat("_preferences");
            x15Var.b(strConcat, "Default prefs file");
            this.d = r45Var.a.getSharedPreferences(strConcat, 0);
        }
        return this.d;
    }

    public final SparseArray B() {
        Bundle bundleJ = this.n.J();
        int[] intArray = bundleJ.getIntArray("uriSources");
        long[] longArray = bundleJ.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            a25 a25Var = ((r45) this.a).f;
            r45.l(a25Var);
            a25Var.f.a("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < intArray.length; i++) {
            sparseArray.put(intArray[i], Long.valueOf(longArray[i]));
        }
        return sparseArray;
    }

    public final y55 C() {
        v();
        return y55.c(z().getInt("consent_source", 100), z().getString("consent_settings", "G1"));
    }

    public final void D(boolean z2) {
        v();
        a25 a25Var = ((r45) this.a).f;
        r45.l(a25Var);
        a25Var.n.b(Boolean.valueOf(z2), "App measurement setting deferred collection");
        SharedPreferences.Editor editorEdit = z().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z2);
        editorEdit.apply();
    }

    public final boolean E(long j) {
        return j - this.k.a() > this.p.a();
    }

    @Override // defpackage.q55
    public final boolean w() {
        return true;
    }

    public final SharedPreferences z() {
        v();
        x();
        Preconditions.checkNotNull(this.c);
        return this.c;
    }
}
