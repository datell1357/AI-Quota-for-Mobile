package defpackage;

import android.content.Context;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.internal.RemoteCall;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bc5 implements on2, RemoteCall {
    public static final Object p = new Object();
    public static volatile e53 q;
    public final /* synthetic */ int n;
    public final String o;

    public bc5(Context context, cc5 cc5Var) {
        this.n = 0;
        this.o = cc5Var.u() ? l75.b(context, cc5Var.t()) : cc5Var.t();
    }

    public static void a(eh ehVar, tk3 tk3Var) {
        String str = tk3Var.a;
        if (str != null) {
            ehVar.B("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        }
        ehVar.B("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        ehVar.B("X-CRASHLYTICS-API-CLIENT-VERSION", "20.0.6");
        ehVar.B("Accept", "application/json");
        ehVar.B("X-CRASHLYTICS-DEVICE-MODEL", tk3Var.b);
        String str2 = tk3Var.c;
        if (str2 != null) {
            ehVar.B("X-CRASHLYTICS-OS-BUILD-VERSION", str2);
        }
        String str3 = tk3Var.d;
        if (str3 != null) {
            ehVar.B("X-CRASHLYTICS-OS-DISPLAY-VERSION", str3);
        }
        String str4 = tk3Var.e.c().a;
        if (str4 != null) {
            ehVar.B("X-CRASHLYTICS-INSTALLATION-ID", str4);
        }
    }

    public static HashMap b(tk3 tk3Var) {
        HashMap map = new HashMap();
        map.put("build_version", tk3Var.h);
        map.put("display_version", tk3Var.g);
        map.put("source", Integer.toString(tk3Var.i));
        String str = tk3Var.f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        int i = this.n;
        String str = this.o;
        switch (i) {
            case 3:
                int i2 = w65.a;
                n65 n65Var = new n65((pw3) obj2);
                y65 y65Var = (y65) ((a75) obj).getService();
                Parcel parcelF = y65Var.F();
                ku4.c(parcelF, n65Var);
                parcelF.writeString(str);
                parcelF.writeString("");
                parcelF.writeString(null);
                y65Var.G(11, parcelF);
                break;
            default:
                ib5 ib5Var = new ib5(1, (pw3) obj2);
                l25 l25Var = (l25) ((bf5) obj).getService();
                Parcel parcelE = l25Var.E();
                parcelE.writeString(str);
                int i3 = jv4.a;
                parcelE.writeStrongBinder(ib5Var);
                l25Var.F(5, parcelE);
                break;
        }
    }

    public JSONObject c(d90 d90Var) {
        int i = d90Var.o;
        w13 w13Var = w13.H;
        w13Var.m("Settings response code was: " + i);
        String str = this.o;
        if (i == 200 || i == 201 || i == 202 || i == 203) {
            String str2 = (String) d90Var.p;
            try {
                return new JSONObject(str2);
            } catch (Exception e) {
                w13Var.n("Failed to parse settings JSON from ".concat(str), e);
                w13Var.n("Settings response " + str2, null);
                return null;
            }
        }
        String str3 = "Settings request failed; (status: " + i + ") from " + str;
        if (w13Var.b(6)) {
            Log.e("FirebaseCrashlytics", str3, null);
        }
        return null;
    }

    @Override // defpackage.on2
    public Object d() {
        throw new fw1(this.o, 5);
    }

    public /* synthetic */ bc5(uc5 uc5Var, String str) {
        this.n = 4;
        this.o = str;
    }

    public /* synthetic */ bc5(String str, int i) {
        this.n = i;
        this.o = str;
    }

    public bc5(String str, b21 b21Var) {
        this.n = 2;
        this.o = str;
    }
}
