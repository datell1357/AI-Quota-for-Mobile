package defpackage;

import android.os.Parcel;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import java.util.IllegalFormatException;
import java.util.Locale;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sg0 implements sz0, RemoteCall {
    public final /* synthetic */ int n;
    public String o;

    public sg0(String str) {
        this.n = 5;
        this.o = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat(str);
    }

    public static String c(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return str + " : " + str2;
    }

    public void a(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            Log.i("PlayCore", c(this.o, str, objArr));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public void accept(Object obj, Object obj2) {
        switch (this.n) {
            case 4:
                int i = w65.a;
                n65 n65Var = new n65((pw3) obj2);
                y65 y65Var = (y65) ((a75) obj).getService();
                String str = this.o;
                Parcel parcelF = y65Var.F();
                ku4.c(parcelF, n65Var);
                parcelF.writeString(str);
                y65Var.G(5, parcelF);
                break;
            case 5:
            default:
                l25 l25Var = (l25) ((bf5) obj).getService();
                vk4 vk4Var = new vk4(0, (pw3) obj2);
                String str2 = this.o;
                Parcel parcelE = l25Var.E();
                parcelE.writeString(str2);
                int i2 = jv4.a;
                parcelE.writeStrongBinder(vk4Var);
                l25Var.F(2, parcelE);
                break;
            case 6:
                String str3 = this.o;
                hb5 hb5Var = (hb5) ((l45) obj).getService();
                zk4 zk4Var = new zk4(1, (pw3) obj2);
                Parcel parcelZza = hb5Var.zza();
                iv4.d(parcelZza, zk4Var);
                parcelZza.writeString(str3);
                hb5Var.zzc(3, parcelZza);
                break;
        }
    }

    @Override // defpackage.sz0
    public boolean b(CharSequence charSequence, int i, int i2, z44 z44Var) {
        if (!TextUtils.equals(charSequence.subSequence(i, i2), this.o)) {
            return true;
        }
        z44Var.c = (z44Var.c & 3) | 4;
        return false;
    }

    public String toString() {
        switch (this.n) {
            case 0:
                return this.o;
            case 3:
                return "<" + this.o + '>';
            default:
                return super.toString();
        }
    }

    @Override // defpackage.sz0
    public Object getResult() {
        return this;
    }

    public /* synthetic */ sg0(String str, int i) {
        this.n = i;
        this.o = str;
    }

    public /* synthetic */ sg0(GoogleApi googleApi, String str, int i) {
        this.n = i;
        this.o = str;
    }

    public sg0(int i) {
        this.n = i;
        switch (i) {
            case 2:
                break;
            default:
                Logger logger = vg0.c;
                this.o = "opencensus-trace-span-key";
                break;
        }
    }
}
