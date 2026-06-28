package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.api.client.http.HttpStatusCodes;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pb5 implements s55 {
    public static volatile pb5 K;
    public long A;
    public final HashMap B;
    public final HashMap C;
    public final HashMap D;
    public w75 F;
    public String G;
    public ea5 H;
    public long I;
    public final w35 a;
    public final i25 b;
    public at4 c;
    public q25 d;
    public qa5 e;
    public gn4 f;
    public final ub5 g;
    public i25 h;
    public r95 i;
    public final eb5 j;
    public k35 k;
    public final r45 l;
    public boolean n;
    public long o;
    public ArrayList p;
    public int r;
    public int s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f260u;
    public boolean v;
    public FileLock w;
    public FileChannel x;
    public ArrayList y;
    public ArrayList z;
    public final AtomicBoolean m = new AtomicBoolean(false);
    public final LinkedList q = new LinkedList();
    public final HashMap E = new HashMap();
    public final lb5 J = new lb5(this);

    public pb5(rb5 rb5Var) {
        Preconditions.checkNotNull(rb5Var);
        this.l = r45.r(rb5Var.a, null, null, null);
        this.A = -1L;
        this.j = new eb5(this);
        ub5 ub5Var = new ub5(this);
        ub5Var.x();
        this.g = ub5Var;
        i25 i25Var = new i25(this, 0);
        i25Var.x();
        this.b = i25Var;
        w35 w35Var = new w35(this);
        w35Var.x();
        this.a = w35Var;
        this.B = new HashMap();
        this.C = new HashMap();
        this.D = new HashMap();
        d().E(new o9(this, rb5Var));
    }

    public static pb5 C(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (K == null) {
            synchronized (pb5.class) {
                try {
                    if (K == null) {
                        K = new pb5((rb5) Preconditions.checkNotNull(new rb5(context)));
                    }
                } finally {
                }
            }
        }
        return K;
    }

    public static final void D(s35 s35Var, int i, String str) {
        List listG = s35Var.g();
        for (int i2 = 0; i2 < listG.size(); i2++) {
            if ("_err".equals(((c45) listG.get(i2)).u())) {
                return;
            }
        }
        a45 a45VarF = c45.F();
        a45VarF.g("_err");
        a45VarF.i(i);
        c45 c45Var = (c45) a45VarF.d();
        a45 a45VarF2 = c45.F();
        a45VarF2.g("_ev");
        a45VarF2.h(str);
        c45 c45Var2 = (c45) a45VarF2.d();
        s35Var.j(c45Var);
        s35Var.j(c45Var2);
    }

    public static final void E(s35 s35Var, String str) {
        List listG = s35Var.g();
        for (int i = 0; i < listG.size(); i++) {
            if (str.equals(((c45) listG.get(i)).u())) {
                s35Var.l(i);
                return;
            }
        }
    }

    public static final boolean S(vc5 vc5Var) {
        return !TextUtils.isEmpty(vc5Var.o);
    }

    public static final void T(ab5 ab5Var) {
        if (ab5Var == null) {
            k21.n("Upload Component not created");
        } else {
            if (ab5Var.c) {
                return;
            }
            k21.n("Component not initialized: ".concat(String.valueOf(ab5Var.getClass())));
        }
    }

    public static final Boolean U(vc5 vc5Var) {
        Boolean bool = vc5Var.C;
        String str = vc5Var.P;
        if (!TextUtils.isEmpty(str)) {
            int iOrdinal = ((u55) ra3.p(str).o).ordinal();
            if (iOrdinal == 0 || iOrdinal == 1) {
                return null;
            }
            if (iOrdinal == 2) {
                return Boolean.TRUE;
            }
            if (iOrdinal == 3) {
                return Boolean.FALSE;
            }
        }
        return bool;
    }

    public final void A(m25 m25Var) {
        di diVar;
        di diVar2;
        d().v();
        if (TextUtils.isEmpty(m25Var.H())) {
            B((String) Preconditions.checkNotNull(m25Var.E()), HttpStatusCodes.STATUS_CODE_NO_CONTENT, null, null, null);
            return;
        }
        String str = (String) Preconditions.checkNotNull(m25Var.E());
        c().n.b(str, "Fetching remote configuration");
        w35 w35Var = this.a;
        T(w35Var);
        n15 n15VarH = w35Var.H(str);
        T(w35Var);
        w35Var.v();
        String str2 = (String) w35Var.n.get(str);
        if (n15VarH != null) {
            if (TextUtils.isEmpty(str2)) {
                diVar2 = null;
            } else {
                diVar2 = new di(0);
                diVar2.put("If-Modified-Since", str2);
            }
            T(w35Var);
            w35Var.v();
            String str3 = (String) w35Var.o.get(str);
            if (!TextUtils.isEmpty(str3)) {
                if (diVar2 == null) {
                    diVar2 = new di(0);
                }
                diVar2.put("If-None-Match", str3);
            }
            diVar = diVar2;
        } else {
            diVar = null;
        }
        this.t = true;
        i25 i25Var = this.b;
        T(i25Var);
        lb5 lb5Var = new lb5(this);
        r45 r45Var = (r45) i25Var.a;
        i25Var.v();
        i25Var.w();
        Preconditions.checkNotNull(m25Var);
        Preconditions.checkNotNull(lb5Var);
        eb5 eb5Var = i25Var.b.j;
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder builderAppendQueryParameter = builder.scheme((String) e05.f.a(null)).encodedAuthority((String) e05.g.a(null)).path("config/app/".concat(String.valueOf(m25Var.H()))).appendQueryParameter("platform", "android");
        ((r45) eb5Var.a).d.B();
        builderAppendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(161000L)).appendQueryParameter("runtime_version", "0");
        String string = builder.build().toString();
        try {
            URL url = new URI(string).toURL();
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.H(new g25(i25Var, m25Var.E(), url, (byte[]) null, diVar, lb5Var));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            a25 a25Var = r45Var.f;
            r45.l(a25Var);
            a25Var.f.c(a25.D(m25Var.E()), string, "Failed to parse config URL. Not fetching. appId");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0168 A[Catch: all -> 0x0074, TryCatch #0 {all -> 0x0074, blocks: (B:11:0x0045, B:21:0x0063, B:58:0x016b, B:29:0x0080, B:34:0x00d3, B:33:0x00c4, B:35:0x00d8, B:39:0x00ef, B:43:0x0105, B:45:0x011a, B:47:0x0135, B:49:0x013e, B:51:0x0144, B:52:0x0148, B:54:0x0151, B:56:0x0160, B:57:0x0168, B:46:0x0126, B:40:0x00f6, B:42:0x00ff), top: B:66:0x0045, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(java.lang.String r10, int r11, java.lang.Throwable r12, byte[] r13, java.util.Map r14) {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.B(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    public final int F(String str, dd1 dd1Var) {
        u55 u55VarZ;
        w35 w35Var = this.a;
        x05 x05VarR = w35Var.R(str);
        x55 x55Var = x55.AD_PERSONALIZATION;
        if (x05VarR == null) {
            dd1Var.w(x55Var, gs4.FAILSAFE);
            return 1;
        }
        at4 at4Var = this.c;
        T(at4Var);
        m25 m25VarZ0 = at4Var.z0(str);
        if (m25VarZ0 == null || ((u55) ra3.p(m25VarZ0.s()).o) != u55.POLICY || (u55VarZ = w35Var.z(str, x55Var)) == u55.UNINITIALIZED) {
            dd1Var.w(x55Var, gs4.REMOTE_DEFAULT);
            if (w35Var.Q(str, x55Var)) {
                return 0;
            }
        } else {
            dd1Var.w(x55Var, gs4.REMOTE_ENFORCED_DEFAULT);
            if (u55VarZ == u55.GRANTED) {
                return 0;
            }
        }
        return 1;
    }

    public final HashMap G(u35 u35Var) {
        Serializable serializableN;
        HashMap map = new HashMap();
        j0();
        HashMap map2 = new HashMap();
        for (c45 c45Var : u35Var.v()) {
            if (c45Var.u().startsWith("gad_") && (serializableN = ub5.N(c45Var)) != null) {
                map2.put(c45Var.u(), serializableN);
            }
        }
        for (Map.Entry entry : map2.entrySet()) {
            map.put((String) entry.getKey(), String.valueOf(entry.getValue()));
        }
        return map;
    }

    public final void H() {
        d().v();
        if (this.q.isEmpty()) {
            return;
        }
        int i = 2;
        if (this.H == null) {
            this.H = new ea5(this, this.l, i);
        }
        if (this.H.c != 0) {
            return;
        }
        long jMax = Math.max(0L, ((long) ((Integer) e05.A0.a(null)).intValue()) - (f().elapsedRealtime() - this.I));
        c().n.b(Long.valueOf(jMax), "Scheduling notify next app runnable, delay in ms");
        if (this.H == null) {
            this.H = new ea5(this, this.l, i);
        }
        this.H.b(jMax);
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x049b A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04ba A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05ea A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0606 A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x061b A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0737  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0789 A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0b5e A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0b92 A[PHI: r13
  0x0b92: PHI (r13v11 long) = (r13v10 long), (r13v36 long) binds: [B:343:0x0b5c, B:523:0x0b92] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0baa A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0bcd A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c1 A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0289 A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x029e A[Catch: all -> 0x0125, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02db A[Catch: all -> 0x0125, TRY_LEAVE, TryCatch #2 {all -> 0x0125, blocks: (B:3:0x0019, B:5:0x0035, B:8:0x003e, B:9:0x005e, B:12:0x007a, B:15:0x00a6, B:17:0x00e5, B:20:0x00fe, B:22:0x0108, B:227:0x074f, B:26:0x0135, B:29:0x014b, B:31:0x0151, B:33:0x0157, B:35:0x016a, B:39:0x0177, B:41:0x0182, B:43:0x0190, B:45:0x0196, B:49:0x01a1, B:50:0x01af, B:52:0x01c1, B:55:0x01e1, B:57:0x01e7, B:59:0x01f7, B:61:0x0205, B:63:0x0215, B:64:0x0220, B:65:0x0223, B:67:0x0230, B:69:0x023a, B:70:0x024a, B:72:0x0269, B:74:0x0273, B:76:0x0289, B:77:0x0293, B:80:0x029e, B:81:0x02a8, B:84:0x02b0, B:87:0x02c1, B:88:0x02c4, B:90:0x02db, B:141:0x04d5, B:142:0x04d8, B:144:0x04e4, B:147:0x04f5, B:149:0x0506, B:151:0x0512, B:184:0x05dd, B:186:0x05ea, B:188:0x05f0, B:190:0x05f6, B:192:0x0606, B:193:0x0609, B:194:0x0615, B:196:0x061b, B:197:0x0627, B:199:0x062d, B:201:0x063d, B:203:0x0647, B:204:0x065c, B:206:0x0662, B:207:0x067d, B:209:0x0683, B:210:0x06a1, B:211:0x06ae, B:215:0x06d7, B:212:0x06b4, B:214:0x06c2, B:216:0x06df, B:217:0x06fe, B:219:0x0704, B:221:0x0717, B:222:0x0724, B:224:0x072b, B:226:0x073b, B:155:0x0535, B:157:0x0545, B:160:0x0558, B:162:0x056a, B:164:0x0576, B:167:0x058a, B:170:0x0598, B:172:0x05a2, B:174:0x05ac, B:177:0x05b7, B:179:0x05bd, B:181:0x05cd, B:182:0x05d8, B:98:0x0301, B:101:0x030b, B:103:0x0319, B:107:0x036a, B:104:0x033b, B:106:0x0349, B:110:0x0371, B:113:0x03a4, B:114:0x03cc, B:116:0x0401, B:118:0x0407, B:121:0x0413, B:123:0x0448, B:124:0x0465, B:126:0x046b, B:128:0x0479, B:132:0x048d, B:129:0x0481, B:135:0x0494, B:138:0x049b, B:139:0x04ba, B:230:0x0766, B:232:0x0778, B:234:0x0781, B:245:0x07b3, B:235:0x0789, B:237:0x0792, B:239:0x0798, B:242:0x07a4, B:244:0x07ae, B:246:0x07b6, B:247:0x07c2, B:250:0x07ca, B:252:0x07dc, B:253:0x07e7, B:255:0x07ef, B:259:0x081e, B:261:0x083a, B:263:0x084f, B:265:0x086b, B:267:0x0880, B:268:0x089c, B:270:0x08a2, B:272:0x08ba, B:273:0x08c8, B:275:0x08d8, B:276:0x08e6, B:277:0x08e9, B:279:0x0933, B:281:0x0939, B:287:0x0964, B:289:0x096c, B:290:0x098a, B:292:0x0990, B:293:0x09a4, B:295:0x09bb, B:297:0x09d5, B:299:0x09e7, B:301:0x09f1, B:302:0x09f4, B:304:0x0a4f, B:305:0x0a62, B:308:0x0a6a, B:311:0x0a89, B:313:0x0aa2, B:315:0x0aba, B:317:0x0abf, B:319:0x0ac3, B:321:0x0ac7, B:323:0x0ad1, B:325:0x0ada, B:327:0x0ade, B:329:0x0ae4, B:331:0x0aef, B:333:0x0afd, B:400:0x0d5e, B:335:0x0b05, B:337:0x0b21, B:342:0x0b3e, B:344:0x0b5e, B:345:0x0b66, B:347:0x0b6c, B:349:0x0b7e, B:355:0x0b94, B:357:0x0baa, B:358:0x0bcd, B:360:0x0bd9, B:362:0x0bef, B:363:0x0c2f, B:369:0x0c4b, B:371:0x0c56, B:373:0x0c5a, B:375:0x0c5e, B:377:0x0c62, B:378:0x0c6e, B:379:0x0c73, B:381:0x0c79, B:383:0x0c8f, B:384:0x0c94, B:399:0x0d5b, B:386:0x0cd3, B:388:0x0cd7, B:392:0x0ceb, B:394:0x0d07, B:395:0x0d0e, B:398:0x0d4f, B:389:0x0cdc, B:340:0x0b27, B:401:0x0d64, B:403:0x0d6e, B:404:0x0d82, B:405:0x0d8a, B:407:0x0d90, B:408:0x0da4, B:410:0x0db6, B:430:0x0e69, B:432:0x0e6f, B:434:0x0e86, B:437:0x0e91, B:439:0x0e9b, B:441:0x0ebf, B:443:0x0ecf, B:444:0x0ed9, B:446:0x0ee7, B:447:0x0ef1, B:448:0x0efc, B:450:0x0f0e, B:453:0x0f15, B:458:0x0f58, B:454:0x0f24, B:456:0x0f32, B:457:0x0f3f, B:459:0x0f67, B:460:0x0f7a, B:464:0x0f9a, B:463:0x0f85, B:411:0x0dd1, B:413:0x0dd7, B:415:0x0de9, B:417:0x0df0, B:423:0x0e08, B:425:0x0e0f, B:427:0x0e5a, B:429:0x0e61, B:428:0x0e5e, B:424:0x0e0c, B:416:0x0ded, B:282:0x0949, B:284:0x094f, B:286:0x0955, B:266:0x087d, B:262:0x084c, B:256:0x07f5, B:258:0x07fb, B:465:0x0fa3), top: B:475:0x0019, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean I(long r47, java.lang.String r49) {
        /*
            Method dump skipped, instruction units count: 4027
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.I(long, java.lang.String):boolean");
    }

    public final void J(q45 q45Var, long j, boolean z) {
        Object obj;
        String str = true != z ? "_lte" : "_se";
        at4 at4Var = this.c;
        T(at4Var);
        xb5 xb5VarR0 = at4Var.r0(q45Var.n(), str);
        xb5 xb5Var = (xb5VarR0 == null || (obj = xb5VarR0.e) == null) ? new xb5(q45Var.n(), "auto", str, f().currentTimeMillis(), Long.valueOf(j)) : new xb5(q45Var.n(), "auto", str, f().currentTimeMillis(), Long.valueOf(((Long) obj).longValue() + j));
        g55 g55VarE = h55.E();
        g55VarE.b();
        ((h55) g55VarE.o).G(str);
        long jCurrentTimeMillis = f().currentTimeMillis();
        g55VarE.b();
        ((h55) g55VarE.o).F(jCurrentTimeMillis);
        Object obj2 = xb5Var.e;
        long jLongValue = ((Long) obj2).longValue();
        g55VarE.b();
        ((h55) g55VarE.o).J(jLongValue);
        h55 h55Var = (h55) g55VarE.d();
        int iH0 = ub5.h0(str, q45Var);
        if (iH0 >= 0) {
            q45Var.b();
            ((u45) q45Var.o).g0(iH0, h55Var);
        } else {
            q45Var.b();
            ((u45) q45Var.o).h0(h55Var);
        }
        if (j > 0) {
            at4 at4Var2 = this.c;
            T(at4Var2);
            at4Var2.q0(xb5Var);
            c().n.c(true != z ? "lifetime" : "session-scoped", obj2, "Updated engagement user property. scope, value");
        }
    }

    public final boolean K(s35 s35Var, s35 s35Var2) {
        Preconditions.checkArgument("_e".equals(s35Var.m()));
        j0();
        c45 c45VarF = ub5.F("_sc", (u35) s35Var.d());
        String strW = c45VarF == null ? null : c45VarF.w();
        j0();
        c45 c45VarF2 = ub5.F("_pc", (u35) s35Var2.d());
        String strW2 = c45VarF2 != null ? c45VarF2.w() : null;
        if (strW2 == null || !strW2.equals(strW)) {
            return false;
        }
        Preconditions.checkArgument("_e".equals(s35Var.m()));
        j0();
        c45 c45VarF3 = ub5.F("_et", (u35) s35Var.d());
        if (c45VarF3 == null || !c45VarF3.x() || c45VarF3.y() <= 0) {
            return true;
        }
        long jY = c45VarF3.y();
        j0();
        c45 c45VarF4 = ub5.F("_et", (u35) s35Var2.d());
        if (c45VarF4 != null && c45VarF4.y() > 0) {
            jY += c45VarF4.y();
        }
        j0();
        ub5.D(s35Var2, "_et", Long.valueOf(jY));
        j0();
        ub5.D(s35Var, "_fr", 1L);
        return true;
    }

    public final void L(s35 s35Var, String str, String str2) {
        ArrayList arrayList = new ArrayList(s35Var.g());
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                i = -1;
                break;
            } else if (str.equals(((c45) arrayList.get(i)).u())) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        double dC = s35Var.i(i).C() * 1000000.0d;
        if (dC == 0.0d) {
            dC = s35Var.i(i).y() * 1000000.0d;
        }
        if (dC > 9.223372036854776E18d || dC < -9.223372036854776E18d) {
            c().i.c(a25.D(str2), Double.valueOf(dC), di0.v("Data lost. Purchase ", str, " is too big. appId"));
            return;
        }
        s35Var.l(i);
        a45 a45VarF = c45.F();
        a45VarF.g(str);
        a45VarF.i(Math.round(dC));
        s35Var.j((c45) a45VarF.d());
    }

    public final boolean M() {
        d().v();
        l0();
        at4 at4Var = this.c;
        T(at4Var);
        if (at4Var.R("select count(1) > 0 from raw_events", null) != 0) {
            return true;
        }
        at4 at4Var2 = this.c;
        T(at4Var2);
        return !TextUtils.isEmpty(at4Var2.D());
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void N() {
        /*
            Method dump skipped, instruction units count: 980
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.N():void");
    }

    public final void O() {
        d().v();
        if (this.t || this.f260u || this.v) {
            c().n.d("Not stopping services. fetch, network, upload", Boolean.valueOf(this.t), Boolean.valueOf(this.f260u), Boolean.valueOf(this.v));
            return;
        }
        c().n.a("Stopping uploading service(s)");
        ArrayList arrayList = this.p;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Runnable) obj).run();
        }
        ((List) Preconditions.checkNotNull(this.p)).clear();
    }

    public final Boolean P(m25 m25Var) {
        try {
            long jQ = m25Var.Q();
            r45 r45Var = this.l;
            if (jQ != -2147483648L) {
                if (m25Var.Q() == Wrappers.packageManager(r45Var.a).getPackageInfo(m25Var.E(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(r45Var.a).getPackageInfo(m25Var.E(), 0).versionName;
                String strO = m25Var.O();
                if (strO != null && strO.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final vc5 Q(String str) {
        at4 at4Var = this.c;
        T(at4Var);
        m25 m25VarZ0 = at4Var.z0(str);
        if (m25VarZ0 != null) {
            r45 r45Var = m25VarZ0.a;
            if (!TextUtils.isEmpty(m25VarZ0.O())) {
                Boolean boolP = P(m25VarZ0);
                if (boolP != null && !boolP.booleanValue()) {
                    c().f.b(a25.D(str), "App version does not match; dropping. appId");
                    return null;
                }
                String strH = m25VarZ0.H();
                String strO = m25VarZ0.O();
                long jQ = m25VarZ0.Q();
                j45 j45Var = r45Var.g;
                r45.l(j45Var);
                j45Var.v();
                String str2 = m25VarZ0.l;
                j45 j45Var2 = r45Var.g;
                r45.l(j45Var2);
                j45Var2.v();
                long j = m25VarZ0.m;
                j45 j45Var3 = r45Var.g;
                r45.l(j45Var3);
                j45Var3.v();
                long j2 = m25VarZ0.n;
                j45 j45Var4 = r45Var.g;
                r45.l(j45Var4);
                j45Var4.v();
                boolean z = m25VarZ0.o;
                String strK = m25VarZ0.K();
                j45 j45Var5 = r45Var.g;
                r45.l(j45Var5);
                j45Var5.v();
                boolean z2 = m25VarZ0.p;
                Boolean boolX = m25VarZ0.x();
                long jB = m25VarZ0.b();
                j45 j45Var6 = r45Var.g;
                r45.l(j45Var6);
                j45Var6.v();
                ArrayList arrayList = m25VarZ0.s;
                String strG = a(str).g();
                boolean z3 = m25VarZ0.z();
                j45 j45Var7 = r45Var.g;
                r45.l(j45Var7);
                j45Var7.v();
                long j3 = m25VarZ0.v;
                int i = a(str).b;
                String str3 = o0(str).b;
                j45 j45Var8 = r45Var.g;
                r45.l(j45Var8);
                j45Var8.v();
                int i2 = m25VarZ0.x;
                j45 j45Var9 = r45Var.g;
                r45.l(j45Var9);
                j45Var9.v();
                return new vc5(str, strH, strO, jQ, str2, j, j2, (String) null, z, false, strK, 0L, 0, z2, false, boolX, jB, (List) arrayList, strG, "", (String) null, z3, j3, i, str3, i2, m25VarZ0.B, m25VarZ0.D(), m25VarZ0.s(), 0L, m25VarZ0.t(), 0L);
            }
        }
        c().m.b(str, "No app data available; dropping");
        return null;
    }

    public final boolean R(String str, String str2) {
        at4 at4Var = this.c;
        T(at4Var);
        xt4 xt4VarV = at4Var.V("events", str, str2);
        return xt4VarV == null || xt4VarV.c < 1;
    }

    public final void V() {
        d().v();
        l0();
        if (this.n) {
            return;
        }
        this.n = true;
        d().v();
        FileLock fileLock = this.w;
        r45 r45Var = this.l;
        if (fileLock == null || !fileLock.isValid()) {
            ((r45) this.c.a).getClass();
            try {
                FileChannel channel = new RandomAccessFile(new File(new File(r45Var.a.getFilesDir(), "google_app_measurement.db").getPath()), "rw").getChannel();
                this.x = channel;
                FileLock fileLockTryLock = channel.tryLock();
                this.w = fileLockTryLock;
                if (fileLockTryLock == null) {
                    c().f.a("Storage concurrent data access panic");
                    return;
                }
                c().n.a("Storage concurrent access okay");
            } catch (FileNotFoundException e) {
                c().f.b(e, "Failed to acquire storage lock");
                return;
            } catch (IOException e2) {
                c().f.b(e2, "Failed to access storage lock file");
                return;
            } catch (OverlappingFileLockException e3) {
                c().i.b(e3, "Storage lock already acquired");
                return;
            }
        } else {
            c().n.a("Storage concurrent access okay");
        }
        FileChannel fileChannel = this.x;
        d().v();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            c().f.a("Bad channel to read from");
        } else {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            try {
                fileChannel.position(0L);
                int i2 = fileChannel.read(byteBufferAllocate);
                if (i2 == 4) {
                    byteBufferAllocate.flip();
                    i = byteBufferAllocate.getInt();
                } else if (i2 != -1) {
                    c().i.b(Integer.valueOf(i2), "Unexpected data length. Bytes read");
                }
            } catch (IOException e4) {
                c().f.b(e4, "Failed to read from channel");
            }
        }
        g15 g15VarQ = r45Var.q();
        g15VarQ.w();
        int i3 = g15VarQ.e;
        d().v();
        if (i > i3) {
            c().f.c(Integer.valueOf(i), Integer.valueOf(i3), "Panic: can't downgrade version. Previous, current version");
            return;
        }
        if (i < i3) {
            FileChannel fileChannel2 = this.x;
            d().v();
            if (fileChannel2 == null || !fileChannel2.isOpen()) {
                c().f.a("Bad channel to read from");
            } else {
                ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                byteBufferAllocate2.putInt(i3);
                byteBufferAllocate2.flip();
                try {
                    fileChannel2.truncate(0L);
                    fileChannel2.write(byteBufferAllocate2);
                    fileChannel2.force(true);
                    if (fileChannel2.size() != 4) {
                        c().f.b(Long.valueOf(fileChannel2.size()), "Error writing to channel. Bytes written");
                    }
                    c().n.c(Integer.valueOf(i), Integer.valueOf(i3), "Storage version upgraded. Previous, current version");
                    return;
                } catch (IOException e5) {
                    c().f.b(e5, "Failed to write to channel");
                }
            }
            c().f.c(Integer.valueOf(i), Integer.valueOf(i3), "Storage version upgrade failed. Previous, current version");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void W(defpackage.vb5 r24, defpackage.vc5 r25) {
        /*
            Method dump skipped, instruction units count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.W(vb5, vc5):void");
    }

    public final void X(String str, vc5 vc5Var) {
        d().v();
        l0();
        boolean zS = S(vc5Var);
        String str2 = vc5Var.n;
        if (zS) {
            if (!vc5Var.f375u) {
                c0(vc5Var);
                return;
            }
            Boolean boolU = U(vc5Var);
            if ("_npa".equals(str) && boolU != null) {
                c().m.a("Falling back to manifest metadata value for ad personalization");
                W(new vb5(f().currentTimeMillis(), Long.valueOf(true != boolU.booleanValue() ? 0L : 1L), "_npa", "auto"), vc5Var);
                return;
            }
            x15 x15Var = c().m;
            r45 r45Var = this.l;
            x15Var.b(r45Var.j.c(str), "Removing user property");
            at4 at4Var = this.c;
            T(at4Var);
            at4Var.j0();
            try {
                c0(vc5Var);
                if ("_id".equals(str)) {
                    at4 at4Var2 = this.c;
                    T(at4Var2);
                    at4Var2.p0((String) Preconditions.checkNotNull(str2), "_lair");
                }
                at4 at4Var3 = this.c;
                T(at4Var3);
                at4Var3.p0((String) Preconditions.checkNotNull(str2), str);
                at4 at4Var4 = this.c;
                T(at4Var4);
                at4Var4.k0();
                c().m.b(r45Var.j.c(str), "User property removed");
                at4 at4Var5 = this.c;
                T(at4Var5);
                at4Var5.l0();
            } catch (Throwable th) {
                at4 at4Var6 = this.c;
                T(at4Var6);
                at4Var6.l0();
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x043c A[Catch: all -> 0x0308, TryCatch #5 {all -> 0x0308, blocks: (B:113:0x02d7, B:115:0x02f3, B:157:0x03b8, B:158:0x03bb, B:166:0x0461, B:119:0x030b, B:124:0x032a, B:126:0x0332, B:128:0x0338, B:132:0x034b, B:136:0x035e, B:140:0x036a, B:143:0x037a, B:148:0x0399, B:150:0x03a1, B:152:0x03a9, B:154:0x03af, B:146:0x0387, B:134:0x0356, B:122:0x0318, B:159:0x03e1, B:161:0x0416, B:162:0x0419, B:163:0x043c, B:165:0x0443), top: B:181:0x0168, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013f A[Catch: all -> 0x00f6, TryCatch #4 {all -> 0x00f6, blocks: (B:33:0x00d6, B:35:0x00e6, B:43:0x00fe, B:47:0x010e, B:49:0x011d, B:55:0x0132, B:57:0x013f, B:59:0x014a, B:62:0x0153, B:65:0x016a, B:68:0x0183, B:75:0x01d0, B:63:0x015e, B:58:0x0146, B:51:0x0127, B:54:0x012f), top: B:179:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0146 A[Catch: all -> 0x00f6, TryCatch #4 {all -> 0x00f6, blocks: (B:33:0x00d6, B:35:0x00e6, B:43:0x00fe, B:47:0x010e, B:49:0x011d, B:55:0x0132, B:57:0x013f, B:59:0x014a, B:62:0x0153, B:65:0x016a, B:68:0x0183, B:75:0x01d0, B:63:0x015e, B:58:0x0146, B:51:0x0127, B:54:0x012f), top: B:179:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0153 A[Catch: all -> 0x00f6, TRY_ENTER, TryCatch #4 {all -> 0x00f6, blocks: (B:33:0x00d6, B:35:0x00e6, B:43:0x00fe, B:47:0x010e, B:49:0x011d, B:55:0x0132, B:57:0x013f, B:59:0x014a, B:62:0x0153, B:65:0x016a, B:68:0x0183, B:75:0x01d0, B:63:0x015e, B:58:0x0146, B:51:0x0127, B:54:0x012f), top: B:179:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015e A[Catch: all -> 0x00f6, TryCatch #4 {all -> 0x00f6, blocks: (B:33:0x00d6, B:35:0x00e6, B:43:0x00fe, B:47:0x010e, B:49:0x011d, B:55:0x0132, B:57:0x013f, B:59:0x014a, B:62:0x0153, B:65:0x016a, B:68:0x0183, B:75:0x01d0, B:63:0x015e, B:58:0x0146, B:51:0x0127, B:54:0x012f), top: B:179:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016a A[Catch: all -> 0x00f6, TRY_LEAVE, TryCatch #4 {all -> 0x00f6, blocks: (B:33:0x00d6, B:35:0x00e6, B:43:0x00fe, B:47:0x010e, B:49:0x011d, B:55:0x0132, B:57:0x013f, B:59:0x014a, B:62:0x0153, B:65:0x016a, B:68:0x0183, B:75:0x01d0, B:63:0x015e, B:58:0x0146, B:51:0x0127, B:54:0x012f), top: B:179:0x00d6 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ae  */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v12, types: [pb5] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v6, types: [pb5] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Y(defpackage.vc5 r37) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1147
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.Y(vc5):void");
    }

    public final void Z(fq4 fq4Var, vc5 vc5Var) {
        bu4 bu4Var;
        Preconditions.checkNotNull(fq4Var);
        Preconditions.checkNotEmpty(fq4Var.n);
        Preconditions.checkNotNull(fq4Var.o);
        Preconditions.checkNotNull(fq4Var.p);
        Preconditions.checkNotEmpty(fq4Var.p.o);
        d().v();
        l0();
        if (S(vc5Var)) {
            if (!vc5Var.f375u) {
                c0(vc5Var);
                return;
            }
            fq4 fq4Var2 = new fq4(fq4Var);
            boolean z = false;
            fq4Var2.r = false;
            at4 at4Var = this.c;
            T(at4Var);
            at4Var.j0();
            try {
                at4 at4Var2 = this.c;
                T(at4Var2);
                fq4 fq4VarV0 = at4Var2.v0((String) Preconditions.checkNotNull(fq4Var2.n), fq4Var2.p.o);
                r45 r45Var = this.l;
                if (fq4VarV0 != null && !fq4VarV0.o.equals(fq4Var2.o)) {
                    c().i.d("Updating a conditional user property with different origin. name, origin, origin (from DB)", r45Var.j.c(fq4Var2.p.o), fq4Var2.o, fq4VarV0.o);
                }
                if (fq4VarV0 != null && fq4VarV0.r) {
                    fq4Var2.o = fq4VarV0.o;
                    fq4Var2.q = fq4VarV0.q;
                    fq4Var2.f101u = fq4VarV0.f101u;
                    fq4Var2.s = fq4VarV0.s;
                    fq4Var2.v = fq4VarV0.v;
                    fq4Var2.r = true;
                    vb5 vb5Var = fq4Var2.p;
                    fq4Var2.p = new vb5(fq4VarV0.p.p, vb5Var.Y(), vb5Var.o, fq4VarV0.p.s);
                } else if (TextUtils.isEmpty(fq4Var2.s)) {
                    vb5 vb5Var2 = fq4Var2.p;
                    fq4Var2.p = new vb5(fq4Var2.q, vb5Var2.Y(), vb5Var2.o, fq4Var2.p.s);
                    fq4Var2.r = true;
                    z = true;
                }
                if (fq4Var2.r) {
                    vb5 vb5Var3 = fq4Var2.p;
                    xb5 xb5Var = new xb5((String) Preconditions.checkNotNull(fq4Var2.n), fq4Var2.o, vb5Var3.o, vb5Var3.p, Preconditions.checkNotNull(vb5Var3.Y()));
                    Object obj = xb5Var.e;
                    String str = xb5Var.c;
                    at4 at4Var3 = this.c;
                    T(at4Var3);
                    if (at4Var3.q0(xb5Var)) {
                        c().m.d("User property updated immediately", fq4Var2.n, r45Var.j.c(str), obj);
                    } else {
                        c().f.d("(2)Too many active user properties, ignoring", a25.D(fq4Var2.n), r45Var.j.c(str), obj);
                    }
                    if (z && (bu4Var = fq4Var2.v) != null) {
                        l(new bu4(bu4Var, fq4Var2.q, 0L), vc5Var);
                    }
                }
                at4 at4Var4 = this.c;
                T(at4Var4);
                if (at4Var4.u0(fq4Var2)) {
                    c().m.d("Conditional property added", fq4Var2.n, r45Var.j.c(fq4Var2.p.o), fq4Var2.p.Y());
                } else {
                    c().f.d("Too many conditional properties, ignoring", a25.D(fq4Var2.n), r45Var.j.c(fq4Var2.p.o), fq4Var2.p.Y());
                }
                at4 at4Var5 = this.c;
                T(at4Var5);
                at4Var5.k0();
                at4 at4Var6 = this.c;
                T(at4Var6);
                at4Var6.l0();
            } catch (Throwable th) {
                at4 at4Var7 = this.c;
                T(at4Var7);
                at4Var7.l0();
                throw th;
            }
        }
    }

    public final y55 a(String str) {
        y55 y55Var = y55.c;
        d().v();
        l0();
        HashMap map = this.B;
        y55 y55VarP = (y55) map.get(str);
        if (y55VarP == null) {
            at4 at4Var = this.c;
            T(at4Var);
            y55VarP = at4Var.P(str);
            if (y55VarP == null) {
                y55VarP = y55.c;
            }
            d().v();
            l0();
            map.put(str, y55VarP);
            at4 at4Var2 = this.c;
            T(at4Var2);
            at4Var2.b0(str, y55VarP);
        }
        return y55VarP;
    }

    public final void a0(fq4 fq4Var, vc5 vc5Var) {
        Preconditions.checkNotNull(fq4Var);
        Preconditions.checkNotEmpty(fq4Var.n);
        Preconditions.checkNotNull(fq4Var.p);
        Preconditions.checkNotEmpty(fq4Var.p.o);
        d().v();
        l0();
        if (S(vc5Var)) {
            if (!vc5Var.f375u) {
                c0(vc5Var);
                return;
            }
            at4 at4Var = this.c;
            T(at4Var);
            at4Var.j0();
            try {
                c0(vc5Var);
                String str = (String) Preconditions.checkNotNull(fq4Var.n);
                at4 at4Var2 = this.c;
                T(at4Var2);
                fq4 fq4VarV0 = at4Var2.v0(str, fq4Var.p.o);
                r45 r45Var = this.l;
                if (fq4VarV0 != null) {
                    c().m.c(fq4Var.n, r45Var.j.c(fq4Var.p.o), "Removing conditional user property");
                    at4 at4Var3 = this.c;
                    T(at4Var3);
                    at4Var3.w0(str, fq4Var.p.o);
                    if (fq4VarV0.r) {
                        at4 at4Var4 = this.c;
                        T(at4Var4);
                        at4Var4.p0(str, fq4Var.p.o);
                    }
                    bu4 bu4Var = fq4Var.x;
                    if (bu4Var != null) {
                        zt4 zt4Var = bu4Var.o;
                        l((bu4) Preconditions.checkNotNull(k0().b0(((bu4) Preconditions.checkNotNull(bu4Var)).n, zt4Var != null ? zt4Var.j0() : null, fq4VarV0.o, bu4Var.q, bu4Var.r, true)), vc5Var);
                    }
                } else {
                    c().i.c(a25.D(fq4Var.n), r45Var.j.c(fq4Var.p.o), "Conditional user property doesn't exist");
                }
                at4 at4Var5 = this.c;
                T(at4Var5);
                at4Var5.k0();
                at4 at4Var6 = this.c;
                T(at4Var6);
                at4Var6.l0();
            } catch (Throwable th) {
                at4 at4Var7 = this.c;
                T(at4Var7);
                at4Var7.l0();
                throw th;
            }
        }
    }

    @Override // defpackage.s55
    public final pr3 b() {
        return this.l.c;
    }

    public final void b0(vc5 vc5Var, long j) throws Throwable {
        at4 at4Var = this.c;
        T(at4Var);
        m25 m25VarZ0 = at4Var.z0((String) Preconditions.checkNotNull(vc5Var.n));
        if (m25VarZ0 != null) {
            k0();
            String str = vc5Var.o;
            String strH = m25VarZ0.H();
            boolean zIsEmpty = TextUtils.isEmpty(str);
            boolean zIsEmpty2 = TextUtils.isEmpty(strH);
            if (!zIsEmpty && !zIsEmpty2) {
                Preconditions.checkNotNull(str);
                if (!str.equals(strH)) {
                    c().i.b(a25.D(m25VarZ0.E()), "New GMP App Id passed in. Removing cached database data. appId");
                    at4 at4Var2 = this.c;
                    T(at4Var2);
                    r45 r45Var = (r45) at4Var2.a;
                    String strE = m25VarZ0.E();
                    at4Var2.w();
                    at4Var2.v();
                    Preconditions.checkNotEmpty(strE);
                    try {
                        SQLiteDatabase sQLiteDatabaseM0 = at4Var2.m0();
                        String[] strArr = {strE};
                        int iDelete = sQLiteDatabaseM0.delete("events", "app_id=?", strArr) + sQLiteDatabaseM0.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseM0.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseM0.delete("apps", "app_id=?", strArr) + sQLiteDatabaseM0.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseM0.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseM0.delete("event_filters", "app_id=?", strArr) + sQLiteDatabaseM0.delete("property_filters", "app_id=?", strArr) + sQLiteDatabaseM0.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseM0.delete("consent_settings", "app_id=?", strArr) + sQLiteDatabaseM0.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseM0.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseM0.delete("diagnostic_signals", "app_id=?", strArr);
                        if (r45Var.d.G(null, e05.c1)) {
                            iDelete += sQLiteDatabaseM0.delete("no_data_mode_events", "app_id=?", strArr);
                        }
                        if (iDelete > 0) {
                            a25 a25Var = r45Var.f;
                            r45.l(a25Var);
                            a25Var.n.c(strE, Integer.valueOf(iDelete), "Deleted application data. app, records");
                        }
                    } catch (SQLiteException e) {
                        a25 a25Var2 = r45Var.f;
                        r45.l(a25Var2);
                        a25Var2.f.c(a25.D(strE), e, "Error deleting application data. appId, error");
                    }
                    m25VarZ0 = null;
                }
            }
        }
        if (m25VarZ0 != null) {
            boolean z = (m25VarZ0.Q() == -2147483648L || m25VarZ0.Q() == vc5Var.w) ? false : true;
            String strO = m25VarZ0.O();
            if (z || ((m25VarZ0.Q() != -2147483648L || strO == null || strO.equals(vc5Var.p)) ? false : true)) {
                Bundle bundle = new Bundle();
                bundle.putString("_pv", strO);
                bu4 bu4Var = new bu4("_au", new zt4(bundle), "auto", j, 0L);
                if (e0().G(null, e05.X0)) {
                    i(bu4Var, vc5Var);
                } else {
                    j(bu4Var, vc5Var);
                }
            }
        }
    }

    @Override // defpackage.s55
    public final a25 c() {
        a25 a25Var = ((r45) Preconditions.checkNotNull(this.l)).f;
        r45.l(a25Var);
        return a25Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.m25 c0(defpackage.vc5 r13) {
        /*
            Method dump skipped, instruction units count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.c0(vc5):m25");
    }

    @Override // defpackage.s55
    public final j45 d() {
        j45 j45Var = ((r45) Preconditions.checkNotNull(this.l)).g;
        r45.l(j45Var);
        return j45Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    public final List d0(Bundle bundle, vc5 vc5Var) {
        int[] iArr;
        d().v();
        er4.a();
        ds4 ds4VarE0 = e0();
        String str = vc5Var.n;
        if (!ds4VarE0.G(str, e05.O0) || str == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    c().f.a("Uri sources and timestamps do not match");
                } else {
                    int i = 0;
                    while (i < intArray.length) {
                        at4 at4Var = this.c;
                        T(at4Var);
                        r45 r45Var = (r45) at4Var.a;
                        int i2 = intArray[i];
                        long j = longArray[i];
                        Preconditions.checkNotEmpty(str);
                        at4Var.v();
                        at4Var.w();
                        try {
                            iArr = intArray;
                        } catch (SQLiteException e) {
                            e = e;
                            iArr = intArray;
                        }
                        try {
                            int iDelete = at4Var.m0().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)});
                            a25 a25Var = r45Var.f;
                            r45.l(a25Var);
                            x15 x15Var = a25Var.n;
                            StringBuilder sb = new StringBuilder(String.valueOf(iDelete).length() + 46);
                            sb.append("Pruned ");
                            sb.append(iDelete);
                            sb.append(" trigger URIs. appId, source, timestamp");
                            x15Var.d(sb.toString(), str, Integer.valueOf(i2), Long.valueOf(j));
                        } catch (SQLiteException e2) {
                            e = e2;
                            a25 a25Var2 = r45Var.f;
                            r45.l(a25Var2);
                            a25Var2.f.c(a25.D(str), e, "Error pruning trigger URIs. appId");
                        }
                        i++;
                        intArray = iArr;
                    }
                }
            }
        }
        at4 at4Var2 = this.c;
        T(at4Var2);
        String str2 = vc5Var.n;
        Preconditions.checkNotEmpty(str2);
        at4Var2.v();
        at4Var2.w();
        ?? arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = at4Var2.m0().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str2}, null, null, "rowid", null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        if (string == null) {
                            string = "";
                        }
                        arrayList.add(new oa5(string, cursorQuery.getInt(2), cursorQuery.getLong(1)));
                    } while (cursorQuery.moveToNext());
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            a25 a25Var3 = ((r45) at4Var2.a).f;
            r45.l(a25Var3);
            a25Var3.f.c(a25.D(str2), e3, "Error querying trigger uris. appId");
            arrayList = Collections.EMPTY_LIST;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    @Override // defpackage.s55
    public final Context e() {
        return this.l.a;
    }

    public final ds4 e0() {
        return ((r45) Preconditions.checkNotNull(this.l)).d;
    }

    @Override // defpackage.s55
    public final Clock f() {
        return ((r45) Preconditions.checkNotNull(this.l)).k;
    }

    public final w35 f0() {
        w35 w35Var = this.a;
        T(w35Var);
        return w35Var;
    }

    public final long g() {
        long jCurrentTimeMillis = f().currentTimeMillis();
        r95 r95Var = this.i;
        r95Var.w();
        r95Var.v();
        y25 y25Var = r95Var.j;
        long jA = y25Var.a();
        if (jA == 0) {
            ac5 ac5Var = ((r45) r95Var.a).i;
            r45.j(ac5Var);
            jA = ((long) ac5Var.t0().nextInt(86400000)) + 1;
            y25Var.b(jA);
        }
        return ((((jCurrentTimeMillis + jA) / 1000) / 60) / 60) / 24;
    }

    public final at4 g0() {
        at4 at4Var = this.c;
        T(at4Var);
        return at4Var;
    }

    public final void h(String str, bu4 bu4Var) throws Throwable {
        at4 at4Var = this.c;
        T(at4Var);
        m25 m25VarZ0 = at4Var.z0(str);
        if (m25VarZ0 != null) {
            r45 r45Var = m25VarZ0.a;
            if (!TextUtils.isEmpty(m25VarZ0.O())) {
                Boolean boolP = P(m25VarZ0);
                if (boolP == null) {
                    if (!"_ui".equals(bu4Var.n)) {
                        c().i.b(a25.D(str), "Could not find package. appId");
                    }
                } else if (!boolP.booleanValue()) {
                    c().f.b(a25.D(str), "App version does not match; dropping event. appId");
                    return;
                }
                String strH = m25VarZ0.H();
                String strO = m25VarZ0.O();
                long jQ = m25VarZ0.Q();
                j45 j45Var = r45Var.g;
                r45.l(j45Var);
                j45Var.v();
                String str2 = m25VarZ0.l;
                j45 j45Var2 = r45Var.g;
                r45.l(j45Var2);
                j45Var2.v();
                long j = m25VarZ0.m;
                j45 j45Var3 = r45Var.g;
                r45.l(j45Var3);
                j45Var3.v();
                long j2 = m25VarZ0.n;
                j45 j45Var4 = r45Var.g;
                r45.l(j45Var4);
                j45Var4.v();
                boolean z = m25VarZ0.o;
                String strK = m25VarZ0.K();
                j45 j45Var5 = r45Var.g;
                r45.l(j45Var5);
                j45Var5.v();
                boolean z2 = m25VarZ0.p;
                Boolean boolX = m25VarZ0.x();
                long jB = m25VarZ0.b();
                j45 j45Var6 = r45Var.g;
                r45.l(j45Var6);
                j45Var6.v();
                ArrayList arrayList = m25VarZ0.s;
                String strG = a(str).g();
                boolean z3 = m25VarZ0.z();
                j45 j45Var7 = r45Var.g;
                r45.l(j45Var7);
                j45Var7.v();
                long j3 = m25VarZ0.v;
                int i = a(str).b;
                String str3 = o0(str).b;
                j45 j45Var8 = r45Var.g;
                r45.l(j45Var8);
                j45Var8.v();
                int i2 = m25VarZ0.x;
                j45 j45Var9 = r45Var.g;
                r45.l(j45Var9);
                j45Var9.v();
                i(bu4Var, new vc5(str, strH, strO, jQ, str2, j, j2, (String) null, z, false, strK, 0L, 0, z2, false, boolX, jB, (List) arrayList, strG, "", (String) null, z3, j3, i, str3, i2, m25VarZ0.B, m25VarZ0.D(), m25VarZ0.s(), 0L, m25VarZ0.t(), 0L));
                return;
            }
        }
        c().m.b(str, "No app data available; dropping event");
    }

    public final q25 h0() {
        q25 q25Var = this.d;
        if (q25Var != null) {
            return q25Var;
        }
        k21.n("Network broadcast receiver not created");
        return null;
    }

    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0080: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]) (LINE:129), block:B:18:0x0080 */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(defpackage.bu4 r11, defpackage.vc5 r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.i(bu4, vc5):void");
    }

    public final gn4 i0() {
        gn4 gn4Var = this.f;
        T(gn4Var);
        return gn4Var;
    }

    public final void j(bu4 bu4Var, vc5 vc5Var) {
        List listY0;
        r45 r45Var;
        List listY02;
        List listY03;
        Iterator it;
        String str;
        Preconditions.checkNotNull(vc5Var);
        String str2 = vc5Var.n;
        Preconditions.checkNotEmpty(str2);
        d().v();
        l0();
        long j = bu4Var.q;
        long j2 = bu4Var.r;
        ak2 ak2VarA = ak2.a(bu4Var);
        d().v();
        w75 w75Var = this.F;
        if (w75Var == null || (str = this.G) == null || !str.equals(str2)) {
            w75Var = null;
        }
        ac5.q0(w75Var, (Bundle) ak2VarA.f, false);
        bu4 bu4VarB = ak2VarA.b();
        j0();
        Preconditions.checkNotNull(bu4VarB);
        Preconditions.checkNotNull(vc5Var);
        if (TextUtils.isEmpty(vc5Var.o)) {
            return;
        }
        if (!vc5Var.f375u) {
            c0(vc5Var);
            return;
        }
        List list = vc5Var.E;
        if (list != null) {
            String str3 = bu4VarB.n;
            if (!list.contains(str3)) {
                c().m.d("Dropping non-safelisted event. appId, event name, origin", str2, str3, bu4VarB.p);
                return;
            } else {
                Bundle bundleJ0 = bu4VarB.o.j0();
                bundleJ0.putLong("ga_safelisted", 1L);
                bu4VarB = new bu4(str3, new zt4(bundleJ0), bu4VarB.p, bu4VarB.q, bu4VarB.r);
            }
        }
        at4 at4Var = this.c;
        T(at4Var);
        at4Var.j0();
        try {
            String str4 = bu4VarB.n;
            if ("_s".equals(str4)) {
                at4 at4Var2 = this.c;
                T(at4Var2);
                if (!at4Var2.K(str2, "_s") && bu4VarB.o.n.getLong("_sid") != 0) {
                    at4 at4Var3 = this.c;
                    T(at4Var3);
                    if (at4Var3.K(str2, "_f")) {
                        at4 at4Var4 = this.c;
                        T(at4Var4);
                        at4Var4.O(str2, null, "_sid", k(str2, bu4VarB));
                    } else {
                        at4 at4Var5 = this.c;
                        T(at4Var5);
                        if (at4Var5.K(str2, "_v")) {
                            at4 at4Var42 = this.c;
                            T(at4Var42);
                            at4Var42.O(str2, null, "_sid", k(str2, bu4VarB));
                        } else {
                            at4 at4Var6 = this.c;
                            T(at4Var6);
                            at4Var6.O(str2, Long.valueOf(f().currentTimeMillis() - 15000), "_sid", k(str2, bu4VarB));
                        }
                    }
                }
            }
            at4 at4Var7 = this.c;
            T(at4Var7);
            Preconditions.checkNotEmpty(str2);
            at4Var7.v();
            at4Var7.w();
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                a25 a25Var = ((r45) at4Var7.a).f;
                r45.l(a25Var);
                a25Var.i.c(a25.D(str2), Long.valueOf(j), "Invalid time querying timed out conditional properties");
                listY0 = Collections.EMPTY_LIST;
            } else {
                listY0 = at4Var7.y0("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
            }
            Iterator it2 = listY0.iterator();
            while (true) {
                boolean zHasNext = it2.hasNext();
                r45Var = this.l;
                if (!zHasNext) {
                    break;
                }
                fq4 fq4Var = (fq4) it2.next();
                if (fq4Var != null) {
                    Iterator it3 = it2;
                    c().n.d("User property timed out", fq4Var.n, r45Var.j.c(fq4Var.p.o), fq4Var.p.Y());
                    bu4 bu4Var2 = fq4Var.t;
                    if (bu4Var2 != null) {
                        l(new bu4(bu4Var2, j, j2), vc5Var);
                    }
                    at4 at4Var8 = this.c;
                    T(at4Var8);
                    at4Var8.w0(str2, fq4Var.p.o);
                    it2 = it3;
                }
            }
            at4 at4Var9 = this.c;
            T(at4Var9);
            Preconditions.checkNotEmpty(str2);
            at4Var9.v();
            at4Var9.w();
            if (i < 0) {
                a25 a25Var2 = ((r45) at4Var9.a).f;
                r45.l(a25Var2);
                a25Var2.i.c(a25.D(str2), Long.valueOf(j), "Invalid time querying expired conditional properties");
                listY02 = Collections.EMPTY_LIST;
            } else {
                listY02 = at4Var9.y0("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(listY02.size());
            Iterator it4 = listY02.iterator();
            while (it4.hasNext()) {
                fq4 fq4Var2 = (fq4) it4.next();
                if (fq4Var2 != null) {
                    Iterator it5 = it4;
                    int i2 = i;
                    long j3 = j;
                    c().n.d("User property expired", fq4Var2.n, r45Var.j.c(fq4Var2.p.o), fq4Var2.p.Y());
                    at4 at4Var10 = this.c;
                    T(at4Var10);
                    at4Var10.p0(str2, fq4Var2.p.o);
                    bu4 bu4Var3 = fq4Var2.x;
                    if (bu4Var3 != null) {
                        arrayList.add(bu4Var3);
                    }
                    at4 at4Var11 = this.c;
                    T(at4Var11);
                    at4Var11.w0(str2, fq4Var2.p.o);
                    it4 = it5;
                    i = i2;
                    j = j3;
                }
            }
            int i3 = i;
            long j4 = j;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                long j5 = j4;
                l(new bu4((bu4) obj, j5, j2), vc5Var);
                j4 = j5;
                j2 = j2;
            }
            long j6 = j2;
            long j7 = j4;
            at4 at4Var12 = this.c;
            T(at4Var12);
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str4);
            at4Var12.v();
            at4Var12.w();
            if (i3 < 0) {
                r45 r45Var2 = (r45) at4Var12.a;
                a25 a25Var3 = r45Var2.f;
                r45.l(a25Var3);
                a25Var3.i.d("Invalid time querying triggered conditional properties", a25.D(str2), r45Var2.j.a(str4), Long.valueOf(j7));
                listY03 = Collections.EMPTY_LIST;
            } else {
                listY03 = at4Var12.y0("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str4, String.valueOf(j7)});
            }
            ArrayList arrayList2 = new ArrayList(listY03.size());
            Iterator it6 = listY03.iterator();
            while (it6.hasNext()) {
                fq4 fq4Var3 = (fq4) it6.next();
                if (fq4Var3 != null) {
                    vb5 vb5Var = fq4Var3.p;
                    long j8 = j7;
                    xb5 xb5Var = new xb5((String) Preconditions.checkNotNull(fq4Var3.n), fq4Var3.o, vb5Var.o, j8, Preconditions.checkNotNull(vb5Var.Y()));
                    j7 = j8;
                    Object obj2 = xb5Var.e;
                    String str5 = xb5Var.c;
                    at4 at4Var13 = this.c;
                    T(at4Var13);
                    if (at4Var13.q0(xb5Var)) {
                        it = it6;
                        c().n.d("User property triggered", fq4Var3.n, r45Var.j.c(str5), obj2);
                    } else {
                        it = it6;
                        c().f.d("Too many active user properties, ignoring", a25.D(fq4Var3.n), r45Var.j.c(str5), obj2);
                    }
                    bu4 bu4Var4 = fq4Var3.v;
                    if (bu4Var4 != null) {
                        arrayList2.add(bu4Var4);
                    }
                    fq4Var3.p = new vb5(xb5Var);
                    fq4Var3.r = true;
                    at4 at4Var14 = this.c;
                    T(at4Var14);
                    at4Var14.u0(fq4Var3);
                    it6 = it;
                }
            }
            l(bu4VarB, vc5Var);
            int size2 = arrayList2.size();
            int i5 = 0;
            while (i5 < size2) {
                Object obj3 = arrayList2.get(i5);
                i5++;
                long j9 = j6;
                l(new bu4((bu4) obj3, j7, j9), vc5Var);
                j6 = j9;
            }
            at4 at4Var15 = this.c;
            T(at4Var15);
            at4Var15.k0();
            at4 at4Var16 = this.c;
            T(at4Var16);
            at4Var16.l0();
        } catch (Throwable th) {
            at4 at4Var17 = this.c;
            T(at4Var17);
            at4Var17.l0();
            throw th;
        }
    }

    public final ub5 j0() {
        ub5 ub5Var = this.g;
        T(ub5Var);
        return ub5Var;
    }

    public final Bundle k(String str, bu4 bu4Var) {
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", bu4Var.o.n.getLong("_sid"));
        at4 at4Var = this.c;
        T(at4Var);
        xb5 xb5VarR0 = at4Var.r0(str, "_sno");
        if (xb5VarR0 != null) {
            Object obj = xb5VarR0.e;
            if (obj instanceof Long) {
                bundle.putLong("_sno", ((Long) obj).longValue());
            }
        }
        return bundle;
    }

    public final ac5 k0() {
        ac5 ac5Var = ((r45) Preconditions.checkNotNull(this.l)).i;
        r45.j(ac5Var);
        return ac5Var;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:73|(10:75|(0)(1:78)|90|(1:92)|95|(0)(0)|104|(0)(0)|157|158)|77|79|357|80|81|348|82|89|90|(0)(0)|95|(0)(0)|104|(0)(0)|157|158) */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02f4, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02f6, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02f7, code lost:
    
        r16 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02f9, code lost:
    
        ((defpackage.r45) r14.a).c().z().c(defpackage.a25.D(r10), r0, "Error pruning currencies. appId");
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03f3 A[Catch: all -> 0x01c8, TryCatch #7 {all -> 0x01c8, blocks: (B:37:0x01a6, B:40:0x01b5, B:42:0x01bd, B:48:0x01cc, B:95:0x037b, B:104:0x03b3, B:106:0x03f3, B:108:0x03f8, B:109:0x040f, B:111:0x041a, B:113:0x0433, B:115:0x0438, B:116:0x044f, B:119:0x046c, B:123:0x048b, B:124:0x04a2, B:125:0x04ab, B:128:0x04c8, B:129:0x04dc, B:131:0x04e4, B:133:0x04ee, B:135:0x04f4, B:136:0x04fb, B:137:0x0508, B:139:0x052d, B:148:0x0553, B:149:0x0568, B:151:0x0596, B:154:0x05be, B:156:0x05c8, B:160:0x0611, B:162:0x063c, B:164:0x066f, B:165:0x0672, B:167:0x067a, B:168:0x067d, B:170:0x0685, B:171:0x0688, B:173:0x0690, B:174:0x0693, B:176:0x069c, B:177:0x06a0, B:179:0x06ab, B:181:0x06b7, B:184:0x06ed, B:186:0x06ff, B:190:0x0715, B:195:0x0722, B:228:0x07a0, B:230:0x07a6, B:231:0x07a9, B:233:0x07c0, B:234:0x07ca, B:236:0x07d7, B:238:0x07e1, B:239:0x07e4, B:248:0x081f, B:198:0x072b, B:202:0x073d, B:206:0x074b, B:210:0x0759, B:214:0x0767, B:218:0x0775, B:222:0x0782, B:226:0x0790, B:161:0x062c, B:145:0x0538, B:98:0x038d, B:99:0x0399, B:101:0x039f, B:103:0x03ad, B:53:0x01ec, B:56:0x01fe, B:58:0x0213, B:64:0x022f, B:69:0x0261, B:71:0x0267, B:73:0x0275, B:75:0x0283, B:78:0x0294, B:90:0x0333, B:92:0x033d, B:79:0x02c7, B:80:0x02e0, B:82:0x02e6, B:89:0x030e, B:88:0x02f9, B:67:0x023b, B:68:0x0259), top: B:361:0x01a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x079d  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x08ab  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x08f2 A[Catch: all -> 0x0884, TryCatch #2 {all -> 0x0884, blocks: (B:241:0x07fe, B:243:0x0802, B:246:0x0814, B:249:0x0828, B:251:0x0832, B:253:0x083e, B:255:0x0848, B:257:0x0856, B:259:0x0870, B:263:0x088b, B:265:0x0899, B:266:0x08a2, B:268:0x08af, B:270:0x08f2, B:273:0x08fd, B:274:0x0907, B:275:0x0908, B:277:0x0912), top: B:352:0x07fe }] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0912 A[Catch: all -> 0x0884, TRY_LEAVE, TryCatch #2 {all -> 0x0884, blocks: (B:241:0x07fe, B:243:0x0802, B:246:0x0814, B:249:0x0828, B:251:0x0832, B:253:0x083e, B:255:0x0848, B:257:0x0856, B:259:0x0870, B:263:0x088b, B:265:0x0899, B:266:0x08a2, B:268:0x08af, B:270:0x08f2, B:273:0x08fd, B:274:0x0907, B:275:0x0908, B:277:0x0912), top: B:352:0x07fe }] */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x099e A[Catch: all -> 0x093e, TryCatch #9 {all -> 0x093e, blocks: (B:279:0x091b, B:281:0x0932, B:285:0x0941, B:287:0x0975, B:289:0x097d, B:291:0x0987, B:292:0x0994, B:294:0x099e, B:295:0x09ab, B:296:0x09b4, B:298:0x09ba, B:300:0x0a04, B:302:0x0a16, B:306:0x0a31, B:308:0x0a41, B:305:0x0a25, B:312:0x0a54, B:313:0x0a99, B:314:0x0aa4, B:315:0x0ab9, B:317:0x0abf, B:326:0x0b06, B:327:0x0b5c, B:329:0x0b6d, B:343:0x0bd4, B:334:0x0b87, B:335:0x0b8a, B:320:0x0acc, B:322:0x0af2, B:340:0x0ba5, B:341:0x0bbe, B:342:0x0bbf), top: B:364:0x091b, inners: #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x09ba A[Catch: all -> 0x093e, TryCatch #9 {all -> 0x093e, blocks: (B:279:0x091b, B:281:0x0932, B:285:0x0941, B:287:0x0975, B:289:0x097d, B:291:0x0987, B:292:0x0994, B:294:0x099e, B:295:0x09ab, B:296:0x09b4, B:298:0x09ba, B:300:0x0a04, B:302:0x0a16, B:306:0x0a31, B:308:0x0a41, B:305:0x0a25, B:312:0x0a54, B:313:0x0a99, B:314:0x0aa4, B:315:0x0ab9, B:317:0x0abf, B:326:0x0b06, B:327:0x0b5c, B:329:0x0b6d, B:343:0x0bd4, B:334:0x0b87, B:335:0x0b8a, B:320:0x0acc, B:322:0x0af2, B:340:0x0ba5, B:341:0x0bbe, B:342:0x0bbf), top: B:364:0x091b, inners: #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0a4c  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0abf A[Catch: all -> 0x093e, TryCatch #9 {all -> 0x093e, blocks: (B:279:0x091b, B:281:0x0932, B:285:0x0941, B:287:0x0975, B:289:0x097d, B:291:0x0987, B:292:0x0994, B:294:0x099e, B:295:0x09ab, B:296:0x09b4, B:298:0x09ba, B:300:0x0a04, B:302:0x0a16, B:306:0x0a31, B:308:0x0a41, B:305:0x0a25, B:312:0x0a54, B:313:0x0a99, B:314:0x0aa4, B:315:0x0ab9, B:317:0x0abf, B:326:0x0b06, B:327:0x0b5c, B:329:0x0b6d, B:343:0x0bd4, B:334:0x0b87, B:335:0x0b8a, B:320:0x0acc, B:322:0x0af2, B:340:0x0ba5, B:341:0x0bbe, B:342:0x0bbf), top: B:364:0x091b, inners: #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0b6d A[Catch: all -> 0x093e, SQLiteException -> 0x0b83, TRY_LEAVE, TryCatch #3 {SQLiteException -> 0x0b83, blocks: (B:327:0x0b5c, B:329:0x0b6d), top: B:353:0x0b5c, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0b85  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0acc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x033d A[Catch: all -> 0x01c8, TryCatch #7 {all -> 0x01c8, blocks: (B:37:0x01a6, B:40:0x01b5, B:42:0x01bd, B:48:0x01cc, B:95:0x037b, B:104:0x03b3, B:106:0x03f3, B:108:0x03f8, B:109:0x040f, B:111:0x041a, B:113:0x0433, B:115:0x0438, B:116:0x044f, B:119:0x046c, B:123:0x048b, B:124:0x04a2, B:125:0x04ab, B:128:0x04c8, B:129:0x04dc, B:131:0x04e4, B:133:0x04ee, B:135:0x04f4, B:136:0x04fb, B:137:0x0508, B:139:0x052d, B:148:0x0553, B:149:0x0568, B:151:0x0596, B:154:0x05be, B:156:0x05c8, B:160:0x0611, B:162:0x063c, B:164:0x066f, B:165:0x0672, B:167:0x067a, B:168:0x067d, B:170:0x0685, B:171:0x0688, B:173:0x0690, B:174:0x0693, B:176:0x069c, B:177:0x06a0, B:179:0x06ab, B:181:0x06b7, B:184:0x06ed, B:186:0x06ff, B:190:0x0715, B:195:0x0722, B:228:0x07a0, B:230:0x07a6, B:231:0x07a9, B:233:0x07c0, B:234:0x07ca, B:236:0x07d7, B:238:0x07e1, B:239:0x07e4, B:248:0x081f, B:198:0x072b, B:202:0x073d, B:206:0x074b, B:210:0x0759, B:214:0x0767, B:218:0x0775, B:222:0x0782, B:226:0x0790, B:161:0x062c, B:145:0x0538, B:98:0x038d, B:99:0x0399, B:101:0x039f, B:103:0x03ad, B:53:0x01ec, B:56:0x01fe, B:58:0x0213, B:64:0x022f, B:69:0x0261, B:71:0x0267, B:73:0x0275, B:75:0x0283, B:78:0x0294, B:90:0x0333, B:92:0x033d, B:79:0x02c7, B:80:0x02e0, B:82:0x02e6, B:89:0x030e, B:88:0x02f9, B:67:0x023b, B:68:0x0259), top: B:361:0x01a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x038d A[Catch: all -> 0x01c8, TryCatch #7 {all -> 0x01c8, blocks: (B:37:0x01a6, B:40:0x01b5, B:42:0x01bd, B:48:0x01cc, B:95:0x037b, B:104:0x03b3, B:106:0x03f3, B:108:0x03f8, B:109:0x040f, B:111:0x041a, B:113:0x0433, B:115:0x0438, B:116:0x044f, B:119:0x046c, B:123:0x048b, B:124:0x04a2, B:125:0x04ab, B:128:0x04c8, B:129:0x04dc, B:131:0x04e4, B:133:0x04ee, B:135:0x04f4, B:136:0x04fb, B:137:0x0508, B:139:0x052d, B:148:0x0553, B:149:0x0568, B:151:0x0596, B:154:0x05be, B:156:0x05c8, B:160:0x0611, B:162:0x063c, B:164:0x066f, B:165:0x0672, B:167:0x067a, B:168:0x067d, B:170:0x0685, B:171:0x0688, B:173:0x0690, B:174:0x0693, B:176:0x069c, B:177:0x06a0, B:179:0x06ab, B:181:0x06b7, B:184:0x06ed, B:186:0x06ff, B:190:0x0715, B:195:0x0722, B:228:0x07a0, B:230:0x07a6, B:231:0x07a9, B:233:0x07c0, B:234:0x07ca, B:236:0x07d7, B:238:0x07e1, B:239:0x07e4, B:248:0x081f, B:198:0x072b, B:202:0x073d, B:206:0x074b, B:210:0x0759, B:214:0x0767, B:218:0x0775, B:222:0x0782, B:226:0x0790, B:161:0x062c, B:145:0x0538, B:98:0x038d, B:99:0x0399, B:101:0x039f, B:103:0x03ad, B:53:0x01ec, B:56:0x01fe, B:58:0x0213, B:64:0x022f, B:69:0x0261, B:71:0x0267, B:73:0x0275, B:75:0x0283, B:78:0x0294, B:90:0x0333, B:92:0x033d, B:79:0x02c7, B:80:0x02e0, B:82:0x02e6, B:89:0x030e, B:88:0x02f9, B:67:0x023b, B:68:0x0259), top: B:361:0x01a6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(defpackage.bu4 r42, defpackage.vc5 r43) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3085
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.l(bu4, vc5):void");
    }

    public final void l0() {
        if (this.m.get()) {
            return;
        }
        k21.n("UploadController is not initialized");
    }

    public final void m(m25 m25Var, q45 q45Var) {
        dd1 dd1Var;
        h55 h55Var;
        gs4 gs4Var;
        d().v();
        l0();
        String strF0 = ((u45) q45Var.o).F0();
        EnumMap enumMap = new EnumMap(x55.class);
        int length = strF0.length();
        int length2 = x55.values().length;
        gs4 gs4Var2 = gs4.UNSET;
        int i = 0;
        if (length < length2 || strF0.charAt(0) != '1') {
            dd1Var = new dd1(29);
        } else {
            x55[] x55VarArrValues = x55.values();
            int length3 = x55VarArrValues.length;
            int i2 = 0;
            int i3 = 1;
            while (i2 < length3) {
                x55 x55Var = x55VarArrValues[i2];
                int i4 = i3 + 1;
                char cCharAt = strF0.charAt(i3);
                gs4[] gs4VarArrValues = gs4.values();
                int length4 = gs4VarArrValues.length;
                int i5 = i;
                while (true) {
                    if (i5 >= length4) {
                        gs4Var = gs4Var2;
                        break;
                    }
                    gs4Var = gs4VarArrValues[i5];
                    if (gs4Var.n == cCharAt) {
                        break;
                    } else {
                        i5++;
                    }
                }
                enumMap.put(x55Var, gs4Var);
                i2++;
                i3 = i4;
                i = 0;
            }
            dd1Var = new dd1(enumMap);
        }
        String strE = m25Var.E();
        d().v();
        l0();
        y55 y55VarA = a(strE);
        EnumMap enumMap2 = y55VarA.a;
        x55 x55Var2 = x55.AD_STORAGE;
        u55 u55Var = (u55) enumMap2.get(x55Var2);
        u55 u55Var2 = u55.UNINITIALIZED;
        if (u55Var == null) {
            u55Var = u55Var2;
        }
        int i6 = y55VarA.b;
        int iOrdinal = u55Var.ordinal();
        gs4 gs4Var3 = gs4.REMOTE_ENFORCED_DEFAULT;
        gs4 gs4Var4 = gs4.FAILSAFE;
        if (iOrdinal == 1) {
            dd1Var.w(x55Var2, gs4Var3);
        } else if (iOrdinal == 2 || iOrdinal == 3) {
            dd1Var.v(x55Var2, i6);
        } else {
            dd1Var.w(x55Var2, gs4Var4);
        }
        x55 x55Var3 = x55.ANALYTICS_STORAGE;
        u55 u55Var3 = (u55) enumMap2.get(x55Var3);
        if (u55Var3 != null) {
            u55Var2 = u55Var3;
        }
        int iOrdinal2 = u55Var2.ordinal();
        if (iOrdinal2 == 1) {
            dd1Var.w(x55Var3, gs4Var3);
        } else if (iOrdinal2 == 2 || iOrdinal2 == 3) {
            dd1Var.v(x55Var3, i6);
        } else {
            dd1Var.w(x55Var3, gs4Var4);
        }
        String strE2 = m25Var.E();
        d().v();
        l0();
        rt4 rt4VarQ0 = q0(strE2, o0(strE2), a(strE2), dd1Var);
        String str = rt4VarQ0.d;
        boolean zBooleanValue = ((Boolean) Preconditions.checkNotNull(rt4VarQ0.c)).booleanValue();
        q45Var.b();
        ((u45) q45Var.o).j1(zBooleanValue);
        if (!TextUtils.isEmpty(str)) {
            q45Var.b();
            ((u45) q45Var.o).k1(str);
        }
        d().v();
        l0();
        Iterator it = Collections.unmodifiableList(((u45) q45Var.o).Z1()).iterator();
        while (true) {
            if (it.hasNext()) {
                h55Var = (h55) it.next();
                if ("_npa".equals(h55Var.v())) {
                    break;
                }
            } else {
                h55Var = null;
                break;
            }
        }
        if (h55Var != null) {
            EnumMap enumMap3 = (EnumMap) dd1Var.o;
            x55 x55Var4 = x55.AD_PERSONALIZATION;
            gs4 gs4Var5 = (gs4) enumMap3.get(x55Var4);
            if (gs4Var5 == null) {
                gs4Var5 = gs4Var2;
            }
            if (gs4Var5 == gs4Var2) {
                at4 at4Var = this.c;
                T(at4Var);
                xb5 xb5VarR0 = at4Var.r0(m25Var.E(), "_npa");
                gs4 gs4Var6 = gs4.MANIFEST;
                gs4 gs4Var7 = gs4.API;
                if (xb5VarR0 != null) {
                    String str2 = xb5VarR0.b;
                    if ("tcf".equals(str2)) {
                        dd1Var.w(x55Var4, gs4.TCF);
                    } else if ("app".equals(str2)) {
                        dd1Var.w(x55Var4, gs4Var7);
                    } else {
                        dd1Var.w(x55Var4, gs4Var6);
                    }
                } else {
                    Boolean boolX = m25Var.x();
                    if (boolX == null || ((boolX.booleanValue() && h55Var.z() != 1) || !(boolX.booleanValue() || h55Var.z() == 0))) {
                        dd1Var.w(x55Var4, gs4Var7);
                    } else {
                        dd1Var.w(x55Var4, gs4Var6);
                    }
                }
            }
        } else {
            int iF = F(m25Var.E(), dd1Var);
            g55 g55VarE = h55.E();
            g55VarE.b();
            ((h55) g55VarE.o).G("_npa");
            long jCurrentTimeMillis = f().currentTimeMillis();
            g55VarE.b();
            ((h55) g55VarE.o).F(jCurrentTimeMillis);
            g55VarE.b();
            ((h55) g55VarE.o).J(iF);
            h55 h55Var2 = (h55) g55VarE.d();
            q45Var.b();
            ((u45) q45Var.o).h0(h55Var2);
            c().n.c("non_personalized_ads(_npa)", Integer.valueOf(iF), "Setting user property");
        }
        String string = dd1Var.toString();
        q45Var.b();
        ((u45) q45Var.o).i1(string);
        String strE3 = m25Var.E();
        w35 w35Var = this.a;
        w35Var.v();
        w35Var.B(strE3);
        x05 x05VarR = w35Var.R(strE3);
        boolean z = x05VarR == null || !x05VarR.w() || x05VarR.x();
        List listT = q45Var.T();
        for (int i7 = 0; i7 < listT.size(); i7++) {
            if ("_tcf".equals(((u35) listT.get(i7)).y())) {
                s35 s35Var = (s35) ((u35) listT.get(i7)).k();
                List listG = s35Var.g();
                int i8 = 0;
                while (true) {
                    if (i8 >= listG.size()) {
                        break;
                    }
                    if ("_tcfd".equals(((c45) listG.get(i8)).u())) {
                        String strW = ((c45) listG.get(i8)).w();
                        if (z && strW.length() > 4) {
                            char[] charArray = strW.toCharArray();
                            int i9 = 1;
                            while (true) {
                                if (i9 >= 64) {
                                    i9 = 0;
                                    break;
                                } else if (charArray[4] == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i9)) {
                                    break;
                                } else {
                                    i9++;
                                }
                            }
                            charArray[4] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i9 | 1);
                            strW = String.valueOf(charArray);
                        }
                        a45 a45VarF = c45.F();
                        a45VarF.g("_tcfd");
                        a45VarF.h(strW);
                        s35Var.b();
                        ((u35) s35Var.o).K(i8, (c45) a45VarF.d());
                    } else {
                        i8++;
                    }
                }
                q45Var.V(i7, s35Var);
                return;
            }
        }
    }

    public final void m0(vc5 vc5Var) {
        d().v();
        l0();
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        y55 y55VarC = y55.c(vc5Var.K, vc5Var.F);
        a(str);
        c().n.c(str, y55VarC, "Setting storage consent for package");
        d().v();
        l0();
        this.B.put(str, y55VarC);
        at4 at4Var = this.c;
        T(at4Var);
        at4Var.b0(str, y55VarC);
    }

    public final void n(m25 m25Var, q45 q45Var) {
        Serializable serializableN;
        d().v();
        l0();
        e25 e25VarY = o25.Y();
        r45 r45Var = m25Var.a;
        j45 j45Var = r45Var.g;
        r45.l(j45Var);
        j45Var.v();
        byte[] bArr = m25Var.H;
        if (bArr != null) {
            try {
                e25VarY = (e25) ub5.g0(e25VarY, bArr);
            } catch (fo4 unused) {
                c().i.b(a25.D(m25Var.E()), "Failed to parse locally stored ad campaign info. appId");
            }
        }
        Iterator it = q45Var.T().iterator();
        while (it.hasNext()) {
            u35 u35Var = (u35) it.next();
            if (u35Var.y().equals("_cmp")) {
                c45 c45VarF = ub5.F("gclid", u35Var);
                Serializable serializableN2 = c45VarF == null ? null : ub5.N(c45VarF);
                if (serializableN2 == null) {
                    serializableN2 = "";
                }
                String str = (String) serializableN2;
                c45 c45VarF2 = ub5.F("gbraid", u35Var);
                Serializable serializableN3 = c45VarF2 == null ? null : ub5.N(c45VarF2);
                if (serializableN3 == null) {
                    serializableN3 = "";
                }
                String str2 = (String) serializableN3;
                c45 c45VarF3 = ub5.F("gad_source", u35Var);
                Serializable serializableN4 = c45VarF3 == null ? null : ub5.N(c45VarF3);
                if (serializableN4 == null) {
                    serializableN4 = "";
                }
                String str3 = (String) serializableN4;
                c45 c45VarF4 = ub5.F("deep_link_url", u35Var);
                Serializable serializableN5 = c45VarF4 == null ? null : ub5.N(c45VarF4);
                String str4 = (String) (serializableN5 != null ? serializableN5 : "");
                String[] strArrSplit = ((String) e05.b1.a(null)).split(",");
                j0();
                HashMap map = new HashMap();
                for (c45 c45Var : u35Var.v()) {
                    Iterator it2 = it;
                    if (Arrays.asList(strArrSplit).contains(c45Var.u()) && (serializableN = ub5.N(c45Var)) != null) {
                        map.put(c45Var.u(), serializableN);
                    }
                    it = it2;
                }
                Iterator it3 = it;
                if (!map.isEmpty()) {
                    c45 c45VarF5 = ub5.F("click_timestamp", u35Var);
                    Serializable serializableN6 = c45VarF5 == null ? null : ub5.N(c45VarF5);
                    long jLongValue = ((Long) (serializableN6 != null ? serializableN6 : 0L)).longValue();
                    if (jLongValue <= 0) {
                        jLongValue = u35Var.A();
                    }
                    long j = jLongValue;
                    c45 c45VarF6 = ub5.F("_cis", u35Var);
                    if ("referrer API v2".equals(c45VarF6 == null ? null : ub5.N(c45VarF6))) {
                        if (j > ((o25) e25VarY.o).V()) {
                            if (str.isEmpty()) {
                                e25VarY.b();
                                ((o25) e25VarY.o).w();
                            } else {
                                e25VarY.b();
                                ((o25) e25VarY.o).v(str);
                            }
                            if (str2.isEmpty()) {
                                e25VarY.b();
                                ((o25) e25VarY.o).y();
                            } else {
                                e25VarY.b();
                                ((o25) e25VarY.o).x(str2);
                            }
                            if (str3.isEmpty()) {
                                e25VarY.b();
                                ((o25) e25VarY.o).A();
                            } else {
                                e25VarY.b();
                                ((o25) e25VarY.o).z(str3);
                            }
                            e25VarY.b();
                            ((o25) e25VarY.o).B(j);
                            e25VarY.b();
                            ((o25) e25VarY.o).D().clear();
                            HashMap mapG = G(u35Var);
                            e25VarY.b();
                            ((o25) e25VarY.o).D().putAll(mapG);
                        }
                    } else if (j > ((o25) e25VarY.o).N()) {
                        if (str.isEmpty()) {
                            e25VarY.b();
                            ((o25) e25VarY.o).b0();
                        } else {
                            e25VarY.b();
                            ((o25) e25VarY.o).a0(str);
                        }
                        if (str2.isEmpty()) {
                            e25VarY.b();
                            ((o25) e25VarY.o).d0();
                        } else {
                            e25VarY.b();
                            ((o25) e25VarY.o).c0(str2);
                        }
                        if (str3.isEmpty()) {
                            e25VarY.b();
                            ((o25) e25VarY.o).t();
                        } else {
                            e25VarY.b();
                            ((o25) e25VarY.o).e0(str3);
                        }
                        if (e0().G(null, e05.a1)) {
                            if (str4.isEmpty()) {
                                e25VarY.b();
                                ((o25) e25VarY.o).F();
                            } else {
                                e25VarY.b();
                                ((o25) e25VarY.o).E(str4);
                            }
                        }
                        e25VarY.b();
                        ((o25) e25VarY.o).u(j);
                        e25VarY.b();
                        ((o25) e25VarY.o).C().clear();
                        HashMap mapG2 = G(u35Var);
                        e25VarY.b();
                        ((o25) e25VarY.o).C().putAll(mapG2);
                    }
                }
                it = it3;
            }
        }
        if (!((o25) e25VarY.d()).equals(o25.Z())) {
            o25 o25Var = (o25) e25VarY.d();
            q45Var.b();
            ((u45) q45Var.o).o1(o25Var);
        }
        byte[] bArrA = ((o25) e25VarY.d()).a();
        j45 j45Var2 = r45Var.g;
        r45.l(j45Var2);
        j45Var2.v();
        m25Var.R |= m25Var.H != bArrA;
        m25Var.H = bArrA;
        if (m25Var.o()) {
            at4 at4Var = this.c;
            T(at4Var);
            at4Var.A0(m25Var, false);
        }
        if (e0().G(null, e05.a1)) {
            for (int i = 0; i < q45Var.U(); i++) {
                u35 u35VarY1 = ((u45) q45Var.o).Y1(i);
                if ("_cmp".equals(u35VarY1.y())) {
                    s35 s35Var = (s35) u35VarY1.k();
                    List listG = s35Var.g();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= listG.size()) {
                            break;
                        }
                        if ("deep_link_url".equals(((c45) listG.get(i2)).u())) {
                            s35Var.l(i2);
                            q45Var.V(i, s35Var);
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        if (e0().G(null, e05.Z0)) {
            at4 at4Var2 = this.c;
            T(at4Var2);
            at4Var2.p0(m25Var.E(), "_lgclid");
        }
    }

    public final void n0(vc5 vc5Var) {
        d().v();
        l0();
        String str = vc5Var.n;
        Preconditions.checkNotEmpty(str);
        rt4 rt4VarB = rt4.b(vc5Var.L);
        c().n.c(str, rt4VarB, "Setting DMA consent for package");
        d().v();
        l0();
        u55 u55VarA = rt4.c(100, p0(str)).a();
        this.C.put(str, rt4VarB);
        at4 at4Var = this.c;
        T(at4Var);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(rt4VarB);
        at4Var.v();
        at4Var.w();
        y55 y55VarP = at4Var.P(str);
        y55 y55Var = y55.c;
        if (y55VarP == y55Var) {
            at4Var.b0(str, y55Var);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", rt4VarB.b);
        at4Var.U(contentValues);
        u55 u55VarA2 = rt4.c(100, p0(str)).a();
        d().v();
        l0();
        u55 u55Var = u55.GRANTED;
        u55 u55Var2 = u55.DENIED;
        boolean z = u55VarA == u55Var2 && u55VarA2 == u55Var;
        boolean z2 = u55VarA == u55Var && u55VarA2 == u55Var2;
        if (z || z2) {
            c().n.b(str, "Generated _dcu event for");
            Bundle bundle = new Bundle();
            at4 at4Var2 = this.c;
            T(at4Var2);
            if (at4Var2.B0(g(), str, false, false, false, false).f < e0().E(str, e05.l0)) {
                bundle.putLong("_r", 1L);
                at4 at4Var3 = this.c;
                T(at4Var3);
                c().n.c(str, Long.valueOf(at4Var3.B0(g(), str, false, false, true, false).f), "_dcu realtime event count");
            }
            this.J.e(str, "_dcu", bundle);
        }
    }

    public final String o(y55 y55Var) {
        if (!y55Var.i(x55.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        k0().t0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final rt4 o0(String str) {
        d().v();
        l0();
        HashMap map = this.C;
        rt4 rt4Var = (rt4) map.get(str);
        if (rt4Var != null) {
            return rt4Var;
        }
        at4 at4Var = this.c;
        T(at4Var);
        Preconditions.checkNotNull(str);
        at4Var.v();
        at4Var.w();
        rt4 rt4VarB = rt4.b(at4Var.T("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}));
        map.put(str, rt4VarB);
        return rt4VarB;
    }

    public final void p(ArrayList arrayList) {
        Preconditions.checkArgument(!arrayList.isEmpty());
        if (this.y != null) {
            c().f.a("Set uploading progress before finishing the previous upload");
        } else {
            this.y = new ArrayList(arrayList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    public final Bundle p0(String str) {
        d().v();
        l0();
        w35 w35Var = this.a;
        T(w35Var);
        if (w35Var.R(str) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        y55 y55VarA = a(str);
        Bundle bundle2 = new Bundle();
        Iterator it = y55VarA.a.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            int iOrdinal = ((u55) entry.getValue()).ordinal();
            String str2 = iOrdinal != 2 ? iOrdinal != 3 ? null : "granted" : "denied";
            if (str2 != null) {
                bundle2.putString(((x55) entry.getKey()).n, str2);
            }
        }
        bundle.putAll(bundle2);
        rt4 rt4VarQ0 = q0(str, o0(str), y55VarA, new dd1(29));
        Bundle bundle3 = new Bundle();
        for (Map.Entry entry2 : rt4VarQ0.e.entrySet()) {
            int iOrdinal2 = ((u55) entry2.getValue()).ordinal();
            String str3 = iOrdinal2 != 2 ? iOrdinal2 != 3 ? null : "granted" : "denied";
            if (str3 != null) {
                bundle3.putString(((x55) entry2.getKey()).n, str3);
            }
        }
        Boolean bool = rt4VarQ0.c;
        if (bool != null) {
            bundle3.putString("is_dma_region", bool.toString());
        }
        String str4 = rt4VarQ0.d;
        if (str4 != null) {
            bundle3.putString("cps_display_str", str4);
        }
        bundle.putAll(bundle3);
        at4 at4Var = this.c;
        T(at4Var);
        xb5 xb5VarR0 = at4Var.r0(str, "_npa");
        bundle.putString("ad_personalization", 1 != (xb5VarR0 != null ? xb5VarR0.e.equals(1L) : F(str, new dd1(29))) ? "granted" : "denied");
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01a8 A[Catch: all -> 0x0028, TryCatch #3 {all -> 0x0028, blocks: (B:3:0x000e, B:5:0x001b, B:8:0x002b, B:10:0x0031, B:11:0x003e, B:13:0x0046, B:14:0x004b, B:16:0x0056, B:17:0x0063, B:19:0x006e, B:20:0x007e, B:22:0x00a5, B:24:0x00ab, B:25:0x00ae, B:27:0x00c7, B:28:0x00dc, B:30:0x00ed, B:32:0x00f3, B:35:0x0108, B:45:0x0127, B:47:0x012c, B:48:0x012f, B:49:0x0130, B:50:0x0135, B:55:0x017a, B:71:0x01a2, B:73:0x01a8, B:75:0x01b3, B:79:0x01be, B:80:0x01c1, B:33:0x00f8, B:37:0x010c, B:42:0x0114), top: B:89:0x000e, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01be A[Catch: all -> 0x0028, DONT_GENERATE, TRY_ENTER, TryCatch #3 {all -> 0x0028, blocks: (B:3:0x000e, B:5:0x001b, B:8:0x002b, B:10:0x0031, B:11:0x003e, B:13:0x0046, B:14:0x004b, B:16:0x0056, B:17:0x0063, B:19:0x006e, B:20:0x007e, B:22:0x00a5, B:24:0x00ab, B:25:0x00ae, B:27:0x00c7, B:28:0x00dc, B:30:0x00ed, B:32:0x00f3, B:35:0x0108, B:45:0x0127, B:47:0x012c, B:48:0x012f, B:49:0x0130, B:50:0x0135, B:55:0x017a, B:71:0x01a2, B:73:0x01a8, B:75:0x01b3, B:79:0x01be, B:80:0x01c1, B:33:0x00f8, B:37:0x010c, B:42:0x0114), top: B:89:0x000e, inners: #0 }] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q() {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.q():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.rt4 q0(java.lang.String r11, defpackage.rt4 r12, defpackage.y55 r13, defpackage.dd1 r14) {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.q0(java.lang.String, rt4, y55, dd1):rt4");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006f A[PHI: r0 r11 r22 r24
  0x006f: PHI (r0v114 java.util.List) = (r0v8 java.util.List), (r0v136 java.util.List) binds: [B:108:0x0225, B:16:0x006d] A[DONT_GENERATE, DONT_INLINE]
  0x006f: PHI (r11v47 android.database.Cursor) = (r11v5 android.database.Cursor), (r11v49 android.database.Cursor) binds: [B:108:0x0225, B:16:0x006d] A[DONT_GENERATE, DONT_INLINE]
  0x006f: PHI (r22v28 ??) = (r22v40 ??), (r22v41 ??) binds: [B:108:0x0225, B:16:0x006d] A[DONT_GENERATE, DONT_INLINE]
  0x006f: PHI (r24v7 long) = (r24v2 long), (r24v8 long) binds: [B:108:0x0225, B:16:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0600  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0657  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x07b4  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0808  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0817  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x084b  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x087b  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0893  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x08a9 A[LOOP:7: B:345:0x08a3->B:347:0x08a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:350:0x08e9  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x08ec  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0901  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x09fc  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x09ff  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0a8d  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x07fc A[EDGE_INSN: B:447:0x07fc->B:317:0x07fc BREAK  A[LOOP:4: B:263:0x0653->B:316:0x07ee], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:449:0x07ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0860 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:484:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:489:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r14v13, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v18 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v27 */
    /* JADX WARN: Type inference failed for: r22v28 */
    /* JADX WARN: Type inference failed for: r22v30, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r22v31 */
    /* JADX WARN: Type inference failed for: r22v32 */
    /* JADX WARN: Type inference failed for: r22v33 */
    /* JADX WARN: Type inference failed for: r22v34 */
    /* JADX WARN: Type inference failed for: r22v35 */
    /* JADX WARN: Type inference failed for: r22v36 */
    /* JADX WARN: Type inference failed for: r22v37 */
    /* JADX WARN: Type inference failed for: r22v38 */
    /* JADX WARN: Type inference failed for: r22v39 */
    /* JADX WARN: Type inference failed for: r22v40 */
    /* JADX WARN: Type inference failed for: r22v41 */
    /* JADX WARN: Type inference failed for: r22v42 */
    /* JADX WARN: Type inference failed for: r22v43 */
    /* JADX WARN: Type inference failed for: r22v44 */
    /* JADX WARN: Type inference failed for: r22v45 */
    /* JADX WARN: Type inference failed for: r22v46 */
    /* JADX WARN: Type inference failed for: r22v47 */
    /* JADX WARN: Type inference failed for: r33v0, types: [pb5] */
    /* JADX WARN: Type inference failed for: r8v66, types: [ta5] */
    /* JADX WARN: Type inference failed for: r8v67 */
    /* JADX WARN: Type inference failed for: r8v88 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(long r34, java.lang.String r36) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.r(long, java.lang.String):void");
    }

    public final boolean s(String str, String str2) {
        at4 at4Var = this.c;
        T(at4Var);
        m25 m25VarZ0 = at4Var.z0(str);
        HashMap map = this.E;
        if (m25VarZ0 == null || !k0().Z(str, m25VarZ0.D())) {
            ob5 ob5Var = (ob5) map.get(str2);
            return ob5Var == null || ob5Var.a.f().currentTimeMillis() >= ob5Var.c;
        }
        map.remove(str2);
        return true;
    }

    public final void t(String str) {
        d().v();
        l0();
        this.v = true;
        try {
            r45 r45Var = this.l;
            r45Var.getClass();
            Boolean bool = r45Var.o().e;
            if (bool == null) {
                c().i.a("Upload data called on the client side before use of service was decided");
            } else if (bool.booleanValue()) {
                c().f.a("Upload called in the client side when service should be used");
            } else if (this.o > 0) {
                N();
            } else {
                i25 i25Var = this.b;
                T(i25Var);
                if (i25Var.z()) {
                    at4 at4Var = this.c;
                    T(at4Var);
                    if (at4Var.B(str)) {
                        at4 at4Var2 = this.c;
                        T(at4Var2);
                        Preconditions.checkNotEmpty(str);
                        at4Var2.v();
                        at4Var2.w();
                        List listA = at4Var2.A(str, wa5.Y(v75.p), 1);
                        tb5 tb5Var = listA.isEmpty() ? null : (tb5) listA.get(0);
                        if (tb5Var != null) {
                            p45 p45Var = tb5Var.b;
                            c().n.d("[sgtm] Uploading data from upload queue. appId, type, url", str, tb5Var.e, tb5Var.c);
                            byte[] bArrA = p45Var.a();
                            if (Log.isLoggable(c().F(), 2)) {
                                ub5 ub5Var = this.g;
                                T(ub5Var);
                                c().n.d("[sgtm] Uploading data from upload queue. appId, uncompressed size, data", str, Integer.valueOf(bArrA.length), ub5Var.W(p45Var));
                            }
                            cb5 cb5Var = new cb5(tb5Var.c, tb5Var.d, tb5Var.e, null);
                            this.f260u = true;
                            i25 i25Var2 = this.b;
                            T(i25Var2);
                            i25Var2.C(str, cb5Var, p45Var, new ui3(this, str, (Object) tb5Var, 16));
                        }
                    } else {
                        c().n.b(str, "[sgtm] Upload queue has no batches for appId");
                    }
                } else {
                    c().n.a("Network not connected, ignoring upload request");
                    N();
                }
            }
            this.v = false;
            O();
        } catch (Throwable th) {
            this.v = false;
            O();
            throw th;
        }
    }

    public final void u(String str, boolean z, Long l, Long l2) {
        at4 at4Var = this.c;
        T(at4Var);
        m25 m25VarZ0 = at4Var.z0(str);
        if (m25VarZ0 != null) {
            r45 r45Var = m25VarZ0.a;
            j45 j45Var = r45Var.g;
            r45.l(j45Var);
            j45Var.v();
            m25VarZ0.R |= m25VarZ0.y != z;
            m25VarZ0.y = z;
            j45 j45Var2 = r45Var.g;
            r45.l(j45Var2);
            j45Var2.v();
            m25VarZ0.R |= !Objects.equals(m25VarZ0.z, l);
            m25VarZ0.z = l;
            j45 j45Var3 = r45Var.g;
            r45.l(j45Var3);
            j45Var3.v();
            m25VarZ0.R |= !Objects.equals(m25VarZ0.A, l2);
            m25VarZ0.A = l2;
            if (m25VarZ0.o()) {
                at4 at4Var2 = this.c;
                T(at4Var2);
                at4Var2.A0(m25VarZ0, false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(java.lang.String r9, defpackage.q45 r10) {
        /*
            Method dump skipped, instruction units count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.v(java.lang.String, q45):void");
    }

    public final void w(q45 q45Var, q41 q41Var) {
        String strR0;
        String strR02;
        for (int i = 0; i < q45Var.U(); i++) {
            s35 s35Var = (s35) ((u45) q45Var.o).Y1(i).k();
            Iterator it = s35Var.g().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if ("_c".equals(((c45) it.next()).u())) {
                    if (((u45) q41Var.o).K0() >= e0().E(((u45) q41Var.o).t(), e05.k0)) {
                        int iE = e0().E(((u45) q41Var.o).t(), e05.x0);
                        LinkedList linkedList = this.q;
                        ub5 ub5Var = this.g;
                        if (iE > 0) {
                            at4 at4Var = this.c;
                            T(at4Var);
                            if (at4Var.B0(g(), ((u45) q41Var.o).t(), false, false, false, true).g > iE) {
                                a45 a45VarF = c45.F();
                                a45VarF.g("_tnr");
                                a45VarF.i(1L);
                                s35Var.j((c45) a45VarF.d());
                            } else {
                                if (e0().G(((u45) q41Var.o).t(), e05.Q0)) {
                                    strR02 = k0().r0();
                                    a45 a45VarF2 = c45.F();
                                    a45VarF2.g("_tu");
                                    a45VarF2.h(strR02);
                                    s35Var.j((c45) a45VarF2.d());
                                } else {
                                    strR02 = null;
                                }
                                a45 a45VarF3 = c45.F();
                                a45VarF3.g("_tr");
                                a45VarF3.i(1L);
                                s35Var.j((c45) a45VarF3.d());
                                T(ub5Var);
                                oa5 oa5VarU = ub5Var.U(((u45) q41Var.o).t(), q45Var, s35Var, strR02);
                                if (oa5VarU != null) {
                                    c().n.c(((u45) q41Var.o).t(), oa5VarU.n, "Generated trigger URI. appId, uri");
                                    at4 at4Var2 = this.c;
                                    T(at4Var2);
                                    at4Var2.Q(((u45) q41Var.o).t(), oa5VarU);
                                    if (!linkedList.contains(((u45) q41Var.o).t())) {
                                        linkedList.add(((u45) q41Var.o).t());
                                    }
                                }
                            }
                        } else {
                            if (e0().G(((u45) q41Var.o).t(), e05.Q0)) {
                                strR0 = k0().r0();
                                a45 a45VarF4 = c45.F();
                                a45VarF4.g("_tu");
                                a45VarF4.h(strR0);
                                s35Var.j((c45) a45VarF4.d());
                            } else {
                                strR0 = null;
                            }
                            a45 a45VarF5 = c45.F();
                            a45VarF5.g("_tr");
                            a45VarF5.i(1L);
                            s35Var.j((c45) a45VarF5.d());
                            T(ub5Var);
                            oa5 oa5VarU2 = ub5Var.U(((u45) q41Var.o).t(), q45Var, s35Var, strR0);
                            if (oa5VarU2 != null) {
                                c().n.c(((u45) q41Var.o).t(), oa5VarU2.n, "Generated trigger URI. appId, uri");
                                at4 at4Var3 = this.c;
                                T(at4Var3);
                                at4Var3.Q(((u45) q41Var.o).t(), oa5VarU2);
                                if (!linkedList.contains(((u45) q41Var.o).t())) {
                                    linkedList.add(((u45) q41Var.o).t());
                                }
                            }
                        }
                    }
                    u35 u35Var = (u35) s35Var.d();
                    q45Var.b();
                    ((u45) q45Var.o).b0(i, u35Var);
                }
            }
        }
    }

    public final void x(String str, a45 a45Var, Bundle bundle, String str2) {
        int iA;
        List listListOf = e0().G(str2, e05.a1) ? CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si", "deep_link_url"}) : CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
        if (ac5.Y(((c45) a45Var.o).u()) || ac5.Y(str)) {
            iA = e0().A(str2, true);
        } else {
            ds4 ds4VarE0 = e0();
            ds4VarE0.getClass();
            iA = Math.max(Math.min(ds4VarE0.E(str2, e05.g0), 500), 100);
        }
        long j = iA;
        long jCodePointCount = ((c45) a45Var.o).w().codePointCount(0, ((c45) a45Var.o).w().length());
        k0();
        String strU = ((c45) a45Var.o).u();
        e0();
        String strC = ac5.C(strU, 40, true);
        if (jCodePointCount <= j || listListOf.contains(((c45) a45Var.o).u())) {
            return;
        }
        if ("_ev".equals(((c45) a45Var.o).u())) {
            k0();
            bundle.putString("_ev", ac5.C(((c45) a45Var.o).w(), e0().A(str2, true), true));
            return;
        }
        c().k.c(strC, Long.valueOf(jCodePointCount), "Param value is too long; discarded. Name, value length");
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", 4L);
            if (bundle.getString("_ev") == null) {
                bundle.putString("_ev", strC);
                bundle.putLong("_el", jCodePointCount);
            }
        }
        bundle.remove(((c45) a45Var.o).u());
    }

    public final boolean y(s35 s35Var) {
        ArrayList arrayList = new ArrayList(s35Var.g());
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if ("value".equals(((c45) arrayList.get(i3)).u())) {
                i = i3;
            } else if ("currency".equals(((c45) arrayList.get(i3)).u())) {
                i2 = i3;
            }
        }
        if (i == -1) {
            if (!e0().G(null, e05.f1) || !"_iap".equals(s35Var.m())) {
                return true;
            }
            E(s35Var, "_c");
            D(s35Var, 18, "value");
            return false;
        }
        if (!((c45) arrayList.get(i)).x() && !((c45) arrayList.get(i)).B()) {
            c().k.a("Value must be specified with a numeric type.");
            s35Var.l(i);
            E(s35Var, "_c");
            D(s35Var, 18, "value");
            return false;
        }
        if (i2 != -1) {
            String strW = ((c45) arrayList.get(i2)).w();
            if (strW.length() == 3) {
                int iCharCount = 0;
                while (iCharCount < strW.length()) {
                    int iCodePointAt = strW.codePointAt(iCharCount);
                    if (Character.isLetter(iCodePointAt)) {
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                }
                return true;
            }
        }
        c().k.a("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
        s35Var.l(i);
        E(s35Var, "_c");
        D(s35Var, 19, "currency");
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0164 A[EDGE_INSN: B:109:0x0164->B:55:0x0164 BREAK  A[LOOP:0: B:36:0x0106->B:111:0x0106], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0087 A[Catch: all -> 0x0018, TryCatch #3 {all -> 0x0018, blocks: (B:4:0x0015, B:8:0x001d, B:10:0x002a, B:11:0x0034, B:19:0x004c, B:24:0x0096, B:23:0x0087, B:25:0x00a3, B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f5, B:84:0x022c, B:86:0x023f, B:88:0x024a, B:96:0x0269, B:90:0x0250, B:92:0x0259, B:94:0x025f, B:95:0x0263, B:97:0x026c, B:98:0x0274, B:33:0x00ea, B:99:0x0275), top: B:108:0x0015, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3 A[Catch: all -> 0x0018, PHI: r0
  0x00a3: PHI (r0v2 int) = (r0v0 int), (r0v35 int) binds: [B:12:0x003f, B:18:0x004a] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {all -> 0x0018, blocks: (B:4:0x0015, B:8:0x001d, B:10:0x002a, B:11:0x0034, B:19:0x004c, B:24:0x0096, B:23:0x0087, B:25:0x00a3, B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f5, B:84:0x022c, B:86:0x023f, B:88:0x024a, B:96:0x0269, B:90:0x0250, B:92:0x0259, B:94:0x025f, B:95:0x0263, B:97:0x026c, B:98:0x0274, B:33:0x00ea, B:99:0x0275), top: B:108:0x0015, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d9 A[Catch: all -> 0x0018, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f5, B:84:0x022c, B:86:0x023f, B:88:0x024a, B:96:0x0269, B:90:0x0250, B:92:0x0259, B:94:0x025f, B:95:0x0263, B:97:0x026c, B:98:0x0274, B:33:0x00ea), top: B:104:0x00b8, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea A[Catch: all -> 0x0018, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f5, B:84:0x022c, B:86:0x023f, B:88:0x024a, B:96:0x0269, B:90:0x0250, B:92:0x0259, B:94:0x025f, B:95:0x0263, B:97:0x026c, B:98:0x0274, B:33:0x00ea), top: B:104:0x00b8, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0110 A[Catch: all -> 0x0161, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0161, blocks: (B:35:0x00fd, B:36:0x0106, B:39:0x0110, B:42:0x0124, B:44:0x0130, B:45:0x0132, B:49:0x0149, B:51:0x0153, B:55:0x0164, B:56:0x0169, B:58:0x016f, B:60:0x0182, B:62:0x0199, B:63:0x019b, B:65:0x01ad, B:67:0x01c9, B:69:0x01ea, B:70:0x01f9, B:71:0x01fd, B:73:0x0203, B:74:0x020a, B:77:0x0218, B:79:0x021c, B:82:0x0223, B:83:0x0224), top: B:107:0x00fd, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016f A[Catch: all -> 0x0161, TryCatch #2 {all -> 0x0161, blocks: (B:35:0x00fd, B:36:0x0106, B:39:0x0110, B:42:0x0124, B:44:0x0130, B:45:0x0132, B:49:0x0149, B:51:0x0153, B:55:0x0164, B:56:0x0169, B:58:0x016f, B:60:0x0182, B:62:0x0199, B:63:0x019b, B:65:0x01ad, B:67:0x01c9, B:69:0x01ea, B:70:0x01f9, B:71:0x01fd, B:73:0x0203, B:74:0x020a, B:77:0x0218, B:79:0x021c, B:82:0x0223, B:83:0x0224), top: B:107:0x00fd, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01c9 A[Catch: all -> 0x0161, TryCatch #2 {all -> 0x0161, blocks: (B:35:0x00fd, B:36:0x0106, B:39:0x0110, B:42:0x0124, B:44:0x0130, B:45:0x0132, B:49:0x0149, B:51:0x0153, B:55:0x0164, B:56:0x0169, B:58:0x016f, B:60:0x0182, B:62:0x0199, B:63:0x019b, B:65:0x01ad, B:67:0x01c9, B:69:0x01ea, B:70:0x01f9, B:71:0x01fd, B:73:0x0203, B:74:0x020a, B:77:0x0218, B:79:0x021c, B:82:0x0223, B:83:0x0224), top: B:107:0x00fd, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0203 A[Catch: all -> 0x0161, TRY_LEAVE, TryCatch #2 {all -> 0x0161, blocks: (B:35:0x00fd, B:36:0x0106, B:39:0x0110, B:42:0x0124, B:44:0x0130, B:45:0x0132, B:49:0x0149, B:51:0x0153, B:55:0x0164, B:56:0x0169, B:58:0x016f, B:60:0x0182, B:62:0x0199, B:63:0x019b, B:65:0x01ad, B:67:0x01c9, B:69:0x01ea, B:70:0x01f9, B:71:0x01fd, B:73:0x0203, B:74:0x020a, B:77:0x0218, B:79:0x021c, B:82:0x0223, B:83:0x0224), top: B:107:0x00fd, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x023f A[Catch: all -> 0x0018, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f5, B:84:0x022c, B:86:0x023f, B:88:0x024a, B:96:0x0269, B:90:0x0250, B:92:0x0259, B:94:0x025f, B:95:0x0263, B:97:0x026c, B:98:0x0274, B:33:0x00ea), top: B:104:0x00b8, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0250 A[Catch: all -> 0x0018, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f5, B:84:0x022c, B:86:0x023f, B:88:0x024a, B:96:0x0269, B:90:0x0250, B:92:0x0259, B:94:0x025f, B:95:0x0263, B:97:0x026c, B:98:0x0274, B:33:0x00ea), top: B:104:0x00b8, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(boolean r18, int r19, java.lang.Throwable r20, byte[] r21, java.lang.String r22, java.util.List r23, java.util.Map r24) {
        /*
            Method dump skipped, instruction units count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pb5.z(boolean, int, java.lang.Throwable, byte[], java.lang.String, java.util.List, java.util.Map):void");
    }
}
