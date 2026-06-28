package defpackage;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.Log;
import android.view.View;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Modifier;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gw4 implements q60, jw3, kb3, wt3, r20, sz0, jp3, pi {
    public static gw4 q;
    public static final b21 r = new b21(11);
    public final /* synthetic */ int n;
    public Object o;
    public Object p;

    public gw4(gw4 gw4Var) {
        this.n = 19;
        Context context = (Context) gw4Var.o;
        int iX = w80.x(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (iX != 0) {
            this.o = "Unity";
            String string = context.getResources().getString(iX);
            this.p = string;
            String strU = di0.u("Unity Editor version is: ", string);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", strU, null);
                return;
            }
            return;
        }
        if (context.getAssets() != null) {
            try {
                InputStream inputStreamOpen = context.getAssets().open("flutter_assets/NOTICES.Z");
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                this.o = "Flutter";
                this.p = null;
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", "Development platform is: Flutter", null);
                    return;
                }
                return;
            } catch (IOException unused) {
            }
        }
        this.o = null;
        this.p = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.gw4 c(android.content.Context r5) {
        /*
            java.lang.String r0 = "generatefid.lock"
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.io.File r5 = r5.getFilesDir()     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            r2.<init>(r5, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.io.RandomAccessFile r5 = new java.io.RandomAccessFile     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.lang.String r0 = "rw"
            r5.<init>(r2, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.nio.channels.FileChannel r5 = r5.getChannel()     // Catch: java.nio.channels.OverlappingFileLockException -> L30 java.lang.Error -> L34 java.io.IOException -> L36
            java.nio.channels.FileLock r0 = r5.lock()     // Catch: java.nio.channels.OverlappingFileLockException -> L29 java.lang.Error -> L2c java.io.IOException -> L2e
            gw4 r2 = new gw4     // Catch: java.nio.channels.OverlappingFileLockException -> L23 java.lang.Error -> L25 java.io.IOException -> L27
            r3 = 17
            r2.<init>(r3, r5, r0)     // Catch: java.nio.channels.OverlappingFileLockException -> L23 java.lang.Error -> L25 java.io.IOException -> L27
            return r2
        L23:
            r2 = move-exception
            goto L38
        L25:
            r2 = move-exception
            goto L38
        L27:
            r2 = move-exception
            goto L38
        L29:
            r2 = move-exception
        L2a:
            r0 = r1
            goto L38
        L2c:
            r2 = move-exception
            goto L2a
        L2e:
            r2 = move-exception
            goto L2a
        L30:
            r2 = move-exception
        L31:
            r5 = r1
            r0 = r5
            goto L38
        L34:
            r2 = move-exception
            goto L31
        L36:
            r2 = move-exception
            goto L31
        L38:
            java.lang.String r3 = "CrossProcessLock"
            java.lang.String r4 = "encountered error while creating and acquiring the lock, ignoring"
            android.util.Log.e(r3, r4, r2)
            if (r0 == 0) goto L44
            r0.release()     // Catch: java.io.IOException -> L44
        L44:
            if (r5 == 0) goto L49
            r5.close()     // Catch: java.io.IOException -> L49
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gw4.c(android.content.Context):gw4");
    }

    public static String i(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("r8-abstract-class");
    }

    public AutofillId A(long j) {
        if (Build.VERSION.SDK_INT < 29) {
            return null;
        }
        ContentCaptureSession contentCaptureSessionE = x8.e(this.o);
        i3 i3VarC = gg4.C((View) this.p);
        Objects.requireNonNull(i3VarC);
        return vf.d(contentCaptureSessionE, y2.f(i3VarC.a), j);
    }

    public void B(int i, Bundle bundle) {
        Locale locale = Locale.US;
        String str = "Analytics listener received message. ID: " + i + ", Extras: " + bundle;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", str, null);
        }
        String string = bundle.getString("name");
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            l8 l8Var = "clx".equals(bundle2.getString("_o")) ? (eh) this.o : (wu4) this.p;
            if (l8Var == null) {
                return;
            }
            l8Var.h(string, bundle2);
        }
    }

    public void C(eb1 eb1Var) {
        c73 c73Var = (c73) this.p;
        dd1 dd1Var = (dd1) this.o;
        int i = eb1Var.b;
        if (i != 0) {
            c73Var.execute(new f20(dd1Var, i));
        } else {
            c73Var.execute(new rf1(3, dd1Var, eb1Var.a));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0093 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.er2 D(defpackage.jo1 r19, defpackage.ln3 r20) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gw4.D(jo1, ln3):er2");
    }

    public void E() {
        try {
            ((FileLock) this.p).release();
            ((FileChannel) this.o).close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }

    public ListenableFuture F(pi piVar, Executor executor) {
        executor.getClass();
        i31 i31Var = new i31(h31.n);
        i31Var.o = executor;
        i31Var.n = this;
        gw4 gw4Var = new gw4(25, i31Var, piVar);
        jk3 jk3Var = new jk3();
        ListenableFuture listenableFuture = (ListenableFuture) ((AtomicReference) this.o).getAndSet(jk3Var);
        a34 a34Var = new a34();
        a34Var.v = new z24(a34Var, gw4Var);
        listenableFuture.a(a34Var, i31Var);
        ListenableFuture listenableFutureD = tf1.d(a34Var);
        mv mvVar = new mv(a34Var, jk3Var, listenableFuture, listenableFutureD, i31Var, 2);
        fu0 fu0Var = fu0.n;
        listenableFutureD.a(mvVar, fu0Var);
        a34Var.a(mvVar, fu0Var);
        return listenableFutureD;
    }

    public void G() {
        synchronized (this) {
            ((AtomicInteger) this.o).decrementAndGet();
            if (((AtomicInteger) this.o).get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }

    public er2 H(er2 er2Var) {
        h41 h41Var;
        boolean z;
        h41 h41Var2 = er2Var.j;
        i3 i3Var = no1.b;
        if (!tv4.D((Bitmap.Config) k30.x(er2Var, i3Var)) || ((cj1) this.p).i()) {
            h41Var = h41Var2;
            z = false;
        } else {
            h41Var2.getClass();
            Map map = h41Var2.a;
            map.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (config != null) {
                linkedHashMap.put(i3Var, config);
            } else {
                linkedHashMap.remove(i3Var);
            }
            h41 h41Var3 = new h41(k30.G(linkedHashMap));
            z = true;
            h41Var = h41Var3;
        }
        return z ? new er2(er2Var.a, er2Var.b, er2Var.c, er2Var.d, er2Var.e, er2Var.f, er2Var.g, er2Var.h, er2Var.i, h41Var) : er2Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0042, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005a, code lost:
    
        if (r6 == false) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String I(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.o
            android.content.Context r0 = (android.content.Context) r0
            r1 = 0
            if (r0 == 0) goto L94
            boolean r2 = defpackage.tv4.b
            if (r2 == 0) goto Lc
            goto L5d
        Lc:
            java.lang.Class<tv4> r2 = defpackage.tv4.class
            monitor-enter(r2)
            boolean r3 = defpackage.tv4.b     // Catch: java.lang.Throwable -> L15
            if (r3 == 0) goto L18
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L15
            goto L5d
        L15:
            r8 = move-exception
            goto L92
        L18:
            r3 = 1
            r4 = r3
        L1a:
            r5 = 2
            r6 = 0
            if (r4 > r5) goto L51
            android.os.UserManager r5 = defpackage.tv4.a     // Catch: java.lang.Throwable -> L15
            if (r5 != 0) goto L2c
            java.lang.Class<android.os.UserManager> r5 = android.os.UserManager.class
            java.lang.Object r5 = r0.getSystemService(r5)     // Catch: java.lang.Throwable -> L15
            android.os.UserManager r5 = (android.os.UserManager) r5     // Catch: java.lang.Throwable -> L15
            defpackage.tv4.a = r5     // Catch: java.lang.Throwable -> L15
        L2c:
            android.os.UserManager r5 = defpackage.tv4.a     // Catch: java.lang.Throwable -> L15
            if (r5 != 0) goto L32
            r6 = r3
            goto L55
        L32:
            boolean r7 = r5.isUserUnlocked()     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L44
            if (r7 != 0) goto L42
            android.os.UserHandle r7 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L44
            boolean r0 = r5.isUserRunning(r7)     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L44
            if (r0 != 0) goto L51
        L42:
            r6 = r3
            goto L51
        L44:
            r5 = move-exception
            java.lang.String r6 = "DirectBootUtils"
            java.lang.String r7 = "Failed to check if user is unlocked."
            android.util.Log.w(r6, r7, r5)     // Catch: java.lang.Throwable -> L15
            defpackage.tv4.a = r1     // Catch: java.lang.Throwable -> L15
            int r4 = r4 + 1
            goto L1a
        L51:
            if (r6 == 0) goto L55
            defpackage.tv4.a = r1     // Catch: java.lang.Throwable -> L15
        L55:
            if (r6 == 0) goto L59
            defpackage.tv4.b = r3     // Catch: java.lang.Throwable -> L15
        L59:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L15
            if (r6 != 0) goto L5d
            goto L94
        L5d:
            pc4 r0 = new pc4     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            r2 = 12
            r0.<init>(r2, r8, r9)     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            java.lang.Object r8 = r0.zza()     // Catch: java.lang.SecurityException -> L69 java.lang.NullPointerException -> L77 java.lang.IllegalStateException -> L7b
            goto L74
        L69:
            long r2 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            java.lang.Object r8 = r0.zza()     // Catch: java.lang.Throwable -> L7d
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
        L74:
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            return r8
        L77:
            r8 = move-exception
            goto L82
        L79:
            r8 = move-exception
            goto L82
        L7b:
            r8 = move-exception
            goto L82
        L7d:
            r8 = move-exception
            android.os.Binder.restoreCallingIdentity(r2)     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
            throw r8     // Catch: java.lang.NullPointerException -> L77 java.lang.SecurityException -> L79 java.lang.IllegalStateException -> L7b
        L82:
            java.lang.String r9 = java.lang.String.valueOf(r9)
            java.lang.String r0 = "Unable to read GServices for: "
            java.lang.String r2 = "GservicesLoader"
            java.lang.String r9 = r0.concat(r9)
            android.util.Log.e(r2, r9, r8)
            return r1
        L92:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L15
            throw r8
        L94:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gw4.I(java.lang.String):java.lang.String");
    }

    @Override // defpackage.jw3
    public void a(ao1 ao1Var) {
        gs2 gs2VarL;
        jo1 jo1Var = (jo1) this.o;
        zi ziVar = (zi) this.p;
        gs2 gs2VarI = ao1Var != null ? bi4.i(ao1Var, jo1Var.a, ziVar.B) : null;
        if (gs2VarI == null && ((Boolean) k30.w(jo1Var, mo1.a)).booleanValue() && (gs2VarL = ziVar.l()) != null) {
            gs2VarI = gs2VarL;
        }
        zi.k(ziVar, new wi(gs2VarI));
    }

    @Override // defpackage.sz0
    public boolean b(CharSequence charSequence, int i, int i2, z44 z44Var) {
        if ((z44Var.c & 4) > 0) {
            return true;
        }
        if (((a74) this.o) == null) {
            this.o = new a74(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        ((qv3) this.p).getClass();
        ((a74) this.o).setSpan(new a54(z44Var), i, i2, 33);
        return true;
    }

    @Override // defpackage.pi
    public ListenableFuture call() {
        i31 i31Var = (i31) this.o;
        int i = i31.r;
        if (i31Var.compareAndSet(h31.n, h31.p)) {
            return ((pi) this.p).call();
        }
        yo1 yo1Var = yo1.f426u;
        return yo1Var != null ? yo1Var : new yo1();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004c A[Catch: all -> 0x009e, TRY_LEAVE, TryCatch #6 {all -> 0x009e, blocks: (B:20:0x0048, B:22:0x004c, B:25:0x005d, B:29:0x0064, B:31:0x006c, B:33:0x0077, B:32:0x0072, B:27:0x0061, B:28:0x0063, B:45:0x0096, B:46:0x009d, B:24:0x0058), top: B:69:0x0048, outer: #1, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0096 A[Catch: all -> 0x009e, TRY_ENTER, TryCatch #6 {all -> 0x009e, blocks: (B:20:0x0048, B:22:0x004c, B:25:0x005d, B:29:0x0064, B:31:0x006c, B:33:0x0077, B:32:0x0072, B:27:0x0061, B:28:0x0063, B:45:0x0096, B:46:0x009d, B:24:0x0058), top: B:69:0x0048, outer: #1, inners: #0 }] */
    @Override // defpackage.kb3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.jb3 d(java.lang.String r8) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gw4.d(java.lang.String):jb3");
    }

    public synchronized void e() {
        if (!((LinkedHashSet) this.o).isEmpty()) {
            ((hd0) this.p).e(0L);
        }
    }

    @Override // defpackage.jp3
    public kn3 f() {
        return (v21) this.o;
    }

    @Override // defpackage.jp3
    public yp3 g() {
        return (w21) this.p;
    }

    @Override // defpackage.sz0
    public Object getResult() {
        return (a74) this.o;
    }

    public boolean h() {
        synchronized (this) {
            if (((AtomicBoolean) this.p).get()) {
                return false;
            }
            ((AtomicInteger) this.o).incrementAndGet();
            return true;
        }
    }

    public void j() {
        String str = (String) this.o;
        try {
            q51 q51Var = (q51) this.p;
            q51Var.getClass();
            new File((File) q51Var.c, str).createNewFile();
        } catch (IOException e) {
            Log.e("FirebaseCrashlytics", "Error creating marker: ".concat(str), e);
        }
    }

    public void k(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.k(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void l(boolean z) {
        hd1 hd1Var = (hd1) this.p;
        SignInHubActivity signInHubActivity = hd1Var.t.o;
        lc1 lc1Var = hd1Var.v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void m(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void n(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void o(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    @Override // defpackage.r20
    public void onCancel() {
        ((Animator) this.o).end();
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Animator from operation " + ((pq3) this.p) + " has been canceled.");
        }
    }

    public void p(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void q(boolean z) {
        hd1 hd1Var = (hd1) this.p;
        SignInHubActivity signInHubActivity = hd1Var.t.o;
        lc1 lc1Var = hd1Var.v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.q(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void r(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.r(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void s(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.s(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void t(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.t(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    @Override // defpackage.wt3
    public ow3 then(Object obj) {
        Boolean bool = (Boolean) obj;
        dj0 dj0Var = (dj0) this.p;
        if (bool.booleanValue()) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Sending cached crash reports...", null);
            }
            boolean zBooleanValue = bool.booleanValue();
            bm0 bm0Var = dj0Var.b;
            if (zBooleanValue) {
                bm0Var.f.d(null);
                return ((ow3) this.o).l((qk0) dj0Var.e.o, new wu4(18, this));
            }
            bm0Var.getClass();
            k21.n("An invalid data collection token was used.");
            return null;
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Deleting cached crash reports...", null);
        }
        q51 q51Var = dj0Var.g;
        Iterator it = q51.e(((File) q51Var.c).listFiles(dj0.r)).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
        q51 q51Var2 = ((ok0) dj0Var.m.b).b;
        ok0.a(q51.e(((File) q51Var2.e).listFiles()));
        ok0.a(q51.e(((File) q51Var2.f).listFiles()));
        ok0.a(q51.e(((File) q51Var2.g).listFiles()));
        dj0Var.q.d(null);
        return mt1.t(null);
    }

    public String toString() {
        switch (this.n) {
            case 12:
                return ((Map) this.o).toString();
            case 25:
                return ((pi) this.p).toString();
            default:
                return super.toString();
        }
    }

    public void u(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.u(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void v(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.v(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void w(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.w(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void x(boolean z) {
        lc1 lc1Var = ((hd1) this.p).v;
        if (lc1Var != null) {
            lc1Var.getParentFragmentManager().l.x(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.o).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                mk0.b();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.on2 y(defpackage.q44 r8, boolean r9) {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gw4.y(q44, boolean):on2");
    }

    public void z() throws IOException {
        String str = (String) this.o;
        if (((FileChannel) this.p) != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.p = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = (FileChannel) this.p;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.p = null;
            throw new IllegalStateException(di0.v("Unable to lock file: '", str, "'."), th);
        }
    }

    public /* synthetic */ gw4(int i, Object obj) {
        this.n = i;
        this.o = obj;
        this.p = null;
    }

    public /* synthetic */ gw4(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }

    public /* synthetic */ gw4(int i, boolean z) {
        this.n = i;
    }

    public gw4(Context context, int i) {
        this.n = i;
        switch (i) {
            case 2:
                this.o = context;
                break;
            default:
                this.o = context;
                pv4 pv4Var = new pv4(null, 1);
                this.p = pv4Var;
                context.getContentResolver().registerContentObserver(rv4.a, true, pv4Var);
                break;
        }
    }

    public gw4(String str) {
        this.n = 27;
        this.o = str.concat(".lck");
    }

    public gw4(q51 q51Var) {
        this.n = 1;
        this.o = q51Var;
        this.p = r;
    }

    public gw4(o23 o23Var) {
        Object ep1Var;
        this.n = 3;
        this.o = o23Var;
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            boolean z = dj1.a;
        } else {
            if (!dj1.a) {
                if (i != 26 && i != 27) {
                    ep1Var = new ep1(true);
                } else {
                    ep1Var = new b21(10);
                }
            }
            this.p = ep1Var;
        }
        ep1Var = new ep1(false);
        this.p = ep1Var;
    }

    public gw4(h9 h9Var) {
        this.n = 10;
        this.o = new AtomicInteger(0);
        this.p = new AtomicBoolean(false);
    }

    public gw4(e61 e61Var, n61 n61Var, ed0 ed0Var, yc0 yc0Var, Context context, jd0 jd0Var, ScheduledExecutorService scheduledExecutorService) {
        this.n = 11;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.o = linkedHashSet;
        this.p = new hd0(e61Var, n61Var, ed0Var, yc0Var, context, linkedHashSet, jd0Var, scheduledExecutorService);
    }

    public gw4(hd1 hd1Var) {
        this.n = 29;
        this.o = new CopyOnWriteArrayList();
        this.p = hd1Var;
    }

    public gw4(da3 da3Var, kb3 kb3Var) {
        this.n = 6;
        kb3Var.getClass();
        this.p = da3Var;
        this.o = kb3Var;
    }

    public gw4(int i) {
        this.n = i;
        switch (i) {
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                this.o = new LinkedList();
                this.p = new HashMap();
                break;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                this.o = new ta4(true);
                this.p = new ta4(true);
                break;
            case 26:
                this.o = new AtomicReference(ap1.o);
                this.p = new eh(14, false);
                break;
            default:
                this.o = null;
                this.p = null;
                break;
        }
    }

    public gw4(mu0 mu0Var) {
        this.n = 24;
        y21 y21Var = (y21) mu0Var.d;
        this.o = new v21(mu0Var, y21Var.f().f(), -1L, true);
        this.p = new w21(mu0Var, y21Var.f().g(), -1L, true);
    }

    public gw4(Animator animator) {
        this.n = 28;
        this.o = null;
        this.p = animator;
    }

    public gw4(fg fgVar) {
        this.n = 22;
        this.o = fgVar;
        yz0 yz0Var = new yz0(fgVar);
        this.p = yz0Var;
        fgVar.addTextChangedListener(yz0Var);
        if (lz0.b == null) {
            synchronized (lz0.a) {
                try {
                    if (lz0.b == null) {
                        lz0 lz0Var = new lz0();
                        try {
                            lz0.c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, lz0.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        lz0.b = lz0Var;
                    }
                } finally {
                }
            }
        }
        fgVar.setEditableFactory(lz0.b);
    }

    public gw4(dj0 dj0Var, ow3 ow3Var) {
        this.n = 15;
        this.p = dj0Var;
        this.o = ow3Var;
    }
}
