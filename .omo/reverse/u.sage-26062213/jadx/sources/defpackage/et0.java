package defpackage;

import android.content.res.AssetManager;
import android.os.Build;
import com.google.android.gms.common.ConnectionResult;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class et0 {
    public final Executor a;
    public final iz2 b;
    public final byte[] c;
    public final File d;
    public final String e;
    public boolean f = false;
    public ft0[] g;
    public byte[] h;

    public et0(AssetManager assetManager, Executor executor, iz2 iz2Var, String str, File file) {
        byte[] bArr;
        this.a = executor;
        this.b = iz2Var;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            switch (i) {
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case 25:
                    bArr = k30.j;
                    break;
                case 26:
                    bArr = k30.i;
                    break;
                case 27:
                    bArr = k30.h;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = k30.g;
                    break;
                default:
                    bArr = null;
                    break;
            }
        } else {
            bArr = k30.f;
        }
        this.c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            this.b.l();
            return null;
        }
    }

    public final void b(int i, Serializable serializable) {
        this.a.execute(new qt(i, 3, this, serializable));
    }
}
