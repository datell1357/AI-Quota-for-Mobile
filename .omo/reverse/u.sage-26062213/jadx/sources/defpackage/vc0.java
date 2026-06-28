package defpackage;

import android.content.res.AssetFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vc0 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ vc0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        FileInputStream fileInputStreamOpenFileInput;
        boolean z = false;
        FileInputStream fileInputStream = null;
        ad0 ad0VarA = null;
        switch (this.a) {
            case 0:
                kd0 kd0Var = (kd0) this.b;
                synchronized (kd0Var) {
                    try {
                        fileInputStreamOpenFileInput = kd0Var.a.openFileInput(kd0Var.b);
                    } catch (FileNotFoundException | JSONException unused) {
                        fileInputStreamOpenFileInput = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        int iAvailable = fileInputStreamOpenFileInput.available();
                        byte[] bArr = new byte[iAvailable];
                        fileInputStreamOpenFileInput.read(bArr, 0, iAvailable);
                        ad0VarA = ad0.a(new JSONObject(new String(bArr, "UTF-8")));
                        fileInputStreamOpenFileInput.close();
                    } catch (FileNotFoundException | JSONException unused2) {
                        if (fileInputStreamOpenFileInput != null) {
                            fileInputStreamOpenFileInput.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStreamOpenFileInput;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        throw th;
                    }
                    break;
                }
                return ad0VarA;
            case 1:
                dj0 dj0Var = ((ij0) this.b).g;
                dj0Var.getClass();
                eh.l();
                gw4 gw4Var = dj0Var.c;
                q51 q51Var = (q51) gw4Var.p;
                String str = (String) gw4Var.o;
                q51Var.getClass();
                if (!new File((File) q51Var.c, str).exists()) {
                    if (dj0Var.e() != null && dj0Var.j.c()) {
                    }
                    return Boolean.valueOf(z);
                }
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", "Found previous crash marker.", null);
                }
                q51 q51Var2 = (q51) gw4Var.p;
                q51Var2.getClass();
                new File((File) q51Var2.c, str).delete();
                z = true;
                return Boolean.valueOf(z);
            case 2:
                return ((s53) this.b).a();
            case 3:
                ed0 ed0Var = (ed0) ((xh1) this.b).o;
                bc5 bc5Var = (bc5) ed0Var.f;
                tk3 tk3Var = (tk3) ed0Var.b;
                String str2 = bc5Var.o;
                eh.m();
                try {
                    HashMap mapB = bc5.b(tk3Var);
                    eh ehVar = new eh(str2, mapB);
                    ehVar.B("User-Agent", "Crashlytics Android SDK/20.0.6");
                    ehVar.B("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
                    bc5.a(ehVar, tk3Var);
                    String strConcat = "Requesting settings from ".concat(str2);
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", strConcat, null);
                    }
                    String str3 = "Settings query params were: " + mapB;
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", str3, null);
                    }
                    return bc5Var.c(ehVar.t());
                } catch (IOException e) {
                    Log.e("FirebaseCrashlytics", "Settings request failed.", e);
                    return null;
                }
            default:
                return (AssetFileDescriptor) this.b;
        }
    }
}
