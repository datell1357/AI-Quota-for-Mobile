package defpackage;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rf1 implements Runnable {
    public final /* synthetic */ int n;
    public Object o;
    public final Object p;

    public rf1(m75 m75Var, mw4 mw4Var) {
        this.n = 23;
        this.o = mw4Var;
        Objects.requireNonNull(m75Var);
        this.p = m75Var;
    }

    private final void a() {
        try {
            ((Runnable) this.p).run();
            synchronized (((ji3) this.o).r) {
                ((ji3) this.o).a();
            }
        } catch (Throwable th) {
            synchronized (((ji3) this.o).r) {
                ((ji3) this.o).a();
                throw th;
            }
        }
    }

    private final void b() {
        og4 og4Var;
        ez2 ez2Var = ((uv3) this.p).n.f;
        String str = (String) this.o;
        synchronized (ez2Var.k) {
            try {
                hh4 hh4VarC = ez2Var.c(str);
                og4Var = hh4VarC != null ? hh4VarC.a : null;
            } finally {
            }
        }
        if (og4Var == null || nt1.g(lf0.j, og4Var.j)) {
            return;
        }
        synchronized (((uv3) this.p).p) {
            ((uv3) this.p).s.put(rg4.a(og4Var), og4Var);
            uv3 uv3Var = (uv3) this.p;
            ((uv3) this.p).t.put(rg4.a(og4Var), sf4.a(uv3Var.f364u, og4Var, (ji0) uv3Var.o.p, uv3Var));
        }
    }

    private final void c() {
        n25 n25Var = (n25) this.p;
        synchronized (n25Var.p) {
            ((xo2) n25Var.q).onComplete((ow3) this.o);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:27|(1:29)(8:304|32|33|(1:36)(5:38|(1:40)|302|41|(26:43|(1:45)(1:47)|300|48|306|49|50|54|(2:56|(2:58|(2:60|(2:62|(2:64|(2:66|(1:68)(1:69))(1:70))(1:71))(1:72))(1:73))(1:74))(1:75)|76|308|77|(1:79)(1:80)|81|(1:83)(1:84)|85|(1:87)|88|91|(1:93)(7:95|(0)(1:98)|(3:312|100|(1:102)(1:103))(0)|(2:109|(1:111)(4:112|(3:115|(1:317)(1:318)|113)|316|118))(1:118)|(1:120)(1:121)|122|(30:124|(1:126)(1:127)|128|(1:130)|131|(1:133)(1:134)|135|(2:137|(4:142|(1:144)(2:145|(1:147)(1:148))|149|(1:151))(1:(5:141|142|(0)(0)|149|(0))(1:152)))(0)|153|(20:156|158|(1:160)|(1:174)(1:175)|176|(1:178)|179|(2:184|(1:189))(1:183)|190|(3:194|(1:196)|197)|198|(1:200)|201|(1:205)|206|(3:208|(7:210|(1:212)(1:213)|214|(1:216)|217|(6:221|(1:223)|224|310|225|(2:230|(1:233))(0))|234)(1:236)|235)(10:237|(2:239|(2:252|253)(3:242|(5:244|(1:246)(1:247)|248|(1:250)|251)(0)|253))(1:254)|255|(1:257)|258|314|259|260|264|(5:266|(1:268)(1:269)|(1:273)|(1:275)|276))|277|(2:279|(5:281|(1:283)|284|(1:286)|287))|288|289)(1:157)|161|(1:172)|171|(0)(0)|176|(0)|179|(3:181|184|(1:189))(0)|190|(4:192|194|(0)|197)(0)|198|(0)|201|(2:203|205)|206|(0)(0)|277|(0)|288|289)(2:290|291))|94|(0)(0)|(0)(0)|(0)(0)|122|(0)(0)))|37|302|41|(0))|30|31|54|(0)(0)|76|308|77|(0)(0)|81|(0)(0)|85|(0)|88|91|(0)(0)|94|(0)(0)|(0)(0)|(0)(0)|122|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:304|32)|33|(1:36)(5:38|(1:40)|302|41|(26:43|(1:45)(1:47)|300|48|306|49|50|54|(2:56|(2:58|(2:60|(2:62|(2:64|(2:66|(1:68)(1:69))(1:70))(1:71))(1:72))(1:73))(1:74))(1:75)|76|308|77|(1:79)(1:80)|81|(1:83)(1:84)|85|(1:87)|88|91|(1:93)(7:95|(0)(1:98)|(3:312|100|(1:102)(1:103))(0)|(2:109|(1:111)(4:112|(3:115|(1:317)(1:318)|113)|316|118))(1:118)|(1:120)(1:121)|122|(30:124|(1:126)(1:127)|128|(1:130)|131|(1:133)(1:134)|135|(2:137|(4:142|(1:144)(2:145|(1:147)(1:148))|149|(1:151))(1:(5:141|142|(0)(0)|149|(0))(1:152)))(0)|153|(20:156|158|(1:160)|(1:174)(1:175)|176|(1:178)|179|(2:184|(1:189))(1:183)|190|(3:194|(1:196)|197)|198|(1:200)|201|(1:205)|206|(3:208|(7:210|(1:212)(1:213)|214|(1:216)|217|(6:221|(1:223)|224|310|225|(2:230|(1:233))(0))|234)(1:236)|235)(10:237|(2:239|(2:252|253)(3:242|(5:244|(1:246)(1:247)|248|(1:250)|251)(0)|253))(1:254)|255|(1:257)|258|314|259|260|264|(5:266|(1:268)(1:269)|(1:273)|(1:275)|276))|277|(2:279|(5:281|(1:283)|284|(1:286)|287))|288|289)(1:157)|161|(1:172)|171|(0)(0)|176|(0)|179|(3:181|184|(1:189))(0)|190|(4:192|194|(0)|197)(0)|198|(0)|201|(2:203|205)|206|(0)(0)|277|(0)|288|289)(2:290|291))|94|(0)(0)|(0)(0)|(0)(0)|122|(0)(0)))|37|302|41|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0198, code lost:
    
        r6 = "Unknown";
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0263, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0264, code lost:
    
        defpackage.r45.l(r9);
        r9.f.c(defpackage.a25.D(r5), r0, "Fetching Google App Id failed with exception. appId");
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x066d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0787  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x02a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0179 A[Catch: NameNotFoundException -> 0x0198, TryCatch #1 {NameNotFoundException -> 0x0198, blocks: (B:41:0x016e, B:43:0x0179, B:45:0x0185), top: B:302:0x016e }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0241 A[Catch: IllegalStateException -> 0x0263, TryCatch #4 {IllegalStateException -> 0x0263, blocks: (B:77:0x0238, B:81:0x0247, B:85:0x024f, B:87:0x0253, B:80:0x0241), top: B:308:0x0238 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0253 A[Catch: IllegalStateException -> 0x0263, TRY_LEAVE, TryCatch #4 {IllegalStateException -> 0x0263, blocks: (B:77:0x0238, B:81:0x0247, B:85:0x024f, B:87:0x0253, B:80:0x0241), top: B:308:0x0238 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0294  */
    /* JADX WARN: Type inference failed for: r0v55, types: [i75] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void d() {
        /*
            Method dump skipped, instruction units count: 2132
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rf1.d():void");
    }

    private final void e() {
        n25 n25Var = (n25) this.p;
        synchronized (n25Var.p) {
            try {
                bp2 bp2Var = (bp2) n25Var.q;
                if (bp2Var != null) {
                    bp2Var.c((Exception) Preconditions.checkNotNull(((ow3) this.o).f()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        if (r0 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        r0 = r0 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0053, code lost:
    
        ((java.lang.Runnable) r12.o).run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0062, code lost:
    
        defpackage.fi3.s.a().log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Runnable) r12.o), (java.lang.Throwable) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0085, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d0, code lost:
    
        if (r0 == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d9, code lost:
    
        r0 = r0 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00da, code lost:
    
        ((java.lang.Runnable) r12.o).run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e6, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e8, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e9, code lost:
    
        defpackage.ei3.s.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + ((java.lang.Runnable) r12.o), (java.lang.Throwable) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0108, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00c9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f() {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rf1.f():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:260:0x01de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01cd  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 1528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rf1.run():void");
    }

    public String toString() {
        int i = this.n;
        Object obj = this.p;
        switch (i) {
            case 0:
                eh ehVar = new eh(rf1.class.getSimpleName());
                eh ehVar2 = new eh(22, false);
                ((eh) ehVar.q).q = ehVar2;
                ehVar.q = ehVar2;
                ehVar2.p = (pc4) obj;
                return ehVar.toString();
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                Runnable runnable = (Runnable) this.o;
                if (runnable != null) {
                    return "SequentialExecutorWorker{running=" + runnable + "}";
                }
                StringBuilder sb = new StringBuilder("SequentialExecutorWorker{state=");
                int i2 = ((ei3) obj).p;
                sb.append(i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "null" : "RUNNING" : "QUEUED" : "QUEUING" : "IDLE");
                sb.append("}");
                return sb.toString();
            case 12:
                Runnable runnable2 = (Runnable) this.o;
                if (runnable2 != null) {
                    return "SequentialExecutorWorker{running=" + runnable2 + "}";
                }
                StringBuilder sb2 = new StringBuilder("SequentialExecutorWorker{state=");
                int i3 = ((fi3) obj).p;
                sb2.append(i3 != 1 ? i3 != 2 ? i3 != 3 ? i3 != 4 ? "null" : "RUNNING" : "QUEUED" : "QUEUING" : "IDLE");
                sb2.append("}");
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ rf1(int i, Object obj, Object obj2, boolean z) {
        this.n = i;
        this.p = obj;
        this.o = obj2;
    }

    public /* synthetic */ rf1(Object obj, Object obj2, Object obj3, int i) {
        this.n = i;
        this.o = obj2;
        this.p = obj3;
    }

    public /* synthetic */ rf1(Executor executor, int i) {
        this.n = i;
        this.p = executor;
    }

    public rf1(h35 h35Var, tu4 tu4Var, h35 h35Var2) {
        this.n = 18;
        this.o = tu4Var;
        this.p = h35Var;
    }

    public /* synthetic */ rf1(int i, Object obj, Object obj2) {
        this.n = i;
        this.o = obj;
        this.p = obj2;
    }
}
