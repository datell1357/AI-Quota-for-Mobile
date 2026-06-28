package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.MultiInstanceInvalidationService;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qe2 extends Binder implements jn1 {
    public final /* synthetic */ MultiInstanceInvalidationService c;

    public qe2(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.c = multiInstanceInvalidationService;
        attachInterface(this, jn1.b);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String str = jn1.b;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        in1 in1Var = null;
        in1 in1Var2 = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                y(parcel.createStringArray(), parcel.readInt());
                return true;
            }
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(in1.a);
                if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof in1)) {
                    hn1 hn1Var = new hn1();
                    hn1Var.c = strongBinder;
                    in1Var2 = hn1Var;
                } else {
                    in1Var2 = (in1) iInterfaceQueryLocalInterface;
                }
            }
            int i3 = parcel.readInt();
            in1Var2.getClass();
            MultiInstanceInvalidationService multiInstanceInvalidationService = this.c;
            synchronized (multiInstanceInvalidationService.p) {
                multiInstanceInvalidationService.p.unregister(in1Var2);
            }
            parcel2.writeNoException();
            return true;
        }
        IBinder strongBinder2 = parcel.readStrongBinder();
        if (strongBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface(in1.a);
            if (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof in1)) {
                hn1 hn1Var2 = new hn1();
                hn1Var2.c = strongBinder2;
                in1Var = hn1Var2;
            } else {
                in1Var = (in1) iInterfaceQueryLocalInterface2;
            }
        }
        String string = parcel.readString();
        in1Var.getClass();
        int i4 = 0;
        if (string != null) {
            MultiInstanceInvalidationService multiInstanceInvalidationService2 = this.c;
            synchronized (multiInstanceInvalidationService2.p) {
                try {
                    int i5 = multiInstanceInvalidationService2.n + 1;
                    multiInstanceInvalidationService2.n = i5;
                    if (multiInstanceInvalidationService2.p.register(in1Var, Integer.valueOf(i5))) {
                        multiInstanceInvalidationService2.o.put(Integer.valueOf(i5), string);
                        i4 = i5;
                    } else {
                        multiInstanceInvalidationService2.n--;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        parcel2.writeNoException();
        parcel2.writeInt(i4);
        return true;
    }

    @Override // defpackage.jn1
    public final void y(String[] strArr, int i) {
        strArr.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.c;
        synchronized (multiInstanceInvalidationService.p) {
            String str = (String) multiInstanceInvalidationService.o.get(Integer.valueOf(i));
            if (str == null) {
                Log.w("ROOM", "Remote invalidation client ID not registered");
                return;
            }
            int iBeginBroadcast = multiInstanceInvalidationService.p.beginBroadcast();
            int i2 = 0;
            while (true) {
                re2 re2Var = multiInstanceInvalidationService.p;
                if (i2 >= iBeginBroadcast) {
                    re2Var.finishBroadcast();
                    return;
                }
                try {
                    Object broadcastCookie = re2Var.getBroadcastCookie(i2);
                    broadcastCookie.getClass();
                    Integer num = (Integer) broadcastCookie;
                    int iIntValue = num.intValue();
                    String str2 = (String) multiInstanceInvalidationService.o.get(num);
                    if (i != iIntValue && str.equals(str2)) {
                        try {
                            ((in1) multiInstanceInvalidationService.p.getBroadcastItem(i2)).l(strArr);
                        } catch (RemoteException e) {
                            Log.w("ROOM", "Error invoking a remote callback", e);
                        }
                    }
                    i2++;
                } catch (Throwable th) {
                    multiInstanceInvalidationService.p.finishBroadcast();
                    throw th;
                }
            }
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
