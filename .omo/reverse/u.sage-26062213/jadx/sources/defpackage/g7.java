package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g7 {
    public BlockingServiceConnection a;
    public xy4 b;
    public boolean c;
    public final Object d = new Object();
    public pt4 e;
    public final Context f;
    public final long g;

    public g7(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext != null ? applicationContext : context;
        this.c = false;
        this.g = -1L;
    }

    public static f7 a(Context context) {
        g7 g7Var = new g7(context);
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            g7Var.c();
            f7 f7VarE = g7Var.e();
            d(f7VarE, SystemClock.elapsedRealtime() - jElapsedRealtime, null);
            return f7VarE;
        } finally {
        }
    }

    public static void d(f7 f7Var, long j, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap map = new HashMap();
            map.put("app_context", "1");
            if (f7Var != null) {
                map.put("limit_ad_tracking", true != f7Var.b ? "0" : "1");
                String str = f7Var.c;
                if (str != null) {
                    map.put("ad_id_size", Integer.toString(str.length()));
                }
            }
            if (th != null) {
                map.put("error", th.getClass().getName());
            }
            map.put("tag", "AdvertisingIdClient");
            map.put("time_spent", Long.toString(j));
            new uk4(map).start();
        }
    }

    public final void b() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f == null || this.a == null) {
                    return;
                }
                try {
                    if (this.c) {
                        ConnectionTracker.getInstance().unbindService(this.f, this.a);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
                this.c = false;
                this.b = null;
                this.a = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c() {
        xy4 xw4Var;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.c) {
                    b();
                }
                Context context = this.f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int iIsGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000);
                    if (iIsGooglePlayServicesAvailable != 0 && iIsGooglePlayServicesAvailable != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                            throw new IOException("Connection failure");
                        }
                        this.a = blockingServiceConnection;
                        try {
                            IBinder serviceWithTimeout = blockingServiceConnection.getServiceWithTimeout(10000L, TimeUnit.MILLISECONDS);
                            int i = ey4.c;
                            if (serviceWithTimeout == null) {
                                xw4Var = null;
                            } else {
                                IInterface iInterfaceQueryLocalInterface = serviceWithTimeout.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                                xw4Var = iInterfaceQueryLocalInterface instanceof xy4 ? (xy4) iInterfaceQueryLocalInterface : new xw4(serviceWithTimeout);
                            }
                            this.b = xw4Var;
                            this.c = true;
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final f7 e() {
        f7 f7Var;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.c) {
                    synchronized (this.d) {
                        pt4 pt4Var = this.e;
                        if (pt4Var == null || !pt4Var.q) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        c();
                        if (!this.c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                    }
                }
                Preconditions.checkNotNull(this.a);
                Preconditions.checkNotNull(this.b);
                try {
                    xw4 xw4Var = (xw4) this.b;
                    xw4Var.getClass();
                    Parcel parcelObtain = Parcel.obtain();
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    boolean z = true;
                    Parcel parcelE = xw4Var.E(1, parcelObtain);
                    String string = parcelE.readString();
                    parcelE.recycle();
                    xw4 xw4Var2 = (xw4) this.b;
                    xw4Var2.getClass();
                    Parcel parcelObtain2 = Parcel.obtain();
                    parcelObtain2.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    int i = hv4.a;
                    parcelObtain2.writeInt(1);
                    Parcel parcelE2 = xw4Var2.E(2, parcelObtain2);
                    if (parcelE2.readInt() == 0) {
                        z = false;
                    }
                    parcelE2.recycle();
                    f7Var = new f7(string, z);
                } catch (RemoteException e2) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.d) {
            pt4 pt4Var2 = this.e;
            if (pt4Var2 != null) {
                pt4Var2.p.countDown();
                try {
                    this.e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.g;
            if (j > 0) {
                this.e = new pt4(this, j);
            }
        }
        return f7Var;
    }

    public final void finalize() throws Throwable {
        b();
        super.finalize();
    }
}
