package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class wt4 extends lt4 implements IInterface {
    public wt4() {
        super("com.google.android.gms.auth.api.internal.IAuthCallbacks");
    }

    public void E(ProxyResponse proxyResponse) {
        throw new UnsupportedOperationException();
    }

    public void F(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.lt4
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            ProxyResponse proxyResponse = (ProxyResponse) iv4.a(parcel, ProxyResponse.CREATOR);
            iv4.b(parcel);
            E(proxyResponse);
        } else {
            if (i != 2) {
                return false;
            }
            String string = parcel.readString();
            iv4.b(parcel);
            F(string);
        }
        parcel2.writeNoException();
        return true;
    }
}
